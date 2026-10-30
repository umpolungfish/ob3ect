"""
Animated full-tower CFG for the Ob3ect.

Nodes  = 29 layers of the categorical tower (runall.py execution order)
Edges  = mathematical dependency DAG  +  sequential execution spine

Node colors by mathematical family:
  foundation  #4e79a7  — Category, CCC, InitTerm
  frobenius   #ffd700  — Frobenius  (gold, always highlighted)
  algebra     #f28e2b  — Hopf, Monad, Fixed-Point, Operad
  logic       #59a14f  — Entropy, LinearLogic, Topos, HTT
  quantum     #cc44ff  — Quantum, DaggerCompact
  imscription #20b2aa  — IVM, Traced, IMASM, ImscriptionOS
  language    #e15759  — Shavian, StringDiagram
  sheaf       #9c9c9c  — Sheaf, Presheaf, Stone, Galois
  meta        #eeeeee  — MetaAuto, ProofBridge
  embedding   #cc9900  — Yoneda, KanExtension, Adjoint

Animation:
  Phase 1 — build: layers appear in runall.py execution order;
             Frobenius node flashes gold when first reached (layer 2).
  Phase 2 — flow: Gaussian pulse travels the dependency DAG;
             Frobenius edges pulse gold; cross-family edges pulse amber.

Output: docs/cfg_tower.gif
"""

from __future__ import annotations
import io
from pathlib import Path

import numpy as np
from PIL import Image
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import networkx as nx

OUT = Path(__file__).parent / "docs" / "cfg_tower.gif"
BG  = "#0a0a15"

# ── Layer definitions (id, display_label, full_name, family) ──────────────────
LAYERS = [
    ("Category",      "Cat",   "Category",                "foundation"),
    ("Frobenius",     "Frob",  "Frobenius",               "frobenius"),
    ("Fixed-Point",   "FxPt",  "Fixed-Point",             "algebra"),
    ("Hopf",          "Hopf",  "Hopf",                    "algebra"),
    ("Monad",         "Monad", "Monad",                   "algebra"),
    ("Entropy",       "Entr",  "Entropy",                 "logic"),
    ("Topos",         "Topos", "Topos",                   "logic"),
    ("CCC",           "CCC",   "Cartesian Closed",        "foundation"),
    ("Quantum",       "Qntm",  "Quantum",                 "quantum"),
    ("LinearLogic",   "LinL",  "Linear Logic",            "logic"),
    ("IVM",           "IVM",   "Imscription VM",          "imscription"),
    ("Traced",        "Trac",  "Traced",                  "imscription"),
    ("HTT",           "HTT",   "Homotopy Type Theory",    "logic"),
    ("ImscriptionOS", "ImOS",  "Imscription OS",          "imscription"),
    ("ProofBridge",   "PfBr",  "ProofBridge",             "meta"),
    ("StringDiagram", "StrD",  "String Diagram",          "language"),
    ("IMASM",         "IMASM", "IMASM Self-Imscription",  "imscription"),
    ("MetaAuto",      "Meta",  "Meta Auto-Imscriber",     "meta"),
    ("Shavian",       "Shav",  "Shavian",                 "language"),
    ("Yoneda",        "Yon",   "Yoneda",                  "embedding"),
    ("Operad",        "Oprd",  "Operad",                  "algebra"),
    ("Sheaf",         "Shf",   "Sheaf",                   "sheaf"),
    ("DaggerCompact", "DagC",  "Dagger Compact",          "quantum"),
    ("Galois",        "Gal",   "Galois Connection",       "sheaf"),
    ("Stone",         "Ston",  "Stone Duality",           "sheaf"),
    ("Presheaf",      "PrShf", "Presheaf",                "sheaf"),
    ("KanExtension",  "Kan",   "Kan Extension",           "embedding"),
    ("Adjoint",       "Adj",   "Adjoint Functors",        "embedding"),
    ("InitTerm",      "I/T",   "Initial/Terminal",        "foundation"),
]

_IDS        = [l[0] for l in LAYERS]
_LABELS     = {l[0]: l[1] for l in LAYERS}
_FULL_NAMES = {l[0]: l[2] for l in LAYERS}
_FAMILY     = {l[0]: l[3] for l in LAYERS}

EXEC_ORDER = _IDS[:]  # same order as LAYERS / runall.py

_FAMILY_COLOR: dict[str, str] = {
    "foundation":  "#4e79a7",
    "frobenius":   "#ffd700",
    "algebra":     "#f28e2b",
    "logic":       "#59a14f",
    "quantum":     "#cc44ff",
    "imscription": "#20b2aa",
    "language":    "#e15759",
    "sheaf":       "#9c9c9c",
    "meta":        "#eeeeee",
    "embedding":   "#cc9900",
}

# ── Mathematical dependency edges ─────────────────────────────────────────────
DEPS: list[tuple[str, str]] = [
    ("Category",      "Frobenius"),
    ("Category",      "Fixed-Point"),
    ("Category",      "Monad"),
    ("Category",      "LinearLogic"),
    ("Category",      "Topos"),
    ("Category",      "Traced"),
    ("Category",      "Yoneda"),
    ("Category",      "Operad"),
    ("Category",      "DaggerCompact"),
    ("Category",      "CCC"),
    ("Category",      "InitTerm"),
    ("Frobenius",     "Hopf"),
    ("Frobenius",     "IVM"),
    ("Frobenius",     "StringDiagram"),
    ("Frobenius",     "IMASM"),
    ("Frobenius",     "Shavian"),
    ("Frobenius",     "DaggerCompact"),
    ("Frobenius",     "ProofBridge"),
    ("Fixed-Point",   "Galois"),
    ("Monad",         "Entropy"),
    ("Monad",         "CCC"),
    ("CCC",           "Quantum"),
    ("CCC",           "HTT"),
    ("Topos",         "HTT"),
    ("Topos",         "Presheaf"),
    ("Topos",         "Stone"),
    ("HTT",           "ProofBridge"),
    ("Galois",        "Stone"),
    ("Presheaf",      "Sheaf"),
    ("Traced",        "IVM"),
    ("IVM",           "ImscriptionOS"),
    ("IMASM",         "MetaAuto"),
    ("IMASM",         "ImscriptionOS"),
    ("DaggerCompact", "Quantum"),
    ("LinearLogic",   "Quantum"),
    ("Yoneda",        "Presheaf"),
    ("Yoneda",        "KanExtension"),
    ("KanExtension",  "Adjoint"),
    ("Adjoint",       "InitTerm"),
]

_SPINE_EDGES: frozenset[tuple[str, str]] = frozenset(
    (EXEC_ORDER[i], EXEC_ORDER[i + 1]) for i in range(len(EXEC_ORDER) - 1)
)
_DEP_SET: frozenset[tuple[str, str]] = frozenset(DEPS)

# Combine deps + spine, deduped, deps first
ALL_EDGES: list[tuple[str, str]] = list(
    dict.fromkeys(DEPS + [(u, v) for u, v in _SPINE_EDGES if (u, v) not in _DEP_SET])
)

_FROB_EDGES = frozenset(
    (u, v) for u, v in ALL_EDGES if "Frobenius" in (u, v)
)
_CROSS_FAMILY_EDGES = frozenset(
    (u, v) for u, v in ALL_EDGES if _FAMILY[u] != _FAMILY[v]
)

_PULSE_GOLD  = np.array(mcolors.to_rgba("#ffd700"))
_PULSE_WHITE = np.array(mcolors.to_rgba("#ffffff"))


def build_graph() -> nx.DiGraph:
    G = nx.DiGraph()
    for lid in EXEC_ORDER:
        G.add_node(lid, family=_FAMILY[lid])
    for u, v in ALL_EDGES:
        G.add_edge(u, v)
    return G


def render_frame(
    ax: plt.Axes,
    pos: dict,
    base_colors: np.ndarray,
    base_sizes: np.ndarray,
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
    ax.set_xlim(-0.05, 1.05)
    ax.set_ylim(-0.05, 1.05)
    ax.set_title(title, color="white", fontsize=7, pad=6)

    nidx = {n: i for i, n in enumerate(EXEC_ORDER)}
    xs = np.array([pos[n][0] for n in EXEC_ORDER])
    ys = np.array([pos[n][1] for n in EXEC_ORDER])

    if revealed is not None:
        for u, v in ALL_EDGES:
            if u not in revealed or v not in revealed:
                continue
            is_frob  = (u, v) in _FROB_EDGES
            is_spine = (u, v) in _SPINE_EDGES and (u, v) not in _DEP_SET
            if is_frob:
                col, lw, al = "#ffd700", 2.5, 0.90
            elif is_spine:
                col, lw, al = "#3a5f80", 0.6, 0.22
            else:
                col, lw, al = "#4a7aaa", 1.2, 0.50
            ax.annotate("", xy=(pos[v][0], pos[v][1]),
                        xytext=(pos[u][0], pos[u][1]),
                        arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al),
                        zorder=1)

        vis = [nidx[n] for n in EXEC_ORDER if n in revealed]
        if not vis:
            return

        colors = base_colors[vis].copy()
        sizes  = base_sizes[vis].copy()
        if frob_flash:
            for i, idx in enumerate(vis):
                if EXEC_ORDER[idx] == "Frobenius":
                    colors[i] = _PULSE_GOLD
                    sizes[i] *= 2.5

        ax.scatter(xs[vis], ys[vis], c=colors, s=sizes,
                   zorder=3, linewidths=0.8, edgecolors="#ffffff44")
        for n in EXEC_ORDER:
            if n in revealed:
                fam = _FAMILY[n]
                tc = "#000000" if fam in ("meta", "embedding") else "#ffffff"
                ax.text(pos[n][0], pos[n][1], _LABELS[n],
                        ha="center", va="center", fontsize=5.5,
                        color=tc, fontweight="bold", zorder=4)

    else:
        dists   = np.abs(np.arange(N) - pulse_center)
        dists   = np.minimum(dists, N - dists)
        weights = np.exp(-0.5 * (dists / pulse_sigma) ** 2)
        active  = {EXEC_ORDER[i] for i in range(N) if weights[i] > 0.3}

        for u, v in ALL_EDGES:
            is_frob  = (u, v) in _FROB_EDGES
            is_cross = (u, v) in _CROSS_FAMILY_EDGES
            is_spine = (u, v) in _SPINE_EDGES and (u, v) not in _DEP_SET
            near     = u in active or v in active
            if is_frob and near:
                col, lw, al = "#ffd700", 3.0, 0.95
            elif is_frob:
                col, lw, al = "#cc9900", 1.8, 0.55
            elif is_cross and near:
                col, lw, al = "#ffb347", 2.0, 0.80
            elif near:
                col, lw, al = "#4a7aaa", 1.5, 0.65
            elif is_spine:
                col, lw, al = "#2a3a4a", 0.5, 0.12
            else:
                col, lw, al = "#3a5f80", 0.7, 0.20
            ax.annotate("", xy=(pos[v][0], pos[v][1]),
                        xytext=(pos[u][0], pos[u][1]),
                        arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al),
                        zorder=1)

        blended = np.empty_like(base_colors)
        for i, n in enumerate(EXEC_ORDER):
            w = weights[i]
            target = _PULSE_GOLD if n == "Frobenius" else _PULSE_WHITE
            blended[i] = base_colors[i] * (1 - w) + target * w
        blended = np.clip(blended, 0, 1)
        sizes = base_sizes + base_sizes * 2.0 * weights

        ax.scatter(xs, ys, c=blended, s=sizes, zorder=3,
                   linewidths=0.8, edgecolors="#ffffff22")
        for n in EXEC_ORDER:
            fam = _FAMILY[n]
            tc = "#000000" if fam in ("meta", "embedding") else "#ffffff"
            ax.text(pos[n][0], pos[n][1], _LABELS[n],
                    ha="center", va="center", fontsize=5.5,
                    color=tc, fontweight="bold", zorder=4)


def fig_to_pil(fig, dpi):
    buf = io.BytesIO()
    fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
    buf.seek(0)
    return Image.open(buf).copy()


def main(build_frames=60, flow_frames=90, fps=15, dpi=110):
    G = build_graph()
    print(f"  Tower: {G.number_of_nodes()} layers, {G.number_of_edges()} edges")

    pos_raw = nx.spring_layout(G, k=0.5, iterations=400, seed=42)
    all_xy  = np.array(list(pos_raw.values()))
    mn, mx  = all_xy.min(0), all_xy.max(0)
    pos = {
        n: tuple(((np.array(xy) - mn) / (mx - mn + 1e-9) * 0.88 + 0.06).tolist())
        for n, xy in pos_raw.items()
    }

    N = len(EXEC_ORDER)
    degrees  = dict(G.degree())
    max_deg  = max(degrees.values()) if degrees else 1

    base_colors = np.array([
        mcolors.to_rgba(_FAMILY_COLOR[_FAMILY[n]]) for n in EXEC_ORDER
    ])
    base_sizes = np.array([
        220 if n == "Frobenius" else
        100 + 80 * (np.log1p(degrees.get(n, 1)) / np.log1p(max_deg)) ** 1.5
        for n in EXEC_ORDER
    ], dtype=float)

    frob_idx      = EXEC_ORDER.index("Frobenius")
    pulse_sigma   = max(4, N // 5)
    pulse_centers = np.linspace(0, N - 1, flow_frames).astype(int)
    total_frames  = build_frames + flow_frames

    print(f"  Rendering cfg_tower.gif ({total_frames} frames) …")
    fig, ax = plt.subplots(figsize=(12, 12), facecolor=BG)
    frames_pil = []

    for f in range(total_frames):
        print(f"\r  {(f+1)/total_frames*100:5.1f}%", end="", flush=True)

        if f < build_frames:
            frac     = (f + 1) / build_frames
            k        = max(1, int(frac * N))
            revealed = set(EXEC_ORDER[:k])
            flash    = k - 1 == frob_idx
            cur      = EXEC_ORDER[k - 1]
            title = (
                f"Ob3ect — Categorical Tower | layer {k}/{N}: {_FULL_NAMES[cur]} | "
                f"{'Frobenius gate ↯ μ∘δ = id' if flash else _FAMILY[cur]}"
            )
            render_frame(ax, pos, base_colors, base_sizes,
                         revealed, flash, None, pulse_sigma, N, title)
        else:
            fi     = f - build_frames
            center = pulse_centers[fi]
            n_at   = EXEC_ORDER[center]
            title  = (
                f"Ob3ect — Categorical Tower | wave: {_FULL_NAMES[n_at]} [{_FAMILY[n_at]}] | "
                f"29 layers · μ∘δ = id"
            )
            render_frame(ax, pos, base_colors, base_sizes,
                         None, False, center, pulse_sigma, N, title)

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
