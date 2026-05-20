"""
Animated execution CFG for the Ob3ect auto.py pipeline.

Models the data-flow of auto.py's build_artifact() run:

  domain_desc → prompt_build → llm_call → json_parse
    → 7 artifact components → frob_check → Ob3ectArtifact
  BootstrapSeq expands into 8 IMASM steps (IMSCRIB→AREV→FSPLIT→AFWD→FFUSE→…)
  frob_check → retry_gate → llm_call  (back-edge on Frobenius FAIL)

Node families and colors:
  input      #4e79a7  — domain_desc
  pipeline   #9c59d1  — prompt_build, llm_call, json_parse
  artifact   #20b2aa  — DomainCharter, OpcodeMap, SplitFuseReport,
                        RegisterMapping, BootstrapSeq, ExOSSpec, EntropyAudit
  control    #e15759  — frob_check, retry_gate
  frobenius  #ffd700  — FSPLIT_3, FFUSE_5
  bootstrap  #f28e2b  — IMSCRIB_1, AREV_2, AFWD_4, CLINK_6, IFIX_7, IMSCRIB_8
  output     #59a14f  — Ob3ectArtifact

Animation:
  Phase 1 — build: nodes appear in pipeline execution order;
             Frobenius nodes flash gold when the FSPLIT/FFUSE pair is reached.
  Phase 2 — flow: Gaussian pulse travels the graph;
             Frobenius edges pulse gold; retry back-edge pulses red.

Output: docs/cfg_auto.gif
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

OUT = Path(__file__).parent / "docs" / "cfg_auto.gif"
BG  = "#0a0a15"

# ── Node definitions ──────────────────────────────────────────────────────────
_FAMILY: dict[str, str] = {
    "domain_desc":     "input",
    "prompt_build":    "pipeline",
    "llm_call":        "pipeline",
    "json_parse":      "pipeline",
    "DomainCharter":   "artifact",
    "OpcodeMap":       "artifact",
    "SplitFuseReport": "artifact",
    "RegisterMapping": "artifact",
    "BootstrapSeq":    "artifact",
    "ExOSSpec":        "artifact",
    "EntropyAudit":    "artifact",
    "frob_check":      "control",
    "retry_gate":      "control",
    "IMSCRIB_1":        "bootstrap",
    "AREV_2":          "bootstrap",
    "FSPLIT_3":        "frobenius",
    "AFWD_4":          "bootstrap",
    "FFUSE_5":         "frobenius",
    "CLINK_6":         "bootstrap",
    "IFIX_7":          "bootstrap",
    "IMSCRIB_8":        "bootstrap",
    "Ob3ectArtifact":  "output",
}

_FAMILY_COLOR: dict[str, str] = {
    "input":      "#4e79a7",
    "pipeline":   "#9c59d1",
    "artifact":   "#20b2aa",
    "control":    "#e15759",
    "frobenius":  "#ffd700",
    "bootstrap":  "#f28e2b",
    "output":     "#59a14f",
}

# Short display labels
_LABELS: dict[str, str] = {
    "domain_desc":     "desc",
    "prompt_build":    "prompt",
    "llm_call":        "LLM",
    "json_parse":      "parse",
    "DomainCharter":   "Charter",
    "OpcodeMap":       "Opcodes",
    "SplitFuseReport": "FSPLIT/FFUSE",
    "RegisterMapping": "Registers",
    "BootstrapSeq":    "Bootstrap",
    "ExOSSpec":        "ExOSSpec",
    "EntropyAudit":    "Entropy",
    "frob_check":      "frob?",
    "retry_gate":      "retry",
    "IMSCRIB_1":        "IMSCRIB₁",
    "AREV_2":          "AREV₂",
    "FSPLIT_3":        "FSPLIT₃",
    "AFWD_4":          "AFWD₄",
    "FFUSE_5":         "FFUSE₅",
    "CLINK_6":         "CLINK₆",
    "IFIX_7":          "IFIX₇",
    "IMSCRIB_8":        "IMSCRIB₈",
    "Ob3ectArtifact":  "Ob3ect",
}

EXEC_ORDER: list[str] = [
    "domain_desc", "prompt_build", "llm_call", "json_parse",
    "DomainCharter", "OpcodeMap", "SplitFuseReport", "RegisterMapping",
    "BootstrapSeq", "ExOSSpec", "EntropyAudit",
    "frob_check", "retry_gate",
    "IMSCRIB_1", "AREV_2", "FSPLIT_3", "AFWD_4", "FFUSE_5",
    "CLINK_6", "IFIX_7", "IMSCRIB_8",
    "Ob3ectArtifact",
]

EDGES: list[tuple[str, str]] = [
    ("domain_desc",     "prompt_build"),
    ("prompt_build",    "llm_call"),
    ("llm_call",        "json_parse"),
    ("json_parse",      "DomainCharter"),
    ("json_parse",      "OpcodeMap"),
    ("json_parse",      "SplitFuseReport"),
    ("json_parse",      "RegisterMapping"),
    ("json_parse",      "BootstrapSeq"),
    ("json_parse",      "ExOSSpec"),
    ("json_parse",      "EntropyAudit"),
    ("SplitFuseReport", "frob_check"),
    ("frob_check",      "retry_gate"),
    ("retry_gate",      "llm_call"),        # back-edge: retry on FAIL
    ("frob_check",      "Ob3ectArtifact"),  # success path
    ("DomainCharter",   "Ob3ectArtifact"),
    ("OpcodeMap",       "Ob3ectArtifact"),
    ("SplitFuseReport", "Ob3ectArtifact"),
    ("RegisterMapping", "Ob3ectArtifact"),
    ("BootstrapSeq",    "Ob3ectArtifact"),
    ("ExOSSpec",        "Ob3ectArtifact"),
    ("EntropyAudit",    "Ob3ectArtifact"),
    ("BootstrapSeq",    "IMSCRIB_1"),
    ("IMSCRIB_1",        "AREV_2"),
    ("AREV_2",          "FSPLIT_3"),
    ("FSPLIT_3",        "AFWD_4"),
    ("AFWD_4",          "FFUSE_5"),
    ("FFUSE_5",         "CLINK_6"),
    ("CLINK_6",         "IFIX_7"),
    ("IFIX_7",          "IMSCRIB_8"),
    ("IMSCRIB_8",        "Ob3ectArtifact"),
]

_FROB_NODES = frozenset({"FSPLIT_3", "FFUSE_5", "frob_check", "SplitFuseReport"})
_FROB_EDGES = frozenset(
    (u, v) for u, v in EDGES
    if u in _FROB_NODES or v in _FROB_NODES
)
_RETRY_EDGE = ("retry_gate", "llm_call")

_PULSE_GOLD  = np.array(mcolors.to_rgba("#ffd700"))
_PULSE_WHITE = np.array(mcolors.to_rgba("#ffffff"))
_PULSE_RED   = np.array(mcolors.to_rgba("#e15759"))


def build_graph() -> nx.DiGraph:
    G = nx.DiGraph()
    for n in EXEC_ORDER:
        G.add_node(n, family=_FAMILY[n])
    for u, v in EDGES:
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
    ax.set_title(title, color="white", fontsize=7.5, pad=6)

    nidx = {n: i for i, n in enumerate(EXEC_ORDER)}
    xs = np.array([pos[n][0] for n in EXEC_ORDER])
    ys = np.array([pos[n][1] for n in EXEC_ORDER])

    if revealed is not None:
        for u, v in EDGES:
            if u not in revealed or v not in revealed:
                continue
            is_frob  = (u, v) in _FROB_EDGES
            is_retry = (u, v) == _RETRY_EDGE
            if is_frob:
                col, lw, al = "#ffd700", 2.5, 0.88
            elif is_retry:
                col, lw, al = "#e15759", 2.0, 0.80
            else:
                col, lw, al = "#4a7aaa", 1.0, 0.40
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
                if EXEC_ORDER[idx] in _FROB_NODES:
                    colors[i] = _PULSE_GOLD
                    sizes[i] *= 2.2

        ax.scatter(xs[vis], ys[vis], c=colors, s=sizes,
                   zorder=3, linewidths=0.8, edgecolors="#ffffff44")
        for n in EXEC_ORDER:
            if n in revealed:
                fam = _FAMILY[n]
                tc = "#000000" if fam in ("output", "frobenius") else "#ffffff"
                ax.text(pos[n][0], pos[n][1], _LABELS[n],
                        ha="center", va="center", fontsize=5.0,
                        color=tc, fontweight="bold", zorder=4)

    else:
        dists   = np.abs(np.arange(N) - pulse_center)
        dists   = np.minimum(dists, N - dists)
        weights = np.exp(-0.5 * (dists / pulse_sigma) ** 2)
        active  = {EXEC_ORDER[i] for i in range(N) if weights[i] > 0.3}

        for u, v in EDGES:
            is_frob  = (u, v) in _FROB_EDGES
            is_retry = (u, v) == _RETRY_EDGE
            near     = u in active or v in active
            if is_frob and near:
                col, lw, al = "#ffd700", 3.0, 0.95
            elif is_frob:
                col, lw, al = "#cc9900", 1.8, 0.55
            elif is_retry and near:
                col, lw, al = "#ff6b6b", 2.5, 0.90
            elif is_retry:
                col, lw, al = "#993333", 1.5, 0.50
            elif near:
                col, lw, al = "#9c59d1", 1.5, 0.65
            else:
                col, lw, al = "#3a5f80", 0.7, 0.20
            ax.annotate("", xy=(pos[v][0], pos[v][1]),
                        xytext=(pos[u][0], pos[u][1]),
                        arrowprops=dict(arrowstyle="-|>", color=col, lw=lw, alpha=al),
                        zorder=1)

        blended = np.empty_like(base_colors)
        for i, n in enumerate(EXEC_ORDER):
            w = weights[i]
            if n in _FROB_NODES:
                target = _PULSE_GOLD
            elif _FAMILY[n] == "control":
                target = _PULSE_RED
            else:
                target = _PULSE_WHITE
            blended[i] = base_colors[i] * (1 - w) + target * w
        blended = np.clip(blended, 0, 1)
        sizes = base_sizes + base_sizes * 2.0 * weights

        ax.scatter(xs, ys, c=blended, s=sizes, zorder=3,
                   linewidths=0.8, edgecolors="#ffffff22")
        for n in EXEC_ORDER:
            fam = _FAMILY[n]
            tc = "#000000" if fam in ("output", "frobenius") else "#ffffff"
            ax.text(pos[n][0], pos[n][1], _LABELS[n],
                    ha="center", va="center", fontsize=5.0,
                    color=tc, fontweight="bold", zorder=4)


def fig_to_pil(fig, dpi):
    buf = io.BytesIO()
    fig.savefig(buf, format="png", dpi=dpi, facecolor=BG, bbox_inches="tight")
    buf.seek(0)
    return Image.open(buf).copy()


def main(build_frames=50, flow_frames=80, fps=15, dpi=110):
    G = build_graph()
    print(f"  Pipeline: {G.number_of_nodes()} nodes, {G.number_of_edges()} edges")

    pos_raw = nx.spring_layout(G, k=0.45, iterations=400, seed=7)
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
        180 if _FAMILY[n] in ("frobenius", "output") else
        100 + 60 * (np.log1p(degrees.get(n, 1)) / np.log1p(max_deg)) ** 1.5
        for n in EXEC_ORDER
    ], dtype=float)

    # Frobenius pair closes when FFUSE_5 is first revealed
    frob_close_idx  = EXEC_ORDER.index("FFUSE_5")
    pulse_sigma     = max(3, N // 6)
    pulse_centers   = np.linspace(0, N - 1, flow_frames).astype(int)
    total_frames    = build_frames + flow_frames

    print(f"  Rendering cfg_auto.gif ({total_frames} frames) …")
    fig, ax = plt.subplots(figsize=(11, 11), facecolor=BG)
    frames_pil = []

    for f in range(total_frames):
        print(f"\r  {(f+1)/total_frames*100:5.1f}%", end="", flush=True)

        if f < build_frames:
            frac     = (f + 1) / build_frames
            k        = max(1, int(frac * N))
            revealed = set(EXEC_ORDER[:k])
            flash    = k - 1 == frob_close_idx
            cur      = EXEC_ORDER[k - 1]
            title = (
                f"Ob3ect — auto.py Pipeline | stage: {_LABELS[cur]} | "
                f"{'FFUSE(FSPLIT(x))=x ↯' if flash else _FAMILY[cur]}"
            )
            render_frame(ax, pos, base_colors, base_sizes,
                         revealed, flash, None, pulse_sigma, N, title)
        else:
            fi     = f - build_frames
            center = pulse_centers[fi]
            n_at   = EXEC_ORDER[center]
            title  = (
                f"Ob3ect — auto.py Pipeline | wave: {_LABELS[n_at]} [{_FAMILY[n_at]}] | "
                f"μ∘δ = id · retry on FAIL"
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
