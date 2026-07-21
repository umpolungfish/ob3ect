#!/usr/bin/env python3
"""
Complete 2D Cross-Section Plotter for mOMonadOS Kernel Geometry
===============================================================
Derived from kernel_3d_visualizer_3.html — all geometric relationships
present in the 3D visualizer are rendered in 2D (z=0 plane).

LABEL STRATEGY (v2 — de-overlapped):
  - Legend outside plot area (right margin, two-column) — frees geometry.
  - Annotation boxes moved to plot margins with thin leader lines.
  - φ-tangent labels → left/right margins with arrow leaders.
  - Distance annotations (√2, √3, 2) → chord midpoints, not nodes.
  - Node labels offset carefully away from dense geometry clusters.
  - Volume ratio → bottom margin. Quadratic form → top-right margin.
  - Syzygy/horn(0) label → below the balanced point.
  - Improved figure size to accommodate external legend.
"""
import matplotlib
matplotlib.use('Agg')
import numpy as np
import matplotlib.pyplot as plt

# ─── Constants ──────────────────────────────────────────────────
R = 2.0
r_split = 1.0
sqrt2 = np.sqrt(2)
sqrt3 = np.sqrt(3)
phi = (1 + np.sqrt(5)) / 2
inv_phi = 1 / phi
LR = R / 2  # evaluator radius

EVALT = np.array([1.0, 1.0, 0.0])
EVALF = np.array([1.0, -0.5, sqrt3/2])
EVALI = np.array([1.0, -0.5, -sqrt3/2])

tG_pos = np.arccos(inv_phi)
tG_neg = -np.arccos(inv_phi)

def horn_xy(t):
    return np.array([(R + R*np.cos(t))*np.cos(t),
                     (R + R*np.cos(t))*np.sin(t)])

phi_tan_plus = horn_xy(tG_pos)
phi_tan_minus = horn_xy(tG_neg)
horn_0 = horn_xy(0.0)

# ─── Colour palette ─────────────────────────────────────────────
GREEN  = '#009E73'; BLUE   = '#0072B2'
GOLD   = '#E69F00'; ORANGE = '#E69F00'
PURPLE = '#CC79A7'; CYAN   = '#56B4E9'
GREY   = '#888888'; WHITE  = '#ffffff'; SLATE  = '#9AA7B4'

# ─── Create plot — wider for external legend ─────────────────────
fig, ax = plt.subplots(figsize=(19, 12))
ax.set_aspect('equal')
ax.set_facecolor('#0a0a0a')
fig.patch.set_facecolor('#0a0a0a')

theta = np.linspace(0, 2*np.pi, 500)

# ══════════════════════════════════════════════════════════════════
# LAYER 1 — HORN TORUS OUTER EQUATOR
# ══════════════════════════════════════════════════════════════════
L1, = ax.plot(2*R*np.cos(theta), 2*R*np.sin(theta),
              color='#5a659c', linewidth=2.5, alpha=0.35)

# ══════════════════════════════════════════════════════════════════
# LAYER 2 — λ_C SPLIT SHELL + TILTED CIRCLE (3D depth cue)
# ══════════════════════════════════════════════════════════════════
L2, = ax.plot(r_split*np.cos(theta), r_split*np.sin(theta),
              color=ORANGE, linestyle='--', linewidth=2)
ax.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5,
        color=ORANGE, linestyle=':', linewidth=1, alpha=0.35)

# ══════════════════════════════════════════════════════════════════
# LAYER 3 — EVALUATOR SPHERE CROSS-SECTION
# ══════════════════════════════════════════════════════════════════
L3, = ax.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta),
              color=BLUE, linestyle='--', linewidth=2)

# ══════════════════════════════════════════════════════════════════
# LAYER 4 — FFUSE3 COUPLER (bevel gear 4:1)
# ══════════════════════════════════════════════════════════════════
L4, = ax.plot([0, 2*r_split], [0, 0], color=WHITE, linewidth=3)
ax.annotate('bevel gear 4:1  (R:r = 2:0.5)',
            xy=(1.0, 0.08), xytext=(3.0, 1.0),
            arrowprops=dict(arrowstyle='->', color=WHITE, lw=1.2),
            color=WHITE, fontsize=9, ha='center', va='bottom',
            style='italic')

# ══════════════════════════════════════════════════════════════════
# LAYER 5 — KEY NODES
# ══════════════════════════════════════════════════════════════════
origin   = (0.0, 0.0)
fuse_tip = (2.0, 0.0)
eval_t_proj  = (EVALT[0], EVALT[1])
eval_fi_proj = (EVALF[0], EVALF[1])
mixed_pt     = (LR, 0.0)

ax.scatter(*origin,       color=GOLD, s=300, zorder=10,
           edgecolors=WHITE, linewidths=1.5)
ax.scatter(*fuse_tip,     color=BLUE, s=180, zorder=10,
           edgecolors=WHITE, linewidths=1)
L5a, = ax.plot([], [], 'o', color=GOLD, markersize=12, markeredgecolor=WHITE,
               markeredgewidth=1.5)
L5b, = ax.plot([], [], 'o', color=BLUE, markersize=10, markeredgecolor=WHITE,
               markeredgewidth=1)
ax.scatter(*eval_t_proj,  color=BLUE, s=140, zorder=10)
L5c, = ax.plot([], [], 'o', color=BLUE, markersize=8)
ax.scatter(*eval_fi_proj, color='#D55E00', s=140, zorder=10)
L5d, = ax.plot([], [], 'o', color='#D55E00', markersize=8)
ax.scatter(*mixed_pt,     color=WHITE, s=80, zorder=10, marker='s',
           edgecolors=WHITE, facecolors='none', linewidths=1.5)
L5e, = ax.plot([], [], 's', color=WHITE, markersize=6, markerfacecolor='none',
               markeredgecolor=WHITE, markeredgewidth=1.5)

# Node labels — offset carefully to avoid geometry
ax.text(origin[0]-0.35, origin[1]-0.45, '⊙ (pinch)', color=GOLD,
        fontsize=10, fontweight='bold', ha='right', va='top')
ax.text(fuse_tip[0]+0.1, fuse_tip[1]-0.40, '∋ FFUSE3', color=BLUE,
        fontsize=9, fontweight='bold', ha='left')
ax.text(eval_t_proj[0]+0.2, eval_t_proj[1]+0.20, '+ EVALT', color=BLUE,
        fontsize=9, fontweight='bold', ha='left')
ax.text(eval_fi_proj[0]+0.2, eval_fi_proj[1]-0.28, '× EVALF\n⊞ EVALI',
        color='#D55E00', fontsize=8, fontweight='bold', ha='left')
ax.text(mixed_pt[0]+0.2, mixed_pt[1]-0.35, '(1,0,0)\nunoccupied',
        color=WHITE, fontsize=7.5, ha='left', va='top', alpha=0.7)

# A₂ roots on outer equator (radius 4)
root_0 = (2*R, 0.0)
root_1 = (2*R*np.cos(2*np.pi/3), 2*R*np.sin(2*np.pi/3))
root_2 = (2*R*np.cos(4*np.pi/3), 2*R*np.sin(4*np.pi/3))
for r_pt in [root_0, root_1, root_2]:
    ax.scatter(*r_pt, color=GREEN, s=120)
L5f, = ax.plot([], [], 'o', color=GREEN, markersize=8)

# A₂ root labels — radially outward
for pt, sign, a in [(root_0, 'n₊=+1', 0.0),
                      (root_1, 'n₋', 2*np.pi/3),
                      (root_2, 'n₋', 4*np.pi/3)]:
    r_out = 2*R + 0.55
    ax.text(r_out*np.cos(a), r_out*np.sin(a), sign,
            color=GREEN, fontsize=8.5, fontweight='bold',
            ha='center', va='center')

# ══════════════════════════════════════════════════════════════════
# LAYER 6 — A₂ CARVED RING TRIANGLE
# ══════════════════════════════════════════════════════════════════
L6, = ax.plot([root_0[0], root_1[0]], [root_0[1], root_1[1]],
              color=GREEN, linewidth=3)
ax.plot([root_1[0], root_2[0]], [root_1[1], root_2[1]],
        color=GREEN, linewidth=3)
ax.plot([root_2[0], root_0[0]], [root_2[1], root_0[1]],
        color=GREEN, linewidth=3)

# A₂ index — bottom margin
ax.text(-0.8, -5.4,
        'A₂ root system:  n₊−n₋ = −1  (2 positive + 1 negative root)',
        color=GREEN, fontsize=10, ha='center', fontweight='bold')

# ══════════════════════════════════════════════════════════════════
# LAYER 7 — EVALUATOR A₂ TRIANGLE (plane x=1)
# ══════════════════════════════════════════════════════════════════
tri_verts = np.array([eval_t_proj, eval_fi_proj, (EVALI[0], EVALI[1])])
ax.fill(tri_verts[:,0], tri_verts[:,1], color=GREEN, alpha=0.18, zorder=5)
L7, = ax.plot([], [], color=GREEN, linewidth=2.5, alpha=0.85)
for i in range(3):
    j = (i+1) % 3
    ax.plot([tri_verts[i,0], tri_verts[j,0]], [tri_verts[i,1], tri_verts[j,1]],
            color=GREEN, linewidth=2.5, zorder=6, alpha=0.85)

# ══════════════════════════════════════════════════════════════════
# LAYER 8 — DISTANCE ANNOTATIONS (√2, √3, 2)
# ══════════════════════════════════════════════════════════════════
# ⊙ → EVALT chord (√2) — label at midpoint
ax.plot([0, eval_t_proj[0]], [0, eval_t_proj[1]],
        color='#aaffcc', linestyle=':', linewidth=1.8)
ax.text(eval_t_proj[0]/2-0.55, eval_t_proj[1]/2+0.05, '√2',
        color=GREEN, fontsize=14, fontweight='bold', ha='right')
L8a, = ax.plot([], [], ':', color='#aaffcc', linewidth=1.8)

# Evaluator–evaluator chord (√3 in 3D)
mid_e = ((eval_t_proj[0]+eval_fi_proj[0])/2,
         (eval_t_proj[1]+eval_fi_proj[1])/2)
ax.text(mid_e[0], mid_e[1]+0.22, '√3 (3D)',
        color=GREEN, fontsize=14, ha='center', va='bottom',
        fontweight='bold')

# ⊙ → FFUSE3 (2)
ax.text(1.0, -0.22, '2', color=CYAN, fontsize=15,
        fontweight='bold', ha='center')

# λ_C label
ax.text(0.5, -0.22, 'λ_C', color=ORANGE, fontsize=14,
        fontweight='bold')

# ══════════════════════════════════════════════════════════════════
# LAYER 9 — RESULTANT VECTORS (unweighted vs weighted 1:1:2)
# ══════════════════════════════════════════════════════════════════
scale = 2.4

uw_dir = np.array([3.0, 0.0]); uw_n = np.linalg.norm(uw_dir)
w_dir  = np.array([4.0, -0.5]); w_n  = np.linalg.norm(w_dir)

ax.arrow(0, 0, uw_dir[0]/uw_n*scale, uw_dir[1]/uw_n*scale,
         head_width=0.12, head_length=0.15, fc=GREY, ec=GREY,
         linestyle='--', linewidth=2.5)
L9a, = ax.plot([], [], '--', color=GREY, linewidth=2.5)

ax.arrow(0, 0, w_dir[0]/w_n*scale, w_dir[1]/w_n*scale,
         head_width=0.12, head_length=0.15, fc=GOLD, ec=GOLD,
         linewidth=2.5, zorder=8)
L9b, = ax.plot([], [], '-', color=GOLD, linewidth=2.5)

# Tilt annotation → right margin
tx_ = w_dir[0]/w_n*scale*0.55; ty_ = w_dir[1]/w_n*scale*0.55
ax.annotate('14.036° tilt\n(1:1:2 weighted, B4+SIXTEEN_3)',
            xy=(tx_, ty_), xytext=(4.5, -3.5),
            arrowprops=dict(arrowstyle='->', color=GOLD, lw=1.5),
            color=GOLD, fontsize=10, fontweight='bold')

# ══════════════════════════════════════════════════════════════════
# LAYER 10 — SYZYGY AXIS (⊙ → FFUSE3 → balanced horn(0))
# ══════════════════════════════════════════════════════════════════
ax.plot([0, horn_0[0]], [0, horn_0[1]],
        color=PURPLE, linestyle='--', linewidth=2, alpha=0.7)
ax.scatter(*horn_0, color=PURPLE, s=140, zorder=9, marker='D',
           edgecolors=WHITE, linewidths=1, alpha=0.8)
L10, = ax.plot([], [], '--', color=PURPLE, linewidth=2, alpha=0.7)
L10b, = ax.plot([], [], 'D', color=PURPLE, markersize=8,
                markeredgecolor=WHITE, markeredgewidth=1)
ax.text(horn_0[0]+0.1, horn_0[1]-0.55, 'horn(0) ● balance\n(syzygy)',
        color=PURPLE, fontsize=9, fontweight='bold', ha='left')

# ══════════════════════════════════════════════════════════════════
# LAYER 11 — φ-TANGENT LOCI on the (1,1) horn ring
# ══════════════════════════════════════════════════════════════════
t_vals = np.linspace(0, 2*np.pi, 600)
horn_proj = np.array([horn_xy(t) for t in t_vals])
ax.plot(horn_proj[:,0], horn_proj[:,1],
        color=SLATE, linewidth=2.0, alpha=0.45)
L11a, = ax.plot([], [], '-', color=SLATE, linewidth=2.0, alpha=0.45)

# φ-tangent scatter + leader lines to margins
for pt, ang, side in [(phi_tan_plus,  tG_pos, 1),
                        (phi_tan_minus, tG_neg, -1)]:
    ax.scatter(*pt, color=WHITE, s=120, zorder=11,
               edgecolors=GOLD, linewidths=2)
    # Leader line to margin
    tx = -5.3
    ty = side * 5.0
    ax.plot([pt[0], tx], [pt[1], ty], color=GOLD, linewidth=0.8, alpha=0.5)
    bbox_props = dict(facecolor='#0a0a0a', edgecolor=GOLD, alpha=0.85, pad=3)
    ax.text(tx, ty,
            f'φ-tangent\ncos(t)=1/φ≈{inv_phi:.3f}\nt={ang:+.3f} rad',
            color=WHITE, fontsize=8, fontweight='bold',
            ha='left', va='center' if side>0 else 'center',
            bbox=bbox_props)
L11b, = ax.plot([], [], 'o', color=WHITE, markersize=8,
                markeredgecolor=GOLD, markeredgewidth=2)

# ══════════════════════════════════════════════════════════════════
# LAYER 12 — VESSEL / CONTENTS = 12π (volume ratio annotation)
# ══════════════════════════════════════════════════════════════════
ax.text(0.2, -4.8,
        r'Vessel / Contents = $\mathbf{12\pi}$' + '\n'
        r'Horn torus: $16\pi^2$ ≈ 157.9' + '\n'
        r'FSPLIT3 sphere: $4\pi/3$ ≈ 4.19',
        color=GREEN, fontsize=11, fontweight='bold',
        ha='left', va='bottom')

# ══════════════════════════════════════════════════════════════════
# LAYER 13 — CLINK→⊙ / IFIX→⊙ IDENTITY ARCS (coils through pinch)
# ══════════════════════════════════════════════════════════════════
for angle, lbl, col in [(np.pi/3, 'CLINK→⊙', '#39FF14'),
                          (-np.pi/4, 'IFIX→⊙', '#39FF14')]:
    st_pt = horn_xy(angle)
    ctrl  = np.array([st_pt[0]*0.4, st_pt[1]*0.4+0.5])
    arc_t = np.linspace(0, 1, 60)
    arc_pts = np.array([
        (1-t)**2*st_pt + 2*(1-t)*t*ctrl + t**2*np.array([0.0,0.0])
        for t in arc_t
    ])
    ax.plot(arc_pts[:,0], arc_pts[:,1],
            color=col, linestyle=':', linewidth=1.5, alpha=0.6)
    ax.text(ctrl[0]+0.2, ctrl[1]+0.1, lbl,
            color=col, fontsize=8, fontweight='bold')

# ══════════════════════════════════════════════════════════════════
# LAYER 14 — 16 POLOIDAL RING PROJECTIONS (radial cross-section)
# ══════════════════════════════════════════════════════════════════
for i in range(16):
    u = i/16*2*np.pi
    rc = np.array([R*np.cos(u), R*np.sin(u)])
    outer_pt = (R+r_split)*rc/R
    inner_pt = (R-r_split)*rc/R
    ax.plot([inner_pt[0], outer_pt[0]],
            [inner_pt[1], outer_pt[1]],
            color='#5a659c', linewidth=0.5, alpha=0.2)

# ══════════════════════════════════════════════════════════════════
# LAYER 15 — R0 BUS CHORDS (AREV → IFIX / TANCH)
# ══════════════════════════════════════════════════════════════════
arev_angle = 1.71; ifix_angle = 0.283; tanch_angle = 2.855
arev_pt = horn_xy(arev_angle)
ifix_pt = horn_xy(ifix_angle)
tanch_pt = horn_xy(tanch_angle)

ax.plot([arev_pt[0], ifix_pt[0]], [arev_pt[1], ifix_pt[1]],
        color=CYAN, linestyle='--', linewidth=1.5, alpha=0.7)
mid_ai = (arev_pt+ifix_pt)/2 + np.array([0, 0.35])
ax.text(mid_ai[0], mid_ai[1], 'R0 bus', color=CYAN,
        fontsize=8, fontweight='bold')

ax.plot([arev_pt[0], tanch_pt[0]], [arev_pt[1], tanch_pt[1]],
        color=CYAN, linestyle='--', linewidth=1.5, alpha=0.7)

# ══════════════════════════════════════════════════════════════════
# LAYER 16 — HORN(π) PINCH (⊙ IMSCRIB identity)
# ══════════════════════════════════════════════════════════════════
ax.annotate('μ∘δ = id', xy=(0.3, 0.3), xytext=(0.6, 0.65),
            arrowprops=dict(arrowstyle='->', color=GOLD, lw=1.8),
            fontsize=10, color=GOLD, fontweight='bold',
            bbox=dict(facecolor='#0a0a0a', edgecolor=GOLD,
                       alpha=0.8, pad=3))

# ══════════════════════════════════════════════════════════════════
# LAYER 17 — IMPACT PARAMETER b
# ══════════════════════════════════════════════════════════════════
ax.plot([0.5, 0.5], [0, 1.0], color=CYAN, linestyle=':', linewidth=2, alpha=0.7)
ax.text(0.75, 0.5, 'b=1\n(impact)', color=CYAN,
        fontsize=9, fontweight='bold')

# ══════════════════════════════════════════════════════════════════
# LAYER 18 — QUADRATIC FORM (horn torus)
# ══════════════════════════════════════════════════════════════════
ax.text(-5.3, 5.3,
        r'Horn torus (R=r=2):' + '\n'
        r'$(x^2+y^2+z^2+R^2-r^2)^2 = 4R^2(x^2+y^2)$' + '\n'
        r'$R=r \Rightarrow$ pinch at origin',
        color=SLATE, fontsize=9, ha='left', va='top',
        bbox=dict(facecolor='#0a0a0a', edgecolor=SLATE,
                   alpha=0.7, pad=4))

# ══════════════════════════════════════════════════════════════════
# FINAL STYLING
# ══════════════════════════════════════════════════════════════════
ax.set_xlim(-5.8, 5.8)
ax.set_ylim(-5.8, 5.8)
ax.set_title(
    'mOMonadOS Kernel Geometry — 2D Cross-Section (z=0 plane)',
    color=WHITE, fontsize=20, pad=22, fontweight='bold')

ax.text(0.5, 1.01,
        'Horn torus (R=r=2) · r_split=λ_C=1 · A₂ carved ring · '
        'Syzygy axis · φ-tangent loci · Vessel/Contents=12π · '
        '1:1:2 weighted resultant',
        transform=ax.transAxes, ha='center', color=SLATE, fontsize=10)

ax.tick_params(colors=WHITE)
for spine in ['bottom', 'top', 'left', 'right']:
    ax.spines[spine].set_color(WHITE)
ax.xaxis.label.set_color(WHITE)
ax.yaxis.label.set_color(WHITE)

plt.grid(True, linestyle='--', alpha=0.12)

# ══════════════════════════════════════════════════════════════════
# LEGEND — external, two-column, right of plot
# ══════════════════════════════════════════════════════════════════
# Build custom legend handles from proxy artists
legend_items = [
    (L1,          'Horn Torus Outer Equator (R=r=2, z=0)'),
    (L2,          'FSPLIT3 split shell (r_split = λ_C)'),
    (L3,          'Evaluator sphere (x=1, r=1)'),
    (L4,          'FFUSE3 coupler (length 2, bevel gear 4:1)'),
    (L5a,         '⊙ IMSCRIB (pinch, identity)'),
    (L5b,         '∋ FFUSE3 tip'),
    (L5c,         '+ EVALT (Truth)'),
    (L5d,         '× EVALF / ⊞ EVALI (F/I, projection)'),
    (L5e,         '(1,0,0) mixed-state tangency (unoccupied)'),
    (L5f,         'A₂ roots (on outer equator, r=4)'),
    (L6,          'A₂ carved ring triangle (outer equator)'),
    (L7,          'Evaluator A₂ triangle (plane x=1)'),
    (L8a,         'Distance annotation chord (√2, √3, 2)'),
    (L9a,         'Unweighted resultant (1:1:1, 0° tilt)'),
    (L9b,         'Weighted resultant (1:1:2, 14.036° tilt)'),
    (L10,         'Syzygy axis: ⊙→∋→horn(0)'),
    (L10b,        'horn(0) = (4,0) — balanced syzygy target'),
    (L11a,        '(1,1) horn(t) ring projection'),
    (L11b,        'φ-tangent loci: cos(t) = 1/φ'),
]

# Split into two columns
mid = (len(legend_items)+1)//2
col1, col2 = legend_items[:mid], legend_items[mid:]

handles1, labels1 = zip(*col1)
handles2, labels2 = zip(*col2)

# Place legend outside axes on right
leg1 = ax.legend(handles1, labels1,
                 loc='center left',
                 bbox_to_anchor=(1.02, 0.50),
                 fontsize=8, facecolor='#1a1a1a',
                 edgecolor=WHITE, labelspacing=0.3,
                 handlelength=1.5, handletextpad=0.5)
for text in leg1.get_texts():
    text.set_color(WHITE)

# Add second column via a separate legend, positioned below the first
leg2 = ax.legend(handles2, labels2,
                 loc='center left',
                 bbox_to_anchor=(1.02, -0.02),
                 fontsize=8, facecolor='#1a1a1a',
                 edgecolor=WHITE, labelspacing=0.3,
                 handlelength=1.5, handletextpad=0.5)
for text in leg2.get_texts():
    text.set_color(WHITE)

# Re-add the first legend (matplotlib removes previous when adding new)
ax.add_artist(leg1)

plt.tight_layout(pad=1.0)

# ─── Save ────────────────────────────────────────────────────────
outpath = '/home/mrnob0dy666/imsgct/ob3ect/kernel_cross_section.png'
plt.savefig(outpath, dpi=300, bbox_inches='tight',
            facecolor='#0a0a0a')
print(f"✅ Complete cross-section saved to '{outpath}'")

import os
fsize = os.path.getsize(outpath)
print(f"   File size: {fsize} bytes ({fsize/1024:.1f} KB)")
