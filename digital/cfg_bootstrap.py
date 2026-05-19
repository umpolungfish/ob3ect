"""
Animated CFG of the universal 8-step bootstrap sequence.

ISCRIB is one node — steps 1 and 8 are the same opcode.  The bootstrap
is a directed cycle that begins and ends at ISCRIB:

  ISCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX → ISCRIB  (∞)

Self-loop on ISCRIB  (id: X→X, purple arc outward)
IFIX → ISCRIB        closes the cycle  (teal back-arc)
FFUSE → ISCRIB       Frobenius verify arc  (μ∘δ = id, gold cross-arc)

Layout: 7 nodes on a circle, ISCRIB at 12 o'clock.

Animation:
  Phase 1 — build: nodes appear in execution order; ISCRIB self-loop appears
             on first reveal; IFIX→ISCRIB cycle-close arc flashes teal;
             Frobenius pair flashes gold when μ∘δ = id arc is drawn.
  Phase 2 — flow: Gaussian pulse rotates the cycle; self-loop pulses teal;
             Frobenius arc pulses gold.

Output: docs/cfg_bootstrap.gif
"""

from __future__ import annotations
import io
import math
from pathlib import Path

import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import matplotlib.patches as mpatches

OUT = Path(__file__).parent / "docs" / "cfg_bootstrap.gif"
BG  = "#0a0a15"

# ── 7 nodes (ISCRIB appears once) ─────────────────────────────────────────────
STEPS = [
    ("ISCRIB",  "ISCRIB\nid",  "ISCRIB",  "self",      "id — self-recognition"),
    ("AREV",    "AREV\n←",     "AREV",    "direction", "← descent"),
    ("FSPLIT",  "FSPLIT\nδ",   "FSPLIT",  "frobenius", "δ — separate"),
    ("AFWD",    "AFWD\n→",     "AFWD",    "direction", "→ ascent"),
    ("FFUSE",   "FFUSE\nμ",    "FFUSE",   "frobenius", "μ — fuse  (μ∘δ = id)"),
    ("CLINK",   "CLINK\n∘",    "CLINK",   "link",      "∘ compose"),
    ("IFIX",    "IFIX\n⊠",     "IFIX",    "self",      "⊠ fix permanently"),
]

_IDS    = [s[0] for s in STEPS]
_LABELS = {s[0]: s[1] for s in STEPS}
_FULL   = {s[0]: s[2] for s in STEPS}
_FAMILY = {s[0]: s[3] for s in STEPS}
_DESC   = {s[0]: s[4] for s in STEPS}

_FAMILY_COLOR = {
    "self":      "#cc44ff",
    "direction": "#f28e2b",
    "frobenius": "#ffd700",
    "link":      "#4e79a7",
}

EXEC_ORDER = _IDS[:]   # animation reveal order

# ── Edges ─────────────────────────────────────────────────────────────────────
# Sequential spine (6 edges — ISCRIB→AREV→…→IFIX)
_SPINE: list[tuple[str, str]] = [
    (_IDS[i], _IDS[i + 1]) for i in range(len(_IDS) - 1)
]
_CYCLE_CLOSE = ("IFIX",  "ISCRIB")   # step 7→1: cycle back-arc
_FROB_X      = ("FFUSE", "ISCRIB")   # μ∘δ = id verify arc

ALL_EDGES: list[tuple[str, str]] = _SPINE + [_CYCLE_CLOSE, _FROB_X]

_FROB_NODES = frozenset({"FSPLIT", "FFUSE"})
_FROB_EDGES = frozenset(
    (u, v) for u, v in ALL_EDGES
    if u in _FROB_NODES or v in _FROB_NODES
)

_PULSE_GOLD  = np.array(mcolors.to_rgba("#ffd700"))
_PULSE_WHITE = np.array(mcolors.to_rgba("#ffffff"))
_PULSE_TEAL  = np.array(mcolors.to_rgba("#20b2aa"))

_CX, _CY = 0.50, 0.50   # circle centre


def make_pos() -> dict[str, tuple[float, float]]:
    N, r = len(_IDS), 0.36
    return {
        nid: (_CX + r * math.cos(math.pi / 2 - 2 * math.pi * i / N),
              _CY + r * math.sin(math.pi / 2 - 2 * math.pi * i / N))
        for i, nid in enumerate(_IDS)
    }


def _draw_self_loop(ax, x: float, y: float, col: str, lw: float, al: float) -> None:
    """Arc-circle self-loop centred just outside the node, arcing outward."""
    dx, dy = x - _CX, y - _CY
    ln = math.sqrt(dx * dx + dy * dy) or 1.0
    out_dx, out_dy = dx / ln, dy / ln

    node_r = 0.014   # estimated scatter-marker radius in data coords
    loop_r = 0.030   # self-loop arc circle radius

    # Loop circle centre: just beyond the node edge in outward direction
    lcx = x + out_dx * (node_r + loop_r)
    lcy = y + out_dy * (node_r + loop_r)

    # Inward direction angle (loop-centre → node-centre)
    inward_deg = math.degrees(math.atan2(-out_dy, -out_dx))
    gap = 22                              # half-gap in degrees, keeps endpoints on node
    theta1 = (inward_deg + gap) % 360
    theta2 = (inward_deg - gap) % 360

    ax.add_patch(mpatches.Arc(
        (lcx, lcy), width=loop_r * 2, height=loop_r * 2,
        angle=0, theta1=theta1, theta2=theta2,
        color=col, linewidth=lw, alpha=al, zorder=2,
    ))

    # Arrowhead at arc endpoint theta2 (end of CCW arc)
    t2r = math.radians(theta2)
    ex, ey = lcx + loop_r * math.cos(t2r), lcy + loop_r * math.sin(t2r)
    # CCW tangent at theta2: (-sin, cos)
    tx, ty = -math.sin(t2r), math.cos(t2r)
    dt = 0.006
    ax.annotate("", xy=(ex, ey), xytext=(ex - tx * dt, ey - ty * dt),
                arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al,
                                mutation_scale=8), zorder=3)


def render_frame(
    ax: plt.Axes,
    pos: dict,
    base_colors: np.ndarray,
    base_sizes: np.ndarray,
    revealed: set[str] | None,
    special_flash: str | None,   # "frob" | "cycle" | None
    pulse_center: int | None,
    pulse_sigma: int,
    N: int,
    title: str,
) -> None:
    ax.clear()
    ax.set_facecolor(BG)
    ax.set_axis_off()
    ax.set_xlim(0.0, 1.0)
    ax.set_ylim(0.0, 1.0)
    ax.set_aspect("equal")
    ax.set_title(title, color="white", fontsize=8, pad=6)

    nidx = {n: i for i, n in enumerate(EXEC_ORDER)}
    xs   = np.array([pos[n][0] for n in EXEC_ORDER])
    ys   = np.array([pos[n][1] for n in EXEC_ORDER])

    def _arc(u, v, col, lw, al, rad=0.0):
        ax.annotate("", xy=(pos[v][0], pos[v][1]), xytext=(pos[u][0], pos[u][1]),
                    arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al,
                                    connectionstyle=f"arc3,rad={rad}"), zorder=1)

    if revealed is not None:
        for u, v in ALL_EDGES:
            if u not in revealed or v not in revealed:
                continue
            is_frob    = (u, v) in _FROB_EDGES
            is_frobx   = (u, v) == _FROB_X
            is_cycle   = (u, v) == _CYCLE_CLOSE
            if is_frob or is_frobx:
                col, lw, al = "#ffd700", 2.5, 0.88
            elif is_cycle:
                col, lw, al = "#20b2aa", 2.5, 0.88
            else:
                col, lw, al = "#4a7aaa", 1.2, 0.45
            rad = 0.28 if is_frobx else (0.22 if is_cycle else 0.0)
            _arc(u, v, col, lw, al, rad)

        # Self-loop on ISCRIB once revealed
        if "ISCRIB" in revealed:
            loop_col = "#ffd700" if special_flash == "frob" else "#cc44ff"
            _draw_self_loop(ax, pos["ISCRIB"][0], pos["ISCRIB"][1],
                            loop_col, lw=2.2, al=0.90)

        vis = [nidx[n] for n in EXEC_ORDER if n in revealed]
        if not vis:
            return

        colors = base_colors[vis].copy()
        sizes  = base_sizes[vis].copy()
        if special_flash == "frob":
            for i, idx in enumerate(vis):
                if EXEC_ORDER[idx] in _FROB_NODES:
                    colors[i] = _PULSE_GOLD
                    sizes[i] *= 2.5
        elif special_flash == "cycle":
            for i, idx in enumerate(vis):
                if EXEC_ORDER[idx] == "ISCRIB":
                    colors[i] = _PULSE_TEAL
                    sizes[i] *= 2.5

        ax.scatter(xs[vis], ys[vis], c=colors, s=sizes,
                   zorder=3, linewidths=1.0, edgecolors="#ffffff55")
        for n in EXEC_ORDER:
            if n in revealed:
                tc = "#000000" if n in _FROB_NODES else "#ffffff"
                ax.text(pos[n][0], pos[n][1], _LABELS[n],
                        ha="center", va="center", fontsize=6,
                        color=tc, fontweight="bold", zorder=4,
                        multialignment="center")

    else:
        dists   = np.abs(np.arange(N) - pulse_center)
        dists   = np.minimum(dists, N - dists)
        weights = np.exp(-0.5 * (dists / pulse_sigma) ** 2)
        active  = {EXEC_ORDER[i] for i in range(N) if weights[i] > 0.3}

        for u, v in ALL_EDGES:
            is_frob  = (u, v) in _FROB_EDGES
            is_frobx = (u, v) == _FROB_X
            is_cycle = (u, v) == _CYCLE_CLOSE
            near     = u in active or v in active
            if (is_frob or is_frobx) and near:
                col, lw, al = "#ffd700", 3.0, 0.95
            elif is_frob or is_frobx:
                col, lw, al = "#cc9900", 1.8, 0.55
            elif is_cycle and near:
                col, lw, al = "#00ffe0", 3.0, 0.92
            elif is_cycle:
                col, lw, al = "#20b2aa", 1.8, 0.55
            elif near:
                col, lw, al = "#9c59d1", 1.8, 0.68
            else:
                col, lw, al = "#3a5f80", 0.7, 0.20
            rad = 0.28 if is_frobx else (0.22 if is_cycle else 0.0)
            _arc(u, v, col, lw, al, rad)

        # Self-loop brightness follows ISCRIB's pulse weight
        w_iscrib = weights[nidx["ISCRIB"]]
        if w_iscrib > 0.3:
            loop_col, loop_lw, loop_al = "#00ffe0", 3.0, 0.92
        else:
            loop_col, loop_lw, loop_al = "#cc44ff", 1.8, 0.55
        _draw_self_loop(ax, pos["ISCRIB"][0], pos["ISCRIB"][1],
                        loop_col, lw=loop_lw, al=loop_al)

        blended = np.empty_like(base_colors)
        for i, n in enumerate(EXEC_ORDER):
            w = weights[i]
            target = (_PULSE_GOLD if n in _FROB_NODES else
                      _PULSE_TEAL if n == "ISCRIB" else
                      _PULSE_WHITE)
            blended[i] = base_colors[i] * (1 - w) + target * w
        blended = np.clip(blended, 0, 1)
        sizes = base_sizes + base_sizes * 2.2 * weights

        ax.scatter(xs, ys, c=blended, s=sizes, zorder=3,
                   linewidths=1.0, edgecolors="#ffffff33")
        for n in EXEC_ORDER:
            tc = "#000000" if n in _FROB_NODES else "#ffffff"
            ax.text(pos[n][0], pos[n][1], _LABELS[n],
                    ha="center", va="center", fontsize=6,
                    color=tc, fontweight="bold", zorder=4,
                    multialignment="center")


def fig_to_pil(fig, dpi):
    buf = io.BytesIO()
    fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
    buf.seek(0)
    return Image.open(buf).copy()


def main(build_frames=50, flow_frames=90, fps=15, dpi=110):
    pos = make_pos()
    N   = len(EXEC_ORDER)

    base_colors = np.array([
        mcolors.to_rgba(_FAMILY_COLOR[_FAMILY[n]]) for n in EXEC_ORDER
    ])
    base_sizes = np.array([
        220 if n in _FROB_NODES else
        200 if n == "ISCRIB" else
        120
        for n in EXEC_ORDER
    ], dtype=float)

    # Special flash indices
    frob_idx  = EXEC_ORDER.index("FFUSE")   # Frobenius pair closes
    cycle_idx = EXEC_ORDER.index("IFIX")    # cycle-close arc drawn

    pulse_sigma   = max(2, N // 3)
    pulse_centers = np.linspace(0, N - 1, flow_frames).astype(int)
    total_frames  = build_frames + flow_frames

    print(f"Rendering cfg_bootstrap.gif ({total_frames} frames) …")
    fig, ax = plt.subplots(figsize=(9, 9), facecolor=BG)
    frames_pil = []

    for f in range(total_frames):
        print(f"\r  {(f+1)/total_frames*100:5.1f}%", end="", flush=True)

        if f < build_frames:
            frac     = (f + 1) / build_frames
            k        = max(1, int(frac * N))
            revealed = set(EXEC_ORDER[:k])
            cur      = EXEC_ORDER[k - 1]
            flash    = ("frob"  if k - 1 == frob_idx  else
                        "cycle" if k - 1 == cycle_idx else None)
            title = (
                f"Ob3ect — Bootstrap Cycle | step {k}/{N}: {_FULL[cur]} | "
                f"{'μ∘δ = id ↯' if flash == 'frob' else 'cycle closed ↺' if flash == 'cycle' else _DESC[cur]}"
            )
            render_frame(ax, pos, base_colors, base_sizes,
                         revealed, flash, None, pulse_sigma, N, title)
        else:
            fi     = f - build_frames
            center = pulse_centers[fi]
            n_at   = EXEC_ORDER[center]
            title  = (
                f"Ob3ect — Bootstrap Cycle | wave: {_FULL[n_at]} | "
                f"ISCRIB = id  ·  μ∘δ = id"
            )
            render_frame(ax, pos, base_colors, base_sizes,
                         None, None, center, pulse_sigma, N, title)

        frames_pil.append(fig_to_pil(fig, dpi))

    print()
    plt.close(fig)

    OUT.parent.mkdir(parents=True, exist_ok=True)
    frames_rgb = [fr.convert("RGB") for fr in frames_pil]
    frames_rgb[0].save(str(OUT), save_all=True, append_images=frames_rgb[1:],
                       duration=1000 // fps, loop=0, optimize=False)
    print(f"Done: {OUT}  ({OUT.stat().st_size / 1e6:.1f} MB)")


if __name__ == "__main__":
    main()
