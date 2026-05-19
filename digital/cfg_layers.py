"""
Per-layer animated CFGs for all 29 layers of the categorical tower.

For each layer, AST-extracts its verify() call graph and animates it:
  - Layer-local functions  →  teal  (#20b2aa)
  - verify() entry node    →  blue  (#4e79a7)
  - Frobenius externals    →  gold  (#ffd700)
    (frobenius_phase, TANCH, AFWD, FSPLIT, FFUSE, ISCRIB)
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

# Known external frobenius callees (imported from frob.py)
_EXT_FROBENIUS = frozenset({
    "frobenius_phase", "TANCH", "AFWD", "AREV", "FSPLIT", "FFUSE", "ISCRIB",
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
        60 + 50 * (np.log1p(degrees.get(n, 1)) / np.log1p(max_deg)) ** 1.5
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
