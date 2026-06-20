"""
Animated CFG — Lando Mills Ob3ect Opcode Sequence.

32-token bootstrap protocol with:
  - FSPLIT/FFUSE fork-join (one tokenized pair)
  - ENGAGR paraconsistent inclosure (B-state node)
  - Dual IMSCRIB self-referential closure
  - AREV retrosynthetic verification
  - TANCH terminal archive sealing
  - IFIX irreversible fixation
  - Global document-level Frobenius closure (unpaired FFUSE)

Two-phase animation:
  Phase 1 (BUILD):  Nodes appear in instruction order, edges revealed as endpoints appear.
  Phase 2 (FLOW):   Gaussian pulse travels through the graph, highlighting the active
                     node and its incident edges.  Special ENGAGR / IMSCRIB / IFIX
                     highlight logic borrowed from the Emerald Tablet engine.

Output: ob3ect/digital/lando_mills/animated_cfg_lando_mills.gif
"""

from __future__ import annotations
import io
import sys
from pathlib import Path

import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import networkx as nx

# ── Paths ────────────────────────────────────────────────────────────────────
OUT_DIR  = Path(__file__).resolve().parent
OUT_GIF  = OUT_DIR / "animated_cfg_lando_mills.gif"
BG       = "#0d0d1a"

# ── Opcode sequence: Lando Mills (32 tokens) ─────────────────────────────────
# Format: (index, mnemonic)
# Fork-join: FSPLIT at idx 18, FFUSE at idx 23
#   T-arm: 19(EVALT) → 20(AFWD) → 21(EVALT) → 22(ENGAGR)
#   F-arm: empty (.refl) — absorbed by ENGAGR, bypasses to FFUSE
# Global FFUSE at idx 30 (unpaired, document-level Frobenius closure)
OPCODES: list[tuple[int, str]] = [
    (0,  "VINIT"),    # bootstrap
    (1,  "AFWD"),     # morphism
    (2,  "AFWD"),     # morphism
    (3,  "CLINK"),    # morphism
    (4,  "AFWD"),     # morphism
    (5,  "AFWD"),     # morphism
    (6,  "AFWD"),     # morphism
    (7,  "AFWD"),     # morphism
    (8,  "CLINK"),    # morphism
    (9,  "AFWD"),     # morphism
    (10, "AFWD"),     # morphism
    (11, "AFWD"),     # morphism
    (12, "AFWD"),     # morphism
    (13, "AFWD"),     # morphism
    (14, "CLINK"),    # morphism
    (15, "AFWD"),     # morphism
    (16, "CLINK"),    # morphism
    (17, "AFWD"),     # morphism
    (18, "FSPLIT"),   # frobenius — δ-split on Lawvere check
    (19, "EVALT"),    # dialetheia — T-arm: fixed point exists
    (20, "AFWD"),     # morphism — L5 Frobenius condition
    (21, "EVALT"),    # dialetheia — Frobenius holds, P→pm_sym
    (22, "ENGAGR"),   # dialetheia — paraconsistent inclosure (B-state)
    (23, "FFUSE"),    # frobenius — μ-merge
    (24, "CLINK"),    # morphism
    (25, "IMSCRIB"),  # identity — first self-imscription
    (26, "AREV"),     # morphism — retrosynthetic verification
    (27, "TANCH"),    # bootstrap — terminal archive
    (28, "IFIX"),     # identity — irreversible fixation
    (29, "CLINK"),    # morphism
    (30, "FFUSE"),    # frobenius — global document-level Frobenius closure
    (31, "IMSCRIB"),  # identity — second self-imscription, loop closes
]

# ── Token family & color ─────────────────────────────────────────────────────
TOKEN_FAMILY: dict[str, str] = {
    "IMSCRIB": "identity",
    "IFIX":    "identity",
    "AFWD":    "morphism",
    "AREV":    "morphism",
    "CLINK":   "morphism",
    "FSPLIT":  "frobenius",
    "FFUSE":   "frobenius",
    "ENGAGR":  "dialetheia",
    "EVALT":   "dialetheia",
    "EVALF":   "dialetheia",
    "VINIT":   "bootstrap",
    "TANCH":   "bootstrap",
}

FAMILY_COLOR: dict[str, str] = {
    "identity":   "#59a14f",  # green
    "morphism":   "#f28e2b",  # orange
    "frobenius":  "#4e79a7",  # blue
    "dialetheia": "#e15759",  # red
    "bootstrap":  "#9c9c9c",  # grey
}

EDGE_STYLE: dict[str, dict] = {
    "flow":     {"color": "#3a5f80", "lw": 1.0, "alpha": 0.45, "style": "solid"},
    "branch_T": {"color": "#4e79a7", "lw": 2.4, "alpha": 0.90, "style": "solid"},
    "branch_F": {"color": "#888888", "lw": 1.6, "alpha": 0.70, "style": "dashed"},
    "merge":    {"color": "#4e79a7", "lw": 2.4, "alpha": 0.90, "style": "solid"},
    "backpop":  {"color": "#cc44ff", "lw": 2.2, "alpha": 0.88, "style": "solid"},
    "cycle":    {"color": "#59a14f", "lw": 1.8, "alpha": 0.75, "style": "dotted"},
}

# ── Pulse colours ────────────────────────────────────────────────────────────
_PULSE_WHITE  = np.array(mcolors.to_rgba("#ffffff"))
_PULSE_GOLD   = np.array(mcolors.to_rgba("#ffd700"))
_PULSE_VIOLET = np.array(mcolors.to_rgba("#cc44ff"))
_PULSE_RED    = np.array(mcolors.to_rgba("#e15759"))
_PULSE_BLUE   = np.array(mcolors.to_rgba("#4e79a7"))
_PULSE_GREEN  = np.array(mcolors.to_rgba("#59a14f"))


# ═══════════════════════════════════════════════════════════════════════════════
#  GRAPH CONSTRUCTION
# ═══════════════════════════════════════════════════════════════════════════════

def build_graph() -> nx.DiGraph:
    """Build the Lando Mills opcode CFG with fork-join structure."""
    G = nx.DiGraph()
    idx_mnem = {idx: mnem for idx, mnem in OPCODES}
    idx_by_mnem: dict[str, list[int]] = {}
    for idx, mnem in OPCODES:
        idx_by_mnem.setdefault(mnem, []).append(idx)

    # Add nodes
    for idx, mnem in OPCODES:
        family = TOKEN_FAMILY.get(mnem, "bootstrap")
        G.add_node(idx, mnemonic=mnem, family=family,
                   color=FAMILY_COLOR.get(family, "#cccccc"))

    # Add sequential flow edges (skipping fork internals)
    fsplit_idx = 18
    ffuse_idx  = 23

    for i in range(len(OPCODES) - 1):
        src = OPCODES[i][0]
        tgt = OPCODES[i + 1][0]
        # Skip: FSPLIT → EVALT (handled as branch_T)
        if src == fsplit_idx and tgt == fsplit_idx + 1:
            continue
        # Skip: ENGAGR → FFUSE (handled as merge)
        if src == fsplit_idx + 4 and tgt == ffuse_idx:
            continue
        # Skip: FFUSE → CLINK after the fork (still sequential but keep as flow)
        # Keep all other sequential edges
        G.add_edge(src, tgt, etype="flow")

    # FSPLIT → T-arm first node (EVALT)
    G.add_edge(fsplit_idx, 19, etype="branch_T")
    # FSPLIT → F-arm (empty, bypasses directly to FFUSE)
    G.add_edge(fsplit_idx, ffuse_idx, etype="branch_F")

    # T-arm internal edges: 19→20→21→22
    G.add_edge(19, 20, etype="flow")
    G.add_edge(20, 21, etype="flow")
    G.add_edge(21, 22, etype="flow")

    # ENGAGR → FFUSE (merge)
    G.add_edge(22, ffuse_idx, etype="merge")

    # Backpop: IMSCRIB(25) → IFIX(28) and IMSCRIB(31) → closure loop
    G.add_edge(25, 28, etype="backpop")
    # IMSCRIB(31) → IMSCRIB(25)  (closure cycle)
    G.add_edge(31, 25, etype="cycle")

    # AREV(26) → IMSCRIB(25) retrosynthetic confirmation
    G.add_edge(26, 25, etype="backpop")

    # Global FFUSE(30) has no paired FSPLIT — annotate for animation
    G.nodes[30]["global_fuse"] = True

    return G


def build_node_order(G: nx.DiGraph) -> list[int]:
    """Return node indices in opcode order, filtered to graph nodes."""
    return [idx for idx, _ in OPCODES if idx in G.nodes]
# ═══════════════════════════════════════════════════════════════════════════════
#  LAYOUT
# ═══════════════════════════════════════════════════════════════════════════════

def compute_layout(G: nx.DiGraph) -> dict[int, tuple[float, float]]:
    """
    Custom layout: left-to-right spine with fork-join branch above.
    Sequential nodes follow a gentle sine wave; the T-arm rises above the spine;
    the dual IMSCRIB nodes form a loop at the right.
    """
    N = len(OPCODES)
    pos: dict[int, tuple[float, float]] = {}

    # Main spine: nodes 0–17, 24–31 left-to-right
    # Fork region: nodes 18–23 form a raised arch
    spine_y = 0.0

    for i in range(N):
        idx = OPCODES[i][0]
        x = (i / (N - 1)) * 2.0 - 1.0  # -1 to +1

        if idx < 18:
            # Pre-fork spine
            y = spine_y + 0.04 * np.sin(i * 0.7)
            pos[idx] = (x, y)
        elif 18 <= idx <= 23:
            # Fork region: raised arch
            if idx == 18:   # FSPLIT
                pos[idx] = (x, spine_y)
            elif idx == 19:  # EVALT (T-arm start)
                pos[idx] = (x, spine_y + 0.55)
            elif idx == 20:  # AFWD (T-arm)
                pos[idx] = (x, spine_y + 0.68)
            elif idx == 21:  # EVALT (T-arm)
                pos[idx] = (x, spine_y + 0.55)
            elif idx == 22:  # ENGAGR (T-arm end)
                pos[idx] = (x, spine_y + 0.42)
            elif idx == 23:  # FFUSE
                pos[idx] = (x, spine_y)
        elif idx == 24:
            # CLINK after fork — back on spine
            pos[idx] = (x, spine_y)
        elif idx == 25:
            # IMSCRIB — slightly elevated (self-referential)
            pos[idx] = (x, spine_y + 0.30)
        elif idx == 26:
            # AREV — retrosynthetic loop
            pos[idx] = (x, spine_y - 0.35)
        elif idx == 27:
            # TANCH — terminal archive
            pos[idx] = (x, spine_y)
        elif idx == 28:
            # IFIX — fixation point
            pos[idx] = (x, spine_y - 0.18)
        elif idx == 29:
            # CLINK
            pos[idx] = (x, spine_y)
        elif idx == 30:
            # FFUSE (global) — slightly elevated
            pos[idx] = (x, spine_y + 0.15)
        elif idx == 31:
            # IMSCRIB (closure) — loop back
            pos[idx] = (x, spine_y + 0.35)

    return pos


# ═══════════════════════════════════════════════════════════════════════════════
#  FRAME RENDERER
# ═══════════════════════════════════════════════════════════════════════════════

def render_frame(
    ax, G: nx.DiGraph, pos: dict, node_order: list[int],
    base_colors: np.ndarray, base_sizes: np.ndarray,
    revealed: set[int] | None, pulse_idx: int | None, title: str,
):
    """Render one frame: nodes + edges with pulse highlighting."""
    ax.clear()
    ax.set_facecolor(BG)
    ax.set_axis_off()
    ax.set_xlim(-1.20, 1.20)
    ax.set_ylim(-1.05, 1.20)
    ax.set_title(title, color="white", fontsize=7.0, pad=6, linespacing=1.3)

    pulse_mnem = G.nodes[pulse_idx].get("mnemonic", "") if pulse_idx is not None and pulse_idx in G.nodes else ""

    # ── Edges ─────────────────────────────────────────────────────────────
    for u, v, d in G.edges(data=True):
        if u not in pos or v not in pos:
            continue
        if revealed is not None and (u not in revealed or v not in revealed):
            continue

        etype = d.get("etype", "flow")
        style = EDGE_STYLE.get(etype, EDGE_STYLE["flow"])
        near  = pulse_idx in (u, v)

        lw = style["lw"] * (2.5 if near else 0.55)
        al = min(0.98, style["alpha"] * (1.9 if near else 0.40))

        # Special highlight logic
        if near and pulse_mnem == "ENGAGR":
            if etype == "merge":
                lw, al = style["lw"] * 3.0, 0.98  # gold blaze
            elif etype == "flow":
                lw, al = style["lw"] * 1.8, 0.82

        if near and pulse_mnem == "IMSCRIB":
            if etype == "backpop":
                lw, al = style["lw"] * 3.0, 0.98  # violet blaze
            elif etype == "cycle":
                lw, al = style["lw"] * 2.8, 0.95
            elif etype == "flow":
                lw, al = style["lw"] * 1.8, 0.85

        if pulse_mnem == "IFIX" and v == pulse_idx and etype == "backpop":
            lw, al = style["lw"] * 2.8, 0.96  # receiving end

        if near and pulse_mnem == "FSPLIT":
            if etype == "branch_T":
                lw, al = style["lw"] * 2.8, 0.95
            elif etype == "branch_F":
                lw, al = style["lw"] * 2.2, 0.78

        if near and pulse_mnem == "FFUSE":
            if etype == "merge":
                lw, al = style["lw"] * 2.6, 0.92

        rad = 0.15 if etype in ("branch_T", "branch_F", "merge", "backpop", "cycle") else 0.05
        arrow = "-|>" if etype != "cycle" else "<|-|>"

        ax.annotate(
            "", xy=pos[v], xytext=pos[u],
            arrowprops=dict(
                arrowstyle=arrow,
                color=style["color"],
                lw=lw, alpha=al,
                linestyle=style["style"],
                connectionstyle=f"arc3,rad={rad}",
            ),
            zorder=2 if near else 1,
        )

    # ── Nodes ─────────────────────────────────────────────────────────────
    vis_idx = (
        [i for i, n in enumerate(node_order) if n in revealed]
        if revealed is not None
        else list(range(len(node_order)))
    )
    if not vis_idx:
        return

    node_colors = base_colors.copy()
    node_sizes  = base_sizes.copy()

    if pulse_idx is not None:
        try:
            pi = node_order.index(pulse_idx)
            mnem = G.nodes[pulse_idx].get("mnemonic", "")
            if mnem == "ENGAGR":
                node_colors[pi] = _PULSE_GOLD
            elif mnem == "IMSCRIB":
                node_colors[pi] = _PULSE_VIOLET
            elif mnem == "IFIX":
                node_colors[pi] = _PULSE_VIOLET * 0.7 + _PULSE_WHITE * 0.3
            elif mnem == "FSPLIT":
                node_colors[pi] = _PULSE_BLUE
            elif mnem == "FFUSE":
                node_colors[pi] = _PULSE_BLUE * 0.8 + _PULSE_WHITE * 0.2
            elif mnem == "EVALT":
                node_colors[pi] = _PULSE_RED
            elif mnem == "AREV":
                node_colors[pi] = _PULSE_GREEN * 0.6 + _PULSE_WHITE * 0.4
            elif mnem == "TANCH":
                node_colors[pi] = _PULSE_WHITE * 0.7 + np.array([0.25, 0.25, 0.25, 0.0])
            else:
                node_colors[pi] = _PULSE_WHITE
            node_sizes[pi] *= 3.0
        except ValueError:
            pass

    xs = np.array([pos[node_order[i]][0] for i in vis_idx])
    ys = np.array([pos[node_order[i]][1] for i in vis_idx])
    ax.scatter(
        xs, ys,
        c=node_colors[vis_idx],
        s=node_sizes[vis_idx],
        zorder=4, linewidths=0.35, edgecolors="#ffffff22",
    )

    # ── Labels ────────────────────────────────────────────────────────────
    for i in vis_idx:
        n = node_order[i]
        x, y = pos[n]
        mnem = G.nodes[n].get("mnemonic", "")
        family = G.nodes[n].get("family", "")
        color = FAMILY_COLOR.get(family, "#cccccc")

        # Highlight label if pulse
        if pulse_idx is not None and n == pulse_idx:
            fontsize = 5.8
            fontweight = "bold"
            label_color = "#ffffff"
        else:
            fontsize = 4.5
            fontweight = "normal"
            label_color = color

        # Offset label above node
        offset = 0.06 + node_sizes[i] * 0.00012
        ax.text(x, y + offset, mnem, fontsize=fontsize, fontweight=fontweight,
                color=label_color, ha="center", va="bottom",
                fontfamily="monospace")


def fig_to_pil(fig, dpi: int) -> Image.Image:
    buf = io.BytesIO()
    fig.savefig(buf, format="png", dpi=dpi, facecolor=BG)
    buf.seek(0)
    return Image.open(buf).copy()

# ═══════════════════════════════════════════════════════════════════════════════
#  MAIN ANIMATION
# ═══════════════════════════════════════════════════════════════════════════════

def main(build_frames: int = 64, flow_frames: int = 120, fps: int = 15, dpi: int = 120):
    print("Building Lando Mills CFG …")
    G = build_graph()
    N = len(G.nodes)
    E = len(G.edges)
    print(f"  {N} nodes · {E} edges")

    node_order = build_node_order(G)
    # Build layout
    pos = compute_layout(G)

    # Base colours & sizes
    indeg = dict(G.in_degree())
    max_deg = max(indeg.values()) if indeg else 1
    base_colors = np.array([
        mcolors.to_rgba(G.nodes[n].get("color", "#cccccc")) for n in node_order
    ])
    base_sizes = np.array([
        30 + 140 * (np.log1p(indeg.get(n, 0)) / np.log1p(max_deg)) ** 1.5
        for n in node_order
    ])

    # Flow phase: pulse follows instruction order
    flow_nodes = [n for n in node_order]
    pulse_seq = [flow_nodes[i % len(flow_nodes)]
                 for i in np.linspace(0, len(flow_nodes) - 1, flow_frames).astype(int)]

    total_frames = build_frames + flow_frames
    print(f"  Rendering {total_frames} frames ({build_frames} build + {flow_frames} flow) …")

    fig, ax = plt.subplots(figsize=(11, 7), facecolor=BG)
    frames_pil: list[Image.Image] = []

    for f in range(total_frames):
        pct = (f + 1) / total_frames * 100
        print(f"\r  {pct:5.1f}%  frame {f+1}/{total_frames}", end="", flush=True)

        if f < build_frames:
            # ── BUILD PHASE ──
            frac = (f + 1) / build_frames
            k = max(1, int(frac * N))
            revealed = set(node_order[:k])
            pulse = node_order[k - 1]
            mnem = G.nodes[pulse].get("mnemonic", "")
            family = G.nodes[pulse].get("family", "")

            if mnem == "FSPLIT":
                hint = "δ-split → T-arm (EVALT)  ∥  F-arm (∅→FFUSE)"
            elif mnem == "FFUSE":
                if G.nodes[pulse].get("global_fuse"):
                    hint = "μ-fuse (global) — document-level Frobenius closure"
                else:
                    hint = "μ-fuse — merge T-arm + F-arm"
            elif mnem == "ENGAGR":
                hint = "⚡ paraconsistent inclosure — B-state (both T & F held)"
            elif mnem == "IMSCRIB":
                hint = "⊕ self-imscription — grammar applies to itself"
            elif mnem == "AREV":
                hint = "⟲ retrosynthetic verification — deconstruct crystal → primitives"
            elif mnem == "TANCH":
                hint = "⊤ terminal archive — 17.28M crystal sealed"
            elif mnem == "IFIX":
                hint = "✎ irreversible fixation — ROM commit"
            else:
                hint = f"{family} · {mnem}"

            title = f"Lando Mills — CFG BUILD | {hint} | μ∘δ=id"
            render_frame(ax, G, pos, node_order, base_colors, base_sizes,
                         revealed, pulse, title)
        else:
            # ── FLOW WAVE PHASE ──
            fi = f - build_frames
            pulse = pulse_seq[fi]
            mnem = G.nodes[pulse].get("mnemonic", "") if pulse in G.nodes else ""

            out_etypes = [d.get("etype", "") for _, _, d in G.out_edges(pulse, data=True)]
            splits = " + ".join(sorted(set(out_etypes))) if out_etypes else "→"

            # Per-node annotation
            note = ""
            if mnem == "FSPLIT":
                note = " | δ: Lawvere φ: A→A^A  branch yes/no"
            elif mnem == "ENGAGR":
                note = " | ⚡ LP lattice: T ∧ F held simultaneously"
            elif mnem == "IMSCRIB":
                note = " | ⊕ μ∘δ = id verified"
            elif mnem == "AREV":
                note = " | ⟲ crystal → 12 primitives confirmed"
            elif mnem == "TANCH":
                note = " | ⊤ 17,280,000 types archived"
            elif mnem == "IFIX":
                note = " | ✎ permanent inscription committed"
            elif mnem == "FFUSE" and G.nodes[pulse].get("global_fuse"):
                note = " | global Frobenius closure (depth 0)"

            title = (
                f"Lando Mills — FLOW WAVE | "
                f"#{pulse} {mnem}  [{splits}]{note}"
            )
            render_frame(ax, G, pos, node_order, base_colors, base_sizes,
                         None, pulse, title)

        frames_pil.append(fig_to_pil(fig, dpi))

    print()
    plt.close(fig)

    # ── Assemble GIF via ImageMagick (handles complex frames reliably) ──
    OUT_GIF.parent.mkdir(parents=True, exist_ok=True)
    print(f"Assembling GIF → {OUT_GIF} …")
    import tempfile, subprocess
    tmpdir = tempfile.mkdtemp()
    for i, fr in enumerate(frames_pil):
        fr.save(f"{tmpdir}/frame_{i:04d}.png")
    delay_cs = int(100 / fps)  # convert uses centiseconds
    cmd = f"convert -limit memory 512MiB -limit map 1GiB -delay {delay_cs} -loop 0 {tmpdir}/frame_*.png {OUT_GIF}"
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    import shutil
    shutil.rmtree(tmpdir)
    if result.returncode != 0:
        print(f"  ERROR: {result.stderr}")
        return None
    sz = OUT_GIF.stat().st_size / (1024 * 1024)
    print(f"Done: {OUT_GIF}  ({sz:.1f} MB)")
    return str(OUT_GIF)


if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser(description="Animated CFG — Lando Mills opcode sequence")
    ap.add_argument("--build-frames", type=int, default=64)
    ap.add_argument("--flow-frames",  type=int, default=120)
    ap.add_argument("--fps",          type=int, default=15)
    ap.add_argument("--dpi",          type=int, default=120)
    args = ap.parse_args()
    main(
        build_frames=args.build_frames,
        flow_frames=args.flow_frames,
        fps=args.fps,
        dpi=args.dpi,
    )
