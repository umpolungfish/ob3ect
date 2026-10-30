#!/usr/bin/env python3
"""
Complete 2D Cross-Section Plotter for mOMonadOS Kernel Geometry
================================================================
Improved: CLI args, vector output, proper legend handles, main guard.
Synopsis:
  python plotter.py [--output path] [--dpi 300] [--format png|svg|pdf] [--title "..."]

Geometry: horn torus (R=r=2), λ_C split shell, evaluator sphere at x=1,
FFUSE3 coupler, A₂ carved ring triangle, φ-tangent loci, syzygy axis,
1:1:2 weighted resultant, UCFm constants.
"""
import argparse, os, sys
import matplotlib
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.lines as mlines
import matplotlib.patches as mpatches

# ─── Constants ──────────────────────────────────────────────────
R = 2.0; r_split = 1.0; sqrt2 = np.sqrt(2); sqrt3 = np.sqrt(3)
phi = (1 + np.sqrt(5)) / 2; inv_phi = 1 / phi; LR = R / 2

EVALT = np.array([1.0, 1.0, 0.0]); EVALF = np.array([1.0, -0.5, sqrt3/2])
EVALI = np.array([1.0, -0.5, -sqrt3/2])
tG_pos = np.arccos(inv_phi); tG_neg = -np.arccos(inv_phi)

# ─── Colour palette ─────────────────────────────────────────────
GREEN  = '#009E73'; BLUE  = '#0072B2'; GOLD  = '#E69F00'
ORANGE = '#E69F00'; PURPLE= '#CC79A7'; CYAN  = '#56B4E9'
GREY   = '#888888'; WHITE = '#ffffff'; SLATE = '#9AA7B4'
RED    = '#D55E00'; DARK  = '#0a0a0a'

def horn_xy(t):
    return np.array([(R + R*np.cos(t))*np.cos(t), (R + R*np.cos(t))*np.sin(t)])

phi_tan_plus = horn_xy(tG_pos); phi_tan_minus = horn_xy(tG_neg)
horn_0 = horn_xy(0.0); theta = np.linspace(0, 2*np.pi, 500)

# ─── Geometry ───────────────────────────────────────────────────
root_0 = (2*R, 0.0); r1, r2 = 2*np.pi/3, 4*np.pi/3
root_1 = (2*R*np.cos(r1), 2*R*np.sin(r1))
root_2 = (2*R*np.cos(r2), 2*R*np.sin(r2))

tri_verts = np.array([(EVALT[0], EVALT[1]), (EVALF[0], EVALF[1]),
                       (EVALI[0], EVALI[1])])

arev_angle = 1.71; ifix_angle = 0.283; tanch_angle = 2.855
arev_pt = horn_xy(arev_angle); ifix_pt = horn_xy(ifix_angle)
tanch_pt = horn_xy(tanch_angle)


def build_plot(output_path, dpi=300, fmt='png', title=None):
    """Construct and save the kernel cross-section figure."""
    matplotlib.use('Agg')
    fig, ax = plt.subplots(figsize=(20, 12))
    ax.set_aspect('equal'); ax.set_facecolor(DARK); fig.patch.set_facecolor(DARK)

    # ═══════════════════════════════════════════════════════════
    # LAYER 1 — Outer equator + horn torus ring
    # ═══════════════════════════════════════════════════════════
    ax.plot(2*R*np.cos(theta), 2*R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.35)
    horn_proj = np.array([horn_xy(t) for t in np.linspace(0, 2*np.pi, 600)])
    ax.plot(horn_proj[:,0], horn_proj[:,1], color=SLATE, lw=2.0, alpha=0.45)

    # ═══════════════════════════════════════════════════════════
    # LAYER 2 — λ_C split shell + meridian curvature
    # ═══════════════════════════════════════════════════════════
    ax.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
    ax.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)
    ax.annotate(r'$\pi$ (meridian curvature)', xy=(0.0, 1.2), xytext=(-1.0, 1.8),
                color=SLATE, arrowprops=dict(arrowstyle='->', color=SLATE, lw=1),
                fontsize=9, fontweight='bold', alpha=0.8)

    # ═══════════════════════════════════════════════════════════
    # LAYER 3 — Evaluator sphere cross-section
    # ═══════════════════════════════════════════════════════════
    ax.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

    # ═══════════════════════════════════════════════════════════
    # LAYER 4 — FFUSE3 coupler + gear annotation
    # ═══════════════════════════════════════════════════════════
    ax.plot([0, 2*r_split], [0, 0], color=WHITE, lw=3)
    ax.annotate('bevel gear 4:1  (R:r = 2:0.5)  ⟹ gear=4',
                xy=(1.0, 0.08), xytext=(3.0, 1.2),
                arrowprops=dict(arrowstyle='->', color=WHITE, lw=1.2),
                color=WHITE, fontsize=10, ha='center', va='bottom', style='italic')

    # ═══════════════════════════════════════════════════════════
    # LAYER 5 — Key nodes
    # ═══════════════════════════════════════════════════════════
    origin = (0.0, 0.0); fuse_tip = (2.0, 0.0)
    eval_t_proj = (EVALT[0], EVALT[1]); eval_fi_proj = (EVALF[0], EVALF[1])
    mixed_pt = (LR, 0.0)

    ax.scatter(*origin, color=GOLD, s=300, zorder=10, edgecolors=WHITE, lw=1.5)
    ax.scatter(*fuse_tip, color=BLUE, s=180, zorder=10, edgecolors=WHITE, lw=1)
    ax.scatter(*eval_t_proj, color=BLUE, s=140, zorder=10)
    ax.scatter(*eval_fi_proj, color=RED, s=140, zorder=10)
    ax.scatter(*mixed_pt, color=WHITE, s=80, zorder=10, marker='s',
               edgecolors=WHITE, facecolors='none', lw=1.5)
    ax.scatter(*horn_0, color=PURPLE, s=140, zorder=9, marker='D',
               edgecolors=WHITE, lw=1, alpha=0.8)

    # EVALI ring overlay
    ax.scatter(*eval_fi_proj, color=GOLD, s=180, zorder=9,
               edgecolors=WHITE, lw=1.5, alpha=0.4)

    # A₂ roots on outer equator
    for r_pt in [root_0, root_1, root_2]:
        ax.scatter(*r_pt, color=GREEN, s=120)

    # φ-tangent loci
    for pt in [phi_tan_plus, phi_tan_minus]:
        ax.scatter(*pt, color=WHITE, s=120, zorder=11, edgecolors=GOLD, lw=2)

    # ═══════════════════════════════════════════════════════════
    # Node labels
    # ═══════════════════════════════════════════════════════════
    ax.text(origin[0]-0.35, origin[1]-0.45, '⊙ (pinch)', color=GOLD,
            fontsize=10, fontweight='bold', ha='right', va='top')
    ax.text(fuse_tip[0]+0.1, fuse_tip[1]-0.40, '∋ FFUSE3', color=BLUE,
            fontsize=9, fontweight='bold', ha='left')
    ax.text(eval_t_proj[0]+0.2, eval_t_proj[1]+0.20, '+ EVALT', color=BLUE,
            fontsize=9, fontweight='bold', ha='left')
    ax.text(eval_fi_proj[0]+0.2, eval_fi_proj[1]-0.28, '× EVALF\n⊞ EVALI',
            color=RED, fontsize=8, fontweight='bold', ha='left')
    ax.text(mixed_pt[0]+0.2, mixed_pt[1]-0.35, '(1,0,0) tangency',
            color=WHITE, fontsize=7.5, ha='left', va='top', alpha=0.7)
    ax.text(horn_0[0]+0.1, horn_0[1]-0.55, 'horn(0) ● balance\n(syzygy)',
            color=PURPLE, fontsize=9, fontweight='bold', ha='left')

    # A₂ root labels
    for pt, sign, a in [(root_0, 'n₊=+1', 0.0), (root_1, 'n₋', r1), (root_2, 'n₋', r2)]:
        r_out = 2*R + 0.55
        ax.text(r_out*np.cos(a), r_out*np.sin(a), sign,
                color=GREEN, fontsize=8.5, fontweight='bold', ha='center', va='center')

    # φ-tangent leader lines
    for pt, ang, side in [(phi_tan_plus, tG_pos, 1), (phi_tan_minus, tG_neg, -1)]:
        tx, ty = -5.3, side * 5.0
        ax.plot([pt[0], tx], [pt[1], ty], color=GOLD, lw=0.8, alpha=0.5)
        ax.text(tx, ty,
                f'φ-tangent\ncos(t)=1/φ≈{inv_phi:.3f}\nt={ang:+.3f} rad',
                color=WHITE, fontsize=8, fontweight='bold',
                ha='left', va='center',
                bbox=dict(facecolor=DARK, edgecolor=GOLD, alpha=0.85, pad=3))    # ═══════════════════════════════════════════════════════════════
    # LAYER 6 — A₂ carved ring triangle
    # ═══════════════════════════════════════════════════════════════
    for (x1,y1),(x2,y2) in [(root_0,root_1),(root_1,root_2),(root_2,root_0)]:
        ax.plot([x1,x2],[y1,y2], color=GREEN, lw=3)
    ax.text(-0.8, -5.4,
            'A₂ root system:  n₊−n₋ = −1  (2 positive + 1 negative root)',
            color=GREEN, fontsize=10, ha='center', fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 7 — Evaluator A₂ triangle (plane x=1)
    # ═══════════════════════════════════════════════════════════════
    ax.fill(tri_verts[:,0], tri_verts[:,1], color=GREEN, alpha=0.18, zorder=5)
    for i in range(3):
        j = (i+1)%3
        ax.plot([tri_verts[i,0], tri_verts[j,0]], [tri_verts[i,1], tri_verts[j,1]],
                color=GREEN, lw=2.5, zorder=6, alpha=0.85)

    # 1:1:2 weighting + tilt annotation
    ax.text(1.25, -0.7, '1:1:2 (T:F:I)  ⟹  tilt = 14.036°',
            color=GOLD, fontsize=9, fontweight='bold', ha='left')
    tilt_angle = np.arctan(1/4); arc_radius = 0.6
    arc_thetas = np.linspace(0, tilt_angle, 30)
    ax.plot(arc_radius*np.cos(arc_thetas), arc_radius*np.sin(arc_thetas),
            color=GOLD, lw=2, alpha=0.8)
    ax.text(arc_radius*0.8*np.cos(tilt_angle/2),
            arc_radius*0.8*np.sin(tilt_angle/2)+0.1,
            r'$\theta = \arctan(1/4)$', color=GOLD, fontsize=9, ha='center')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 8 — Distance annotations (√2, √3, 2)
    # ═══════════════════════════════════════════════════════════════
    ax.plot([0, eval_t_proj[0]], [0, eval_t_proj[1]], color='#aaffcc', ls=':', lw=1.8)
    ax.text(eval_t_proj[0]/2-0.55, eval_t_proj[1]/2+0.05, '√2',
            color=GREEN, fontsize=14, fontweight='bold', ha='right')
    mid_e = ((eval_t_proj[0]+eval_fi_proj[0])/2, (eval_t_proj[1]+eval_fi_proj[1])/2)
    ax.text(mid_e[0], mid_e[1]+0.22, '√3 (3D)', color=GREEN, fontsize=14,
            ha='center', va='bottom', fontweight='bold')
    ax.text(1.0, -0.22, '2', color=CYAN, fontsize=15, fontweight='bold', ha='center')
    ax.text(0.5, -0.22, 'λ_C', color=ORANGE, fontsize=14, fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 9 — Resultant vectors (unweighted vs weighted 1:1:2)
    # ═══════════════════════════════════════════════════════════════
    scale = 2.4; uw_dir = np.array([3.0, 0.0]); uw_n = np.linalg.norm(uw_dir)
    w_dir = np.array([4.0, -0.5]); w_n = np.linalg.norm(w_dir)
    ax.arrow(0, 0, uw_dir[0]/uw_n*scale, uw_dir[1]/uw_n*scale,
             head_width=0.12, head_length=0.15, fc=GREY, ec=GREY, ls='--', lw=2.5)
    ax.arrow(0, 0, w_dir[0]/w_n*scale, w_dir[1]/w_n*scale,
             head_width=0.12, head_length=0.15, fc=GOLD, ec=GOLD, lw=2.5, zorder=8)
    tx_ = w_dir[0]/w_n*scale*0.55; ty_ = w_dir[1]/w_n*scale*0.55
    ax.annotate('14.036° tilt\n(1:1:2 weighted, B4+SIXTEEN_3)',
                xy=(tx_, ty_), xytext=(4.5, -3.5),
                arrowprops=dict(arrowstyle='->', color=GOLD, lw=1.5),
                color=GOLD, fontsize=10, fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 10 — Syzygy axis + R0 bus chords
    # ═══════════════════════════════════════════════════════════════
    ax.plot([0, horn_0[0]], [0, horn_0[1]], color=PURPLE, ls='--', lw=2, alpha=0.7)
    for pt_a, pt_b, lbl in [(arev_pt, ifix_pt, 'R0 bus'), (arev_pt, tanch_pt, None)]:
        ax.plot([pt_a[0], pt_b[0]], [pt_a[1], pt_b[1]], color=CYAN, ls='--', lw=1.5, alpha=0.7)
        if lbl:
            mid = (pt_a+pt_b)/2 + np.array([0, 0.35])
            ax.text(mid[0], mid[1], lbl, color=CYAN, fontsize=8, fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 11 — μ∘δ identity annotation
    # ═══════════════════════════════════════════════════════════════
    ax.annotate('μ∘δ = id', xy=(0.3, 0.3), xytext=(0.6, 0.65),
                arrowprops=dict(arrowstyle='->', color=GOLD, lw=1.8),
                fontsize=10, color=GOLD, fontweight='bold',
                bbox=dict(facecolor=DARK, edgecolor=GOLD, alpha=0.8, pad=3))

    # ═══════════════════════════════════════════════════════════════
    # LAYER 12 — CLINK→⊙ / IFIX→⊙ identity arcs (quadratic bezier)
    # ═══════════════════════════════════════════════════════════════
    for angle, lbl, col in [(np.pi/3, 'CLINK→⊙', '#39FF14'), (-np.pi/4, 'IFIX→⊙', '#39FF14')]:
        st_pt = horn_xy(angle); ctrl = np.array([st_pt[0]*0.4, st_pt[1]*0.4+0.5])
        arc_t = np.linspace(0, 1, 60)
        arc_pts = np.array([(1-t)**2*st_pt + 2*(1-t)*t*ctrl + t**2*np.array([0.0,0.0])
                            for t in arc_t])
        ax.plot(arc_pts[:,0], arc_pts[:,1], color=col, ls=':', lw=1.5, alpha=0.6)
        ax.text(ctrl[0]+0.2, ctrl[1]+0.1, lbl, color=col, fontsize=8, fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 13 — 16 poloidal ring projections
    # ═══════════════════════════════════════════════════════════════
    for i in range(16):
        u = i/16*2*np.pi; rc = np.array([R*np.cos(u), R*np.sin(u)])
        ax.plot([(R-r_split)*rc[0]/R, (R+r_split)*rc[0]/R],
                [(R-r_split)*rc[1]/R, (R+r_split)*rc[1]/R],
                color='#5a659c', lw=0.5, alpha=0.2)

    # ═══════════════════════════════════════════════════════════════
    # LAYER 14 — Impact parameter b
    # ═══════════════════════════════════════════════════════════════
    ax.plot([0.5, 0.5], [0, 1.0], color=CYAN, ls=':', lw=2, alpha=0.7)
    ax.text(0.75, 0.5, 'b=1\n(impact)', color=CYAN, fontsize=9, fontweight='bold')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 15 — Vessel/contents volume annotation
    # ═══════════════════════════════════════════════════════════════
    ax.text(0.2, -4.8,
            r'Vessel / Contents = $\mathbf{12\pi}$' + '\n'
            r'Horn torus: $16\pi^2$ ≈ 157.9' + '\n'
            r'FSPLIT3 sphere: $4\pi/3$ ≈ 4.19',
            color=GREEN, fontsize=11, fontweight='bold', ha='left', va='bottom')

    # ═══════════════════════════════════════════════════════════════
    # LAYER 16 — Quadratic form (horn torus)
    # ═══════════════════════════════════════════════════════════════
    ax.text(-5.3, 5.3,
            r'Horn torus (R=r=2):' + '\n'
            r'$(x^2+y^2+z^2+R^2-r^2)^2 = 4R^2(x^2+y^2)$' + '\n'
            r'$R=r \Rightarrow$ pinch at origin',
            color=SLATE, fontsize=9, ha='left', va='top',
            bbox=dict(facecolor=DARK, edgecolor=SLATE, alpha=0.7, pad=4))    # ═══════════════════════════════════════════════════════════════
    # LAYER 17 — UCFm constants box
    # ═══════════════════════════════════════════════════════════════
    ucfm_text = (
        r"$\mathbf{UCFm\;Constants}$" + "\n"
        r"$\alpha^{-1} = 144-7 + \arctan(1/4)/(4\sqrt{3}) = 137.035999$" + "\n"
        r"$\sin^2\theta_W = 3/13 = 0.230769$" + "\n"
        r"$m_p/m_e = 1836.152$" + "\n"
        r"$m_\mu/m_e = 206.769$" + "\n"
        r"$m_\tau/m_e = 3476.785$" + "\n"
        r"$m_W/m_p = 85.699$" + "\n"
        r"$m_Z/m_p = 97.715$" + "\n"
        r"$m_H/m_p = 133.699$" + "\n"
        r"$\alpha_s/\alpha = 16$" + "\n"
        r"Gear ratio = 4"
    )
    ax.text(4.8, 5.2, ucfm_text, color=WHITE, fontsize=8,
            ha='left', va='top',
            bbox=dict(facecolor='#1a1a1a', edgecolor=GOLD, alpha=0.9, pad=6))

    # ═══════════════════════════════════════════════════════════════
    # STYLING
    # ═══════════════════════════════════════════════════════════════
    ax.set_xlim(-5.8, 5.8); ax.set_ylim(-5.8, 5.8)
    ax.set_title(title or (
        'mOMonadOS Kernel Geometry — 2D Cross-Section (z=0 plane)'
    ), color=WHITE, fontsize=20, pad=22, fontweight='bold')
    ax.text(0.5, 1.01,
            'Horn torus (R=r=2) · r_split=λ_C=1 · A₂ carved ring · '
            'Syzygy axis · φ-tangent loci · Vessel/Contents=12π · '
            '1:1:2 weighted resultant · UCFm constants',
            transform=ax.transAxes, ha='center', color=SLATE, fontsize=10)
    ax.tick_params(colors=WHITE)
    for s in ['bottom','top','left','right']:
        ax.spines[s].set_color(WHITE)
    ax.grid(True, ls='--', alpha=0.12)

    # ═══════════════════════════════════════════════════════════════
    # LEGEND — uses proper Line2D handles (no empty plot() stubs)
    # ═══════════════════════════════════════════════════════════════
    leg_handles = [
        mlines.Line2D([],[], color='#5a659c', lw=2.5, alpha=0.35,
                      label='Horn Torus Outer Equator (R=r=2, z=0)'),
        mlines.Line2D([],[], color=ORANGE, ls='--', lw=2,
                      label='FSPLIT3 split shell (r_split = λ_C)'),
        mlines.Line2D([],[], color=BLUE, ls='--', lw=2,
                      label='Evaluator sphere (x=1, r=1)'),
        mlines.Line2D([],[], color=WHITE, lw=3,
                      label='FFUSE3 coupler (length 2, bevel gear 4:1)'),
        mlines.Line2D([],[], marker='o', color=GOLD, markersize=12,
                      markeredgecolor=WHITE, markeredgewidth=1.5, linestyle='None',
                      label='⊙ IMSCRIB (pinch, identity)'),
        mlines.Line2D([],[], marker='o', color=BLUE, markersize=10,
                      markeredgecolor=WHITE, markeredgewidth=1, linestyle='None',
                      label='∋ FFUSE3 tip'),
        mlines.Line2D([],[], marker='o', color=BLUE, markersize=8, linestyle='None',
                      label='+ EVALT (Truth)'),
        mlines.Line2D([],[], marker='o', color=RED, markersize=8, linestyle='None',
                      label='× EVALF / ⊞ EVALI (F/I, projection)'),
        mlines.Line2D([],[], marker='s', color=WHITE, markersize=6,
                      markerfacecolor='none', markeredgecolor=WHITE,
                      markeredgewidth=1.5, linestyle='None',
                      label='(1,0,0) mixed-state tangency (unoccupied)'),
        mlines.Line2D([],[], marker='o', color=GREEN, markersize=8, linestyle='None',
                      label='A₂ roots (on outer equator, r=4)'),
        mlines.Line2D([],[], color=GREEN, lw=3,
                      label='A₂ carved ring triangle (outer equator)'),
        mlines.Line2D([],[], color=GREEN, lw=2.5, alpha=0.85,
                      label='Evaluator A₂ triangle (plane x=1)'),
        mlines.Line2D([],[], color='#aaffcc', ls=':', lw=1.8,
                      label='Distance annotation chord (√2, √3, 2)'),
        mlines.Line2D([],[], color=GREY, ls='--', lw=2.5,
                      label='Unweighted resultant (1:1:1, 0° tilt)'),
        mlines.Line2D([],[], color=GOLD, lw=2.5,
                      label='Weighted resultant (1:1:2, 14.036° tilt)'),
        mlines.Line2D([],[], color=PURPLE, ls='--', lw=2, alpha=0.7,
                      label='Syzygy axis: ⊙→∋→horn(0)'),
        mlines.Line2D([],[], marker='D', color=PURPLE, markersize=8,
                      markeredgecolor=WHITE, markeredgewidth=1, linestyle='None',
                      label='horn(0) = (4,0) — balanced syzygy target'),
        mlines.Line2D([],[], color=SLATE, lw=2.0, alpha=0.45,
                      label='(1,1) horn(t) ring projection'),
        mlines.Line2D([],[], marker='o', color=WHITE, markersize=8,
                      markeredgecolor=GOLD, markeredgewidth=2, linestyle='None',
                      label='φ-tangent loci: cos(t) = 1/φ'),
    ]

    # Single legend, two-column layout outside axes
    ncol = 2
    leg = ax.legend(handles=leg_handles, loc='center left',
                    bbox_to_anchor=(1.02, 0.5), fontsize=7.5,
                    facecolor='#1a1a1a', edgecolor=WHITE,
                    labelspacing=0.25, handlelength=1.5, handletextpad=0.5,
                    ncol=ncol, columnspacing=1.0)
    for text in leg.get_texts():
        text.set_color(WHITE)

    # ═══════════════════════════════════════════════════════════════
    # SAVE
    # ═══════════════════════════════════════════════════════════════
    plt.tight_layout(pad=1.0)
    plt.savefig(output_path, dpi=dpi, bbox_inches='tight', facecolor=DARK)
    fsize = os.path.getsize(output_path)
    print(f"✅ Saved '{output_path}' ({fsize} bytes, {fsize/1024:.1f} KB, {fmt.upper()})")
    plt.close(fig)
    return output_path


def cli():
    parser = argparse.ArgumentParser(
        description='mOMonadOS Kernel Geometry — 2D Cross-Section Plotter')
    parser.add_argument('--output', '-o',
                        default='/home/mrnob0dy666/imsgct/ob3ect/kernel_cross_section.png',
                        help='Output path')
    parser.add_argument('--dpi', type=int, default=300, help='Resolution (default: 300)')
    parser.add_argument('--format', '-f', choices=['png','svg','pdf'], default='png',
                        help='Output format (default: png)')
    parser.add_argument('--title', '-t', default=None, help='Figure title')
    args = parser.parse_args()

    # Auto-derive extension from format if not set in output path
    out = args.output
    if not out.lower().endswith(('.png','.svg','.pdf')):
        out = os.path.splitext(out)[0] + '.' + args.format

    matplotlib.use('Agg')
    build_plot(out, dpi=args.dpi, fmt=args.format, title=args.title)


if __name__ == '__main__':
    cli()