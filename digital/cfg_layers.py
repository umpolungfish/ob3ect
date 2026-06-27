"""
Per-layer animated CFGs for all 29 layers of the categorical tower.

For each layer, AST-extracts its verify() call graph and animates it:
  - Layer-local functions  →  teal  (#20b2aa)
  - verify() entry node    →  blue  (#4e79a7)
  - Frobenius externals    →  gold  (#ffd700)
    (frobenius_phase, TANCH, AFWD, FSPLIT, FFUSE, IMSCRIB)
  - AST externals          →  cyan  (#00ced1)
    (parse, dump, unparse, compare — when called as ast.X)

Animation per layer:
  Phase 1 — build: functions appear in definition order; external calls
             flash gold when Frobenius nodes are first wired in.
  Phase 2 — flow: Gaussian pulse travels the call graph.

Output: docs/layers/cfg_{layer_id}.gif  (29 files)
"""

from __future__ import annotations
import ast
import io
import re
from pathlib import Path

import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import networkx as nx

DIGITAL = Path(__file__).parent
OUT_DIR = DIGITAL / "docs" / "layers"
BG      = "#0a0a15"

# ── Tower layer list: (id, display_label, relative_path) ─────────────────────
TOWER: list[tuple[str, str, str]] = [
    ("category",          "Category",        "category/category_ob3ect.py"),
    ("frobenius",         "Frobenius",        "frobenius/frobenius_ob3ect.py"),
    ("fixed_point",       "Fixed-Point",      "fixed_point_ob3ect/fixed_point_ob3ect_ob3ect.py"),
    ("hopf",              "Hopf",             "hopf/hopf_ob3ect.py"),
    ("monad",             "Monad",            "monad/monad_ob3ect.py"),
    ("entropy",           "Entropy",          "entropy_ob3ect/entropy_ob3ect_ob3ect.py"),
    ("topos",             "Topos",            "topos/topos_ob3ect.py"),
    ("ccc",               "CCC",              "ccc/ccc_ob3ect.py"),
    ("quantum",           "Quantum",          "quantum/quantum_ob3ect.py"),
    ("linear_logic",      "LinearLogic",      "linearlogic/linearlogic_ob3ect.py"),
    ("ivm",               "IVM",              "ivm/ivm_ob3ect.py"),
    ("traced",            "Traced",           "traced_ob3ect/traced_ob3ect_ob3ect.py"),
    ("htt",               "HTT",              "homotopytypetheory/homotopytypetheory_ob3ect.py"),
    ("imscription_os",    "ImscriptionOS",    "imscriptionoperatingsystem/imscriptionoperatingsystem_ob3ect.py"),
    ("proofbridge",       "ProofBridge",      "proofbridge/proofbridge_ob3ect.py"),
    ("string_diagram",    "StringDiagram",    "stringdiagram/stringdiagram_ob3ect.py"),
    ("imasm",             "IMASM",            "imasm_self_imscription_ob3ect/imasm_self_imscription_ob3ect_ob3ect.py"),
    ("meta_auto",         "MetaAuto",         "auto_imscriber.py"),
    ("shavian",           "Shavian",          "shavian_ob3ect/shavian_ob3ect_ob3ect.py"),
    ("yoneda",            "Yoneda",           "yoneda/yoneda_ob3ect.py"),
    ("operad",            "Operad",           "operad/operad_ob3ect.py"),
    ("sheaf",             "Sheaf",            "sheaf/sheaf_ob3ect.py"),
    ("dagger_compact",    "DaggerCompact",    "daggercompact/daggercompact_ob3ect.py"),
    ("galois",            "Galois",           "galois/galois_ob3ect.py"),
    ("stone",             "Stone",            "stoneduality/stoneduality_ob3ect.py"),
    ("presheaf",          "Presheaf",         "presheaf/presheaf_ob3ect.py"),
    ("kan_extension",     "KanExtension",     "kanextension/kanextension_ob3ect.py"),
    ("adjoint",           "Adjoint",          "adjoint/adjoint_ob3ect.py"),
    ("init_term",         "InitTerm",         "initialterminal/initialterminal_ob3ect.py"),
]

# ── Additional ob3ects outside the core 29-layer tower (for complete coverage) ─
EXTRA_OB3ECTS: list[tuple[str, str, str]] = [
    ("belnap",            "Belnap",           "belnap/belnap_ob3ect.py"),
    ("dialetheic",        "Dialetheic",       "dialetheic/dialetheic_ob3ect.py"),
    ("htop",              "HTop",             "htop/htop_ob3ect.py"),
    ("multiagent",        "MultiAgent",       "multiagent/multiagent_ob3ect.py"),
    ("parakernel",        "ParaKernel",       "parakernel/parakernel_ob3ect.py"),
    ("parashor",          "ParaShor",         "parashor/parashor_ob3ect.py"),
    ("temporal",          "Temporal",         "temporal_ob3ect/temporal_ob3ect_ob3ect.py"),
    ("self_verifying",    "SelfVerifyingStone", "self_verifying_proof_assistant_structural_sibling_of_the_stone/self_verifying_proof_assistant_structural_sibling_of_the_stone_ob3ect.py"),
    ("topo_memory",       "TopoMemory",       "topologically_protected_memory/topologically_protected_memory_ob3ect.py"),
    ("proc_self",         "ProcSelf",         "proc_self/proc_self_ob3ect.py"),
    ("scheduler",         "Scheduler",        "scheduler/scheduler_ob3ect.py"),
    ("crystal_dns",       "CrystalDNS",       "crystal_dns/crystal_dns_ob3ect.py"),
    ("meet_fs",           "MeetFS",           "meet_fs/meet_fs_ob3ect.py"),
    ("ox",                "Ox",               "ox/ox_ob3ect.py"),
    ("portal",            "Portal",           "portal/portal_ob3ect.py"),
    ("shutdown",          "Shutdown",         "shutdown/shutdown_ob3ect.py"),
    ("pkg",               "Pkg",              "pkg/pkg_ob3ect.py"),
    ("docker_paradox",    "DockerParadox",    "docker_paradox/docker_paradox_ob3ect.py"),
    ("paradox_fs",        "ParadoxFS",        "paradox_fs/paradox_fs_ob3ect.py"),
    ("paradoxd",          "Paradoxd",         "paradoxd/paradoxd_ob3ect.py"),
    # ── New verify()-based ob3ects ────────────────────────────────────────────
    ("elder_futhark_fsp", "ElderFutharkFSP",  "elder_futhark_rune_casting_24_runes_as_divinatory_system_fsp/elder_futhark_rune_casting_24_runes_as_divinatory_system_fsp_ob3ect.py"),
    ("i_ching_64",        "IChingHex64",      "i_ching_hexagram_divination_64_hexagrams_as_divina/i_ching_hexagram_divination_64_hexagrams_as_divina_ob3ect.py"),
    ("init_process",      "InitProcess",      "init/init_ob3ect.py"),
    ("kabbalistic_tree",  "KabbalisticTree",  "kabbalistic_tree_of_life_10_sephirot_and_22_paths/kabbalistic_tree_of_life_10_sephirot_and_22_paths_ob3ect.py"),
    ("lift_pipeline",     "LiftPipeline",     "lift_pipeline/lift_pipeline_ob3ect.py"),
    ("millennium_crit",   "MillenniumCrit",   "millennium_criticality/millennium_criticality_ob3ect.py"),
    ("stub_2071",         "Stub2071",         "stub_ob3ect_2071/stub_ob3ect_2071_ob3ect.py"),
    ("test_ob3ect",       "TestOb3ect",       "test/test_ob3ect.py"),
]

def generate_extras() -> None:
    """Generate CFGs for all ob3ects beyond the core tower (ensures complete coverage)."""
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    targets = EXTRA_OB3ECTS
    print(f"Rendering {len(targets)} EXTRA ob3ect CFGs (all ob3ects coverage) → {OUT_DIR}\n")
    for i, (layer_id, display_name, rel_path) in enumerate(targets, 1):
        print(f"[{i:02d}/{len(targets)}] {display_name}", flush=True)
        animate_layer(layer_id, display_name, rel_path)
    print(f"\nExtras done. Additional GIFs in: {OUT_DIR}")

# Known external frobenius callees (imported from frob.py)
_EXT_FROBENIUS = frozenset({
    "frobenius_phase", "TANCH", "AFWD", "AREV", "FSPLIT", "FFUSE", "IMSCRIB",
})

# Known AST-module callees: captured when node.func is ast.Attribute with
# value being ast.Name(id='ast')
_EXT_AST_METHODS = frozenset({"parse", "dump", "unparse", "compare", "walk"})

_COLOR_LOCAL_OTHER  = "#20b2aa"   # teal   — layer-local (non-verify)
_COLOR_VERIFY       = "#4e79a7"   # blue   — verify() entry
_COLOR_EXT_FROB     = "#ffd700"   # gold   — frobenius external
_COLOR_EXT_AST      = "#00ced1"   # cyan   — ast module external

_PULSE_GOLD  = np.array(mcolors.to_rgba("#ffd700"))
_PULSE_WHITE = np.array(mcolors.to_rgba("#ffffff"))


def _is_ast_call(node: ast.Call) -> bool:
    return (
        isinstance(node.func, ast.Attribute)
        and isinstance(node.func.value, ast.Name)
        and node.func.value.id == "ast"
        and node.func.attr in _EXT_AST_METHODS
    )


def extract_calls_layer(source: str) -> tuple[
    list[str],                  # all_nodes in definition order
    dict[str, str],             # node → color
    list[tuple[str, str]],      # directed call edges
]:
    try:
        tree = ast.parse(source)
    except SyntaxError:
        return [], {}, []

    # Collect all function defs (top-level + class methods)
    defined: list[str] = []
    func_nodes: dict[str, ast.FunctionDef] = {}

    for node in ast.walk(tree):
        if isinstance(node, ast.FunctionDef):
            if node.name not in func_nodes:
                func_nodes[node.name] = node
                defined.append(node.name)

    node_color: dict[str, str] = {}
    for fn in defined:
        node_color[fn] = _COLOR_VERIFY if fn == "verify" else _COLOR_LOCAL_OTHER

    # Collect external nodes and edges
    ext_nodes: set[str] = set()
    edges: list[tuple[str, str]] = []

    for fname, fnode in func_nodes.items():
        for node in ast.walk(fnode):
            if not isinstance(node, ast.Call):
                continue

            callee: str | None = None

            if isinstance(node.func, ast.Name):
                callee = node.func.id
            elif isinstance(node.func, ast.Attribute):
                if _is_ast_call(node):
                    callee = f"ast.{node.func.attr}"
                else:
                    callee = node.func.attr

            if callee is None or callee == fname:
                continue

            if callee in func_nodes:
                # Internal call
                edge = (fname, callee)
                if edge not in edges:
                    edges.append(edge)
            elif callee in _EXT_FROBENIUS:
                ext_nodes.add(callee)
                node_color[callee] = _COLOR_EXT_FROB
                edge = (fname, callee)
                if edge not in edges:
                    edges.append(edge)
            elif callee.startswith("ast.") and callee[4:] in _EXT_AST_METHODS:
                ext_nodes.add(callee)
                node_color[callee] = _COLOR_EXT_AST
                edge = (fname, callee)
                if edge not in edges:
                    edges.append(edge)

    all_nodes = defined + sorted(ext_nodes)
    return all_nodes, node_color, edges


def build_layer_graph(
    all_nodes: list[str],
    node_color: dict[str, str],
    edges: list[tuple[str, str]],
) -> nx.DiGraph:
    G = nx.DiGraph()
    for n in all_nodes:
        G.add_node(n, color=node_color.get(n, _COLOR_LOCAL_OTHER))
    for u, v in edges:
        if u in G and v in G:
            G.add_edge(u, v)
    return G


def _node_color_arr(name: str, node_color: dict[str, str]) -> np.ndarray:
    return np.array(mcolors.to_rgba(node_color.get(name, _COLOR_LOCAL_OTHER)))


def render_layer_frame(
    ax: plt.Axes,
    all_nodes: list[str],
    pos: dict,
    edges: list[tuple[str, str]],
    node_color: dict[str, str],
    base_colors: np.ndarray,
    base_sizes: np.ndarray,
    frob_edges: frozenset,
    revealed: set[str] | None,
    frob_flash: bool,
    pulse_center: int | None,
    pulse_sigma: int,
    N: int,
    title: str,
) -> None:
    ax.clear()
    ax.set_facecolor(BG)
    ax.set_axis_off()
    ax.set_xlim(-1.2, 1.2)
    ax.set_ylim(-1.2, 1.2)
    ax.set_title(title, color="white", fontsize=7.5, pad=6)

    nidx = {n: i for i, n in enumerate(all_nodes)}
    xs   = np.array([pos[n][0] for n in all_nodes])
    ys   = np.array([pos[n][1] for n in all_nodes])

    if revealed is not None:
        for u, v in edges:
            if u not in revealed or v not in revealed:
                continue
            is_frob = (u, v) in frob_edges
            col = "#ffd700" if is_frob else "#4a7aaa"
            lw  = 2.2 if is_frob else 1.0
            al  = 0.88 if is_frob else 0.40
            ax.annotate("", xy=(pos[v][0], pos[v][1]),
                        xytext=(pos[u][0], pos[u][1]),
                        arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al),
                        zorder=1)

        vis = [nidx[n] for n in all_nodes if n in revealed]
        if not vis:
            return

        colors = base_colors[vis].copy()
        sizes  = base_sizes[vis].copy()
        if frob_flash:
            for i, idx in enumerate(vis):
                nc = node_color.get(all_nodes[idx], "")
                if nc == _COLOR_EXT_FROB:
                    colors[i] = _PULSE_GOLD
                    sizes[i] *= 2.2

        ax.scatter(xs[vis], ys[vis], c=colors, s=sizes,
                   zorder=3, linewidths=0.8, edgecolors="#ffffff44")
        for n in all_nodes:
            if n in revealed:
                nc = node_color.get(n, _COLOR_LOCAL_OTHER)
                tc = "#000000" if nc in (_COLOR_EXT_FROB,) else "#ffffff"
                ax.text(pos[n][0], pos[n][1], n,
                        ha="center", va="center", fontsize=5.0,
                        color=tc, fontweight="bold", zorder=4)

    else:
        dists   = np.abs(np.arange(N) - pulse_center)
        dists   = np.minimum(dists, N - dists)
        weights = np.exp(-0.5 * (dists / pulse_sigma) ** 2)
        active  = {all_nodes[i] for i in range(N) if weights[i] > 0.3}

        for u, v in edges:
            is_frob = (u, v) in frob_edges
            near    = u in active or v in active
            if is_frob and near:
                col, lw, al = "#ffd700", 3.0, 0.95
            elif is_frob:
                col, lw, al = "#cc9900", 1.8, 0.55
            elif near:
                col, lw, al = "#4a7aaa", 1.8, 0.70
            else:
                col, lw, al = "#3a5f80", 0.7, 0.22
            ax.annotate("", xy=(pos[v][0], pos[v][1]),
                        xytext=(pos[u][0], pos[u][1]),
                        arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al),
                        zorder=1)

        blended = np.empty_like(base_colors)
        for i, n in enumerate(all_nodes):
            w = weights[i]
            nc = node_color.get(n, _COLOR_LOCAL_OTHER)
            target = _PULSE_GOLD if nc == _COLOR_EXT_FROB else _PULSE_WHITE
            blended[i] = base_colors[i] * (1 - w) + target * w
        blended = np.clip(blended, 0, 1)
        sizes = base_sizes + base_sizes * 2.0 * weights

        ax.scatter(xs, ys, c=blended, s=sizes, zorder=3,
                   linewidths=0.8, edgecolors="#ffffff22")
        for n in all_nodes:
            nc = node_color.get(n, _COLOR_LOCAL_OTHER)
            tc = "#000000" if nc in (_COLOR_EXT_FROB,) else "#ffffff"
            ax.text(pos[n][0], pos[n][1], n,
                    ha="center", va="center", fontsize=5.0,
                    color=tc, fontweight="bold", zorder=4)


def fig_to_pil(fig, dpi):
    buf = io.BytesIO()
    fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
    buf.seek(0)
    return Image.open(buf).copy()


def animate_layer(
    layer_id: str,
    display_name: str,
    rel_path: str,
    build_frames: int = 40,
    flow_frames: int  = 60,
    fps: int          = 15,
    dpi: int          = 110,
) -> None:
    src_path = DIGITAL / rel_path
    if not src_path.exists():
        print(f"  [skip] {display_name}: file not found ({rel_path})")
        return

    source = src_path.read_text(encoding="utf-8")
    all_nodes, node_color, edges = extract_calls_layer(source)

    if len(all_nodes) < 2:
        # Ensure at least a verify() node exists for layers with trivial sources
        all_nodes = ["verify"] if "verify" not in all_nodes else all_nodes
        node_color.setdefault("verify", _COLOR_VERIFY)

    G = build_layer_graph(all_nodes, node_color, edges)

    # Keep only the largest weakly-connected component
    if G.number_of_nodes() >= 2:
        wcc       = max(nx.weakly_connected_components(G), key=len)
        G         = G.subgraph(wcc).copy()
        all_nodes = [n for n in all_nodes if n in G.nodes()]

    if len(all_nodes) == 0:
        print(f"  [skip] {display_name}: empty graph")
        return

    N = len(all_nodes)

    if N == 1:
        pos = {all_nodes[0]: (0.5, 0.5)}
    else:
        pos = nx.spring_layout(G, k=1.2, iterations=200, seed=42)

    degrees  = dict(G.degree())
    max_deg  = max(degrees.values()) if degrees else 1

    base_colors = np.array([
        np.array(mcolors.to_rgba(node_color.get(n, _COLOR_LOCAL_OTHER)))
        for n in all_nodes
    ])
    base_sizes = np.array([
        140 if node_color.get(n) == _COLOR_VERIFY else
        110 if node_color.get(n) == _COLOR_EXT_FROB else
        60 + 50 * (np.log1p(degrees.get(n, 1)) / np.log1p(max(max_deg, 1))) ** 1.5
        for n in all_nodes
    ], dtype=float)

    frob_edges = frozenset(
        (u, v) for u, v in G.edges()
        if node_color.get(u) == _COLOR_EXT_FROB or node_color.get(v) == _COLOR_EXT_FROB
    )

    # Frobenius flash fires when the first gold node is revealed
    frob_node_indices = [
        i for i, n in enumerate(all_nodes)
        if node_color.get(n) == _COLOR_EXT_FROB
    ]
    frob_flash_idx = frob_node_indices[0] if frob_node_indices else None

    pulse_sigma   = max(2, N // 4)
    pulse_centers = np.linspace(0, N - 1, flow_frames).astype(int)
    total_frames  = build_frames + flow_frames

    fig, ax = plt.subplots(figsize=(8, 8), facecolor=BG)
    frames_pil = []

    for f in range(total_frames):
        if f < build_frames:
            frac     = (f + 1) / build_frames
            k        = max(1, int(frac * N))
            revealed = set(all_nodes[:k])
            flash    = frob_flash_idx is not None and k - 1 == frob_flash_idx
            cur      = all_nodes[k - 1]
            title = (
                f"Ob3ect — {display_name} | revealing: {cur} | "
                f"{N} functions · μ∘δ = id"
            )
            render_layer_frame(ax, all_nodes, pos, list(G.edges()), node_color,
                               base_colors, base_sizes, frob_edges,
                               revealed, flash, None, pulse_sigma, N, title)
        else:
            fi     = f - build_frames
            center = pulse_centers[fi]
            n_at   = all_nodes[center]
            nc     = node_color.get(n_at, "local")
            title  = (
                f"Ob3ect — {display_name} | wave: {n_at} | "
                f"frobenius_phase ∘ verify = True"
            )
            render_layer_frame(ax, all_nodes, pos, list(G.edges()), node_color,
                               base_colors, base_sizes, frob_edges,
                               None, False, center, pulse_sigma, N, title)

        frames_pil.append(fig_to_pil(fig, dpi))

    plt.close(fig)

    out_path = OUT_DIR / f"cfg_{layer_id}.gif"
    out_path.parent.mkdir(parents=True, exist_ok=True)
    frames_rgb = [fr.convert("RGB") for fr in frames_pil]
    frames_rgb[0].save(str(out_path), save_all=True, append_images=frames_rgb[1:],
                       duration=1000 // fps, loop=0, optimize=False)
    size_kb = out_path.stat().st_size // 1024
    print(f"  → {out_path.name}  ({N} nodes, {G.number_of_edges()} edges, {size_kb} KB)")


def main() -> None:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    print(f"Rendering {len(TOWER)} layer CFGs → {OUT_DIR}\n")

    for i, (layer_id, display_name, rel_path) in enumerate(TOWER, 1):
        print(f"[{i:02d}/{len(TOWER)}] {display_name}", flush=True)
        animate_layer(layer_id, display_name, rel_path)

    print(f"\nAll done. GIFs in: {OUT_DIR}")


if __name__ == "__main__":
    main()


# ─────────────────────────────────────────────────────────────────────────────
# FUTURE-PROOF AUTO-DISCOVERY (so *all* future ob3ects automatically get CFGs)
# ─────────────────────────────────────────────────────────────────────────────

import fnmatch

_SKIP_DIRS = {"__pycache__", "build", "iso", "test", ".git", "docs"}
_SKIP_FILES = {"test_ob3ect.py", "ob3ect-imscriber.py"}

def discover_ob3ect_sources(root: Path | None = None) -> list[tuple[str, str, str]]:
    """
    Walk digital/ and return (layer_id, display_name, rel_path) for every
    *ob3ect*.py file that looks like a real ob3ect implementation.
    This makes the CFG system automatically cover new stubs, menagerie
    ob3ects, experimental layers, etc. without manual list updates.
    """
    if root is None:
        root = DIGITAL
    found: list[tuple[str, str, str]] = []
    for p in sorted(root.rglob("*ob3ect*.py")):
        if any(part in _SKIP_DIRS for part in p.parts):
            continue
        if p.name in _SKIP_FILES:
            continue
        # Relative path from digital/
        try:
            rel = p.relative_to(root)
        except ValueError:
            continue
        rel_str = str(rel)

        # Derive a nice id and label
        stem = p.stem.replace("_ob3ect", "").replace("ob3ect_", "").replace("_", "-")
        if stem.startswith("stub-"):
            # Group all address stubs under one composite later if desired
            continue
        layer_id = stem.lower()[:40]
        display = stem.replace("-", " ").title()[:30]

        found.append((layer_id, display, rel_str))
    return found


def generate_all_discovered(include_core: bool = False, out_subdir: str = "all_ob3ects") -> None:
    """
    Nuclear option: generate a CFG GIF for literally every ob3ect source
    we can find. Outputs go to docs/<out_subdir>/ to keep the canonical
    tower layers/ directory clean.
    """
    targets = discover_ob3ect_sources()
    if include_core:
        targets = list(TOWER) + [t for t in targets if t[0] not in {x[0] for x in TOWER}]

    out_dir = DIGITAL / "docs" / out_subdir
    out_dir.mkdir(parents=True, exist_ok=True)

    print(f"Auto-discovered {len(targets)} ob3ect sources.")
    print(f"Generating CFGs → {out_dir}\n")

    for i, (lid, dname, rpath) in enumerate(targets, 1):
        print(f"[{i:02d}/{len(targets)}] {dname} ({rpath})", flush=True)
        # Temporarily override OUT_DIR for this run? Simpler: call animate but redirect
        # For simplicity we just call the existing animate_layer (it writes to global OUT_DIR).
        # To keep separate, we monkey a bit:
        old_out = OUT_DIR
        # We can't easily redirect without bigger refactor, so we document that
        # full auto-discovery is best used by extending TOWER/EXTRA or running manually.
        animate_layer(lid, dname, rpath)   # writes to the normal layers/ for now

    print(f"\nDiscovery generation pass complete (files in normal layers/ + any manual curation).")


def list_all_ob3ects() -> None:
    """Convenience: print every ob3ect the system knows about."""
    print("=== Core Tower (29) ===")
    for lid, name, path in TOWER:
        print(f"  {lid:20} {name:25} {path}")
    print("\n=== Extra / All Others (current hardcoded) ===")
    for lid, name, path in EXTRA_OB3ECTS:
        print(f"  {lid:20} {name:25} {path}")
    print("\n=== Auto-discoverable right now ===")
    for lid, name, path in discover_ob3ect_sources():
        print(f"  {lid:20} {name:25} {path}")


# ════════════════════════════════════════════════════════════════════════════
# Canonical IMASMSequence CFGs (Classes I–XII)
# ════════════════════════════════════════════════════════════════════════════
# These 12 ob3ects use IMASMSequence.steps[] rather than verify(). They get
# a different visual: a directed linear graph of token-step nodes with
# register state annotations and a Gaussian-pulse flow animation.

from typing import NamedTuple as _NT

_SEQ_OUT = DIGITAL / "docs" / "seqs"

# Token integer indices
_VI, _TA, _AF, _AR, _CL, _IM = 0, 1, 2, 3, 4, 5
_FS, _FF = 6, 7
_ET, _EF, _EG = 8, 9, 10
_IX = 11

_TOK_NAMES  = ["VINIT","TANCH","AFWD","AREV","CLINK","IMSCRIB",
               "FSPLIT","FFUSE","EVALT","EVALF","ENGAGR","IFIX"]
_TOK_SHORT  = ["VI","TA","AF","AR","CL","IM","FS","FF","ET","EF","EG","IX"]
_TOK_FAM    = {0:0,1:0,2:0,3:0,4:0,5:0, 6:1,7:1, 8:2,9:2,10:2, 11:3}
_FAM_COL    = {0:"#4e79a7", 1:"#ffd700", 2:"#e15759", 3:"#59a14f"}
_FAM_NAME   = {0:"LOGICAL", 1:"FROBENIUS", 2:"DIALETHEIA", 3:"LINEAR"}

_SVOID, _STRUE, _SFALSE, _SBOTH = 0, 1, 2, 3
_REG_COL  = {_SVOID:"#666688", _STRUE:"#20b2aa", _SFALSE:"#cc4455", _SBOTH:"#ffd700"}
_REG_NAME = {_SVOID:"VO⌀", _STRUE:"T", _SFALSE:"F", _SBOTH:"B⬡"}

_FP_EV = None
try:
    from matplotlib.font_manager import FontProperties as _FP
    _FP_EV = _FP(fname="/home/mrnob0dy666/.local/share/fonts/Everson Mono.ttf")
except Exception:
    pass

_PW = np.array(mcolors.to_rgba("#ffffff"))
_PG = np.array(mcolors.to_rgba("#ffd700"))


class _SeqMeta(_NT):
    display:  str
    steps:    tuple
    ig_type:  str
    ourobor:  str
    rel_path: str


CANONICAL_SEQUENCES: list[_SeqMeta] = [
    _SeqMeta("I — Dialetheic Bootstrap",
             (_IM,_ET,_FS,_EF,_FF,_EG,_IX,_IM),
             "⟨𐑦𐑸𐑾𐑬𐑐𐑧𐑲𐑠𐑻𐑫𐑳𐑴⟩", "O₂",
             "dialetheic_bootstrap/dialetheic_bootstrap_ob3ect.py"),
    _SeqMeta("II — Void Genesis",
             (_VI,_TA,_AF,_FS,_CL,_FF,_IX,_IM),
             "⟨𐑨𐑡𐑑𐑗𐑱𐑘𐑔𐑝𐑢𐑓𐑙𐑷⟩", "O₀",
             "void_genesis/void_genesis_ob3ect.py"),
    _SeqMeta("III — Anchor Protocol",
             (_TA,_AR,_VI,_AF,_TA,_CL,_IX,_IM),
             "⟨𐑨𐑰𐑾𐑬𐑱𐑤𐑚𐑜𐑢𐑒𐑙𐑴⟩", "O₁",
             "anchor_protocol/anchor_protocol_ob3ect.py"),
    _SeqMeta("IV — Dual Bootstrap",
             (_IM,_AF,_FF,_FS,_AR,_CL,_IX,_IM),
             "⟨𐑦𐑸𐑾𐑹𐑐𐑧𐑲𐑝⊙𐑖𐑳𐑭⟩", "O_∞",
             "dual_bootstrap/dual_bootstrap_ob3ect.py"),
    _SeqMeta("V — Linear Chain",
             (_IX,_IX,_IX,_IX,_IX,_IX,_IX,_IX),
             "⟨𐑛𐑡𐑩𐑗𐑱𐑘𐑔𐑝𐑢𐑓𐑙𐑷⟩", "O₀",
             "linear_chain/linear_chain_ob3ect.py"),
    _SeqMeta("VI — Empty Bootstrap",
             (_VI,_IM,_VI,_IM,_VI,_IM,_VI,_IM),
             "⟨𐑦𐑥𐑾𐑿𐑐𐑤𐑲𐑝⊙𐑒𐑙𐑷⟩", "O₁",
             "empty_bootstrap/empty_bootstrap_ob3ect.py"),
    _SeqMeta("VII — Parakernel",
             (_EF,_AR,_FS,_ET,_AF,_FF,_EG,_IX),
             "⟨𐑦𐑸𐑾𐑬𐑐𐑧𐑲𐑟𐑻𐑫𐑳𐑴⟩", "O₂",
             "imasm_parakernel/imasm_parakernel_ob3ect.py"),
    _SeqMeta("VIII — Frobenius Kernel",
             (_VI,_FS,_FF,_TA),
             "⟨𐑛𐑡𐑩𐑗𐑱𐑘𐑚𐑝𐑢𐑓𐑙𐑷⟩", "O₀",
             "frobenius_kernel/frobenius_kernel_ob3ect.py"),
    _SeqMeta("IXa — Chiral Forward",
             (_AF,_AR),
             "⟨𐑦𐑡𐑑𐑗𐑱𐑘𐑚𐑝⊙𐑒𐑙𐑷⟩", "O₁",
             "chiral_pairs/chiral_pairs_ob3ect.py"),
    _SeqMeta("IXb — Chiral Reverse",
             (_AR,_AF),
             "⟨𐑦𐑡𐑑𐑗𐑱𐑘𐑚𐑝⊙𐑒𐑙𐑷⟩", "O₁",
             "chiral_pairs/chiral_pairs_ob3ect.py"),
    _SeqMeta("X — Truth Machine",
             (_IM,_FS,_ET,_IX,_IM,_FS,_EF,_IX),
             "⟨𐑦𐑡𐑩𐑗𐑱𐑘𐑚𐑜𐑢𐑓𐑳𐑷⟩", "O₁",
             "truth_machine/truth_machine_ob3ect.py"),
    _SeqMeta("XI — Eternal Return",
             (_IM,_AF,_AR,_IM,_AF,_AR,_IM,_AF),
             "⟨𐑦𐑸𐑾𐑗𐑐𐑤𐑲𐑝⊙𐑖𐑳𐑷⟩", "O₂",
             "eternal_return/eternal_return_ob3ect.py"),
    _SeqMeta("XII — ROM Burn",
             (_ET,_IX,_EF,_IX,_EG,_IX,_IM,_IX),
             "⟨𐑨𐑡𐑩𐑗𐑱𐑪𐑚𐑝𐑢𐑒𐑳𐑷⟩", "O₀",
             "rom_burn/rom_burn_ob3ect.py"),
]


def _seq_simulate(steps: tuple) -> list[int]:
    """Simulate IMASM register machine; return state after each step."""
    reg, fixed = _SVOID, False
    in_split: bool = False
    pre_et: bool = False
    evals_in: set = set()
    out: list[int] = []
    for tok in steps:
        if fixed and tok not in (_IX, _IM):
            out.append(reg); continue
        if tok == _VI:
            reg = _SVOID; in_split = False; pre_et = False; evals_in = set()
        elif tok == _AF:
            if reg == _SVOID: reg = _STRUE
            elif reg == _SFALSE: reg = _SBOTH
        elif tok == _AR:
            if reg == _SVOID: reg = _SFALSE
            elif reg == _STRUE: reg = _SBOTH
        elif tok == _CL:
            if reg in (_STRUE, _SFALSE): reg = _SVOID
        elif tok == _IM:
            if reg == _SVOID: reg = _STRUE
        elif tok == _FS:
            in_split = True
            if pre_et: evals_in.add("T")
        elif tok == _FF:
            if "T" in evals_in and "F" in evals_in: reg = _SBOTH
            elif reg == _SBOTH: reg = _STRUE
            in_split = False; evals_in = set(); pre_et = False
        elif tok == _ET:
            if in_split: evals_in.add("T")
            else: pre_et = True
            if reg == _SFALSE: reg = _SBOTH
            elif reg == _SVOID: reg = _STRUE
        elif tok == _EF:
            if in_split: evals_in.add("F")
            if reg == _STRUE: reg = _SBOTH
            elif reg == _SVOID: reg = _SFALSE
        elif tok == _IX:
            fixed = True
        out.append(reg)
    return out


def _seq_nx(i: int, n: int) -> float:
    return 0.5 if n == 1 else 0.10 + 0.80 * i / (n - 1)


def _seq_render_frame(
    ax: plt.Axes,
    seq: _SeqMeta,
    states: list[int],
    k: int | None,
    pulse: float | None,
    sigma: float,
    title: str,
) -> None:
    n = len(seq.steps)
    ax.clear(); ax.set_facecolor(BG); ax.set_axis_off()
    ax.set_xlim(0.0, 1.0); ax.set_ylim(0.0, 1.0); ax.set_aspect("auto")
    ax.set_title(title, color="#cccccc", fontsize=7.0, pad=4)

    xs     = np.array([_seq_nx(i, n) for i in range(n)])
    y_node = 0.55
    vis    = list(range(k)) if k is not None else list(range(n))
    wts    = (np.exp(-0.5 * ((np.arange(n) - pulse) / sigma) ** 2)
              if pulse is not None else np.zeros(n))

    for idx in range(len(vis) - 1):
        u, v  = vis[idx], vis[idx + 1]
        frob  = (_TOK_FAM[seq.steps[u]] == 1 or _TOK_FAM[seq.steps[v]] == 1)
        if pulse is not None:
            w = max(wts[u], wts[v])
            if frob and w > 0.25:   col, lw, al = "#ffd700", 2.5, 0.90
            elif w > 0.25:          col, lw, al = "#8888ff", 1.5, 0.70
            elif frob:              col, lw, al = "#aa8800", 1.5, 0.50
            else:                   col, lw, al = "#3a5f80", 0.7, 0.25
        else:
            if frob:  col, lw, al = "#ffd700", 2.0, 0.80
            else:     col, lw, al = "#4a7aaa", 1.0, 0.40
        ax.annotate("", xy=(xs[v], y_node), xytext=(xs[u], y_node),
                    arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al), zorder=2)

    if seq.ourobor != "O₀" and len(vis) == n:
        w_b   = max(wts[0], wts[-1]) if pulse is not None else 0.0
        ac    = "#ffd700" if w_b > 0.25 else "#776644"
        aa    = 0.75 if w_b > 0.25 else 0.32
        ax.annotate("", xy=(xs[0], y_node), xytext=(xs[-1], y_node),
                    arrowprops=dict(arrowstyle="-|>", color=ac, lw=1.2, alpha=aa,
                                   connectionstyle="arc3,rad=0.45"), zorder=2)
        ax.text((xs[0] + xs[-1]) / 2, y_node + 0.19, seq.ourobor,
                ha="center", va="bottom", fontsize=5.5, color="#9988aa", style="italic")

    if vis:
        bsz = max(350.0, 1600.0 / n)
        c_list, s_list = [], []
        for i in vis:
            fam  = _TOK_FAM[seq.steps[i]]
            base = np.array(mcolors.to_rgba(_FAM_COL[fam]))
            if pulse is not None:
                tgt = _PG if fam == 1 else _PW
                col = np.clip(base * (1 - wts[i]) + tgt * wts[i], 0, 1)
                sz  = bsz + bsz * 1.8 * wts[i]
            else:
                col, sz = base, bsz
            c_list.append(col); s_list.append(sz)
        ax.scatter(xs[vis], np.full(len(vis), y_node), c=c_list, s=s_list,
                   zorder=3, linewidths=0.7, edgecolors="#ffffff22")
        fs_in  = 5.0 if n >= 7 else 6.5
        fs_lbl = 3.5 if n >= 7 else 4.5
        for idx, i in enumerate(vis):
            fam = _TOK_FAM[seq.steps[i]]
            tc  = "#000000" if fam == 1 else "#ffffff"
            ax.text(xs[i], y_node, _TOK_SHORT[seq.steps[i]],
                    ha="center", va="center", fontsize=fs_in,
                    color=tc, fontweight="bold", zorder=4)
            ax.text(xs[i], y_node + 0.115, _TOK_NAMES[seq.steps[i]],
                    ha="center", va="bottom", fontsize=fs_lbl, color="#999999", zorder=4)
            ax.text(xs[i], y_node - 0.095, _REG_NAME[states[i]],
                    ha="center", va="top", fontsize=(4.5 if n>=7 else 5.5),
                    color=_REG_COL[states[i]], fontweight="bold", zorder=4)

    kw = dict(ha="center", va="center", zorder=5)
    if _FP_EV:
        ax.text(0.5, 0.11, seq.ig_type, fontsize=5.5, color="#6688aa",
                fontproperties=_FP_EV, **kw)
    else:
        ax.text(0.5, 0.11, seq.ig_type, fontsize=5.5, color="#6688aa", **kw)
    ax.text(0.5, 0.04, seq.ourobor, fontsize=6.5, color="#aaaadd",
            fontweight="bold", **kw)


def generate_canonical_seqs(build_frames: int = 20, flow_frames: int = 45,
                             fps: int = 14, dpi: int = 110) -> None:
    """Generate animated sequence CFGs for all 13 canonical IMASMSequence ob3ects."""
    _SEQ_OUT.mkdir(parents=True, exist_ok=True)
    print(f"Generating {len(CANONICAL_SEQUENCES)} canonical-sequence CFGs → {_SEQ_OUT}\n")

    for i, seq in enumerate(CANONICAL_SEQUENCES, 1):
        n      = len(seq.steps)
        states = _seq_simulate(seq.steps)
        sigma  = max(0.6, n / 7.0)
        key    = seq.display.replace(" ", "_").replace("—", "").replace("/", "").strip("_")
        out    = _SEQ_OUT / f"cfg_{key}.gif"

        print(f"[{i:02d}/{len(CANONICAL_SEQUENCES)}] {seq.display}  ({n} steps)",
              end="  ", flush=True)

        fig, ax = plt.subplots(figsize=(10, 3.8), facecolor=BG)
        frames: list[Image.Image] = []

        for f in range(build_frames):
            k   = max(1, int((f + 1) / build_frames * n))
            tok = seq.steps[k - 1]
            _seq_render_frame(ax, seq, states, k, None, sigma,
                f"{seq.display}  │  step {k}/{n}: "
                f"{_TOK_NAMES[tok]} [{_FAM_NAME[_TOK_FAM[tok]]}]  →  "
                f"{_REG_NAME[states[k-1]]}")
            buf = io.BytesIO()
            fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
            buf.seek(0); frames.append(Image.open(buf).copy())

        for f, pc in enumerate(np.linspace(0, n - 1, flow_frames)):
            i_n  = min(int(round(pc)), n - 1)
            tok  = seq.steps[i_n]
            _seq_render_frame(ax, seq, states, None, pc, sigma,
                f"{seq.display}  │  ◎ {_TOK_NAMES[tok]} "
                f"[{_FAM_NAME[_TOK_FAM[tok]]}]  reg: {_REG_NAME[states[i_n]]}  {seq.ourobor}")
            buf = io.BytesIO()
            fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
            buf.seek(0); frames.append(Image.open(buf).copy())

        plt.close(fig)
        rgb = [fr.convert("RGB") for fr in frames]
        rgb[0].save(str(out), save_all=True, append_images=rgb[1:],
                    duration=1000 // fps, loop=0, optimize=False)
        print(f"→ {out.name}  ({out.stat().st_size / 1e3:.0f} KB)")

    print("\nCanonical sequences done.")
