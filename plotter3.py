#!/usr/bin/env python3
"""
Three-View Plotter for mOMonadOS Kernel Geometry — ORTHOGRAPHIC (v5)
===================================================================
View 1: SIDE-ON (xz plane, y=0) — kidney-bean lobe cross-section.
View 2: FACE-ON ORTHO (yz plane, x=0, looking down +x FFUSE3 vector) — 
        Two distinct lobe circles (y = ±2) + overlapping central Bloch/FFUSE3 sphere.
View 3: TOP-DOWN (xy plane, z=0) — equatorial cross-section as rings.

All geometric relationships from kernel_3d_visualizer_3.html.
"""
import matplotlib
matplotlib.use('Agg')
import numpy as np
import matplotlib.pyplot as plt

# ─── Constants ──────────────────────────────────────────────────
R = 2.0; r_split = 1.0
sqrt2 = np.sqrt(2); sqrt3 = np.sqrt(3)
phi = (1 + np.sqrt(5)) / 2; inv_phi = 1 / phi
LR = R / 2  # evaluator radius

EVALT = np.array([1.0, 1.0, 0.0])
EVALF = np.array([1.0, -0.5, sqrt3/2])
EVALI = np.array([1.0, -0.5, -sqrt3/2])
tG = np.arccos(inv_phi)

# ─── Colour palette ─────────────────────────────────────────────
GREEN='#009E73'; BLUE='#0072B2'; GOLD='#E69F00'; ORANGE='#E69F00'
PURPLE='#CC79A7'; CYAN='#56B4E9'; GREY='#888888'; WHITE='white'
SLATE='#9AA7B4'; DARK='#0a0a0a'; RED='#D55E00'

theta = np.linspace(0, 2*np.pi, 500)

# ─── Geometry helpers ────────────────────────────────────────────
def horn_xy(t):
    """Horn torus parametric in equatorial (xy) plane."""
    c = np.cos(t); s = np.sin(t)
    return np.array([(R+R*c)*c, (R+R*c)*s])

def horn_xz(t):
    """Horn torus SIDE cross-section (y=0): the kidney-bean lobes."""
    c = np.cos(t)
    return np.array([(R+R*c)*c, (R+R*c)*np.sin(0.0)])

def horn_tube_cross_section_xz():
    """Left and right lobes for the xz plane side-view."""
    left_x = -R + R * np.cos(theta)
    left_z = R * np.sin(theta)
    right_x = R + R * np.cos(theta)
    right_z = R * np.sin(theta)
    return left_x, left_z, right_x, right_z


# ─── Create 3-subplot figure ─────────────────────────────────────
fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(30, 10))
fig.patch.set_facecolor(DARK)

# Style 2D axes
for ax in (ax1, ax2, ax3):
    ax.set_facecolor(DARK)
    ax.set_aspect("equal")
    ax.tick_params(colors=WHITE)
    for s in ax.spines.values():
        s.set_color(WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 1 — SIDE-ON (xz plane, y=0) — KIDNEY-BEAN LOBES
# ══════════════════════════════════════════════════════════════════
ax1.set_title('VIEW 1: Side-On (xz plane, y=0)\nKidney-bean lobes + spheres → right', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

left_x, left_z, right_x, right_z = horn_tube_cross_section_xz()

ax1.plot(-R + R*np.cos(theta), R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.9)
ax1.plot(R + R*np.cos(theta), R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.9)

ax1.fill(-R + R*np.cos(theta), R*np.sin(theta), color='#5a659c', alpha=0.08)
ax1.fill(R + R*np.cos(theta), R*np.sin(theta), color='#5a659c', alpha=0.08)

ax1.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, marker='o', alpha=0.6)

# λ_C split shell
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)

# Evaluator sphere at x=1
ax1.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

# FFUSE3 coupler
ax1.plot([0, 2], [0, 0], color=WHITE, lw=3)

# Key nodes
ax1.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax1.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax1.scatter(1, 0, color=BLUE, s=120, zorder=10)
ax1.scatter(1, sqrt3/2, color=RED, s=120, zorder=10)
ax1.scatter(1, -sqrt3/2, color=RED, s=120, zorder=10)
ax1.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s', edgecolors=WHITE, facecolors='none', lw=1.5)
ax1.scatter(4, 0, color=PURPLE, s=120, zorder=9, marker='D', edgecolors=WHITE, lw=1, alpha=0.8)

# Labels
ax1.text(-0.35, -0.35, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right')
ax1.text(2.1, -0.25, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold')
ax1.text(1.15, 0.2, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax1.text(1.15, sqrt3/2+0.25, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax1.text(1.15, -sqrt3/2-0.35, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold')
ax1.text(4.1, -0.35, 'horn(0)', color=PURPLE, fontsize=8)

# Evaluator A₂ triangle
tri_xz = np.array([[1, 0], [1, sqrt3/2], [1, -sqrt3/2]])
ax1.fill(tri_xz[:,0], tri_xz[:,1], color=GREEN, alpha=0.15, zorder=5)
for i in range(3):
    j = (i+1)%3
    ax1.plot([tri_xz[i,0], tri_xz[j,0]], [tri_xz[i,1], tri_xz[j,1]], color=GREEN, lw=2, alpha=0.8)

# Distance chords
ax1.plot([0, 1], [0, 0], color='#aaffcc', ls=':', lw=1.5)
ax1.text(0.5, -0.2, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold', ha='center')
ax1.text(0.5, sqrt3/4-0.05, r'$\sqrt{3}$', color=GREEN, fontsize=11, fontweight='bold')
ax1.text(1.0, -0.15, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center')
ax1.text(0.5, 0.35, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold')

# Syzygy axis
ax1.plot([0, 4.2], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax1.text(2.1, 0.28, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8)

a2_angles = [0, 2*np.pi/3, 4*np.pi/3]
a2_pts_xz = [(horn_xz(ang)[0], 0.0) for ang in a2_angles]

for i, (lbl, (px, pz)) in enumerate(zip(['n₊=+1', 'n₋', 'n₋'], a2_pts_xz)):
    offset = 0.35 if i == 0 else -0.35
    ax1.scatter(px, offset, color=GREEN, s=80, zorder=8)
    ax1.text(px, offset+0.2, lbl, color=GREEN, fontsize=7, fontweight='bold', ha='center', va='bottom')

for i in range(3):
    j = (i+1)%3
    ax1.plot([a2_pts_xz[i][0], a2_pts_xz[j][0]], [a2_pts_xz[i][1], a2_pts_xz[j][1]], color=GREEN, lw=2, alpha=0.3, zorder=3)

phi_xz = horn_xz(tG)
ax1.scatter(phi_xz[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.scatter(horn_xz(-tG)[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.text(phi_xz[0]+0.15, 0.25, r'$\phi$-tangent', color=WHITE, fontsize=7, alpha=0.9)

ax1.set_xlim(-5.5, 6.0); ax1.set_ylim(-5.5, 5.5)
ax1.grid(True, ls='--', alpha=0.1)
ax1.set_xlabel('x', color=WHITE)
ax1.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 2 — FACE-ON ORTHO (yz plane, looking down +x into FFUSE3 vector)
# Two side-by-side lobe circles meeting at origin + central overlapping Bloch/FFUSE3 sphere
# ══════════════════════════════════════════════════════════════════
ax2.set_title('VIEW 2: Face-On Ortho (yz plane, x=0)\nDual Lobe Circles + Central Bloch/FFUSE3 Sphere', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Torus Lobes: Left Circle (y = -R = -2, r = R = 2) & Right Circle (y = +R = +2, r = R = 2)
left_lobe_y = -R + R * np.cos(theta)
left_lobe_z = R * np.sin(theta)
right_lobe_y = R + R * np.cos(theta)
right_lobe_z = R * np.sin(theta)

ax2.plot(left_lobe_y, left_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Left Lobe')
ax2.plot(right_lobe_y, right_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Right Lobe')
ax2.fill(left_lobe_y, left_lobe_z, color='#5a659c', alpha=0.08)
ax2.fill(right_lobe_y, right_lobe_z, color='#5a659c', alpha=0.08)

# Lobe center points
ax2.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, alpha=0.6)
ax2.text(-R, -2.4, 'Left Lobe (y=-2)', color='#5a659c', fontsize=8, ha='center')
ax2.text(R, -2.4, 'Right Lobe (y=+2)', color='#5a659c', fontsize=8, ha='center')

# Central Overlapping Sphere: Bloch Shell (λ_C, r=1) & FFUSE3 Sphere (r=1) at (0,0)
# Both spheres project onto the exact same circle at the pinch point!
ax2.plot(r_split * np.cos(theta), r_split * np.sin(theta), color=ORANGE, ls='--', lw=2.5, zorder=10, label=r'Bloch ($\lambda_C$) Shell')
ax2.plot(r_split * np.cos(theta), r_split * np.sin(theta), color=BLUE, ls=':', lw=2.0, zorder=11, label='FFUSE3 Sphere')
ax2.fill(r_split * np.cos(theta), r_split * np.sin(theta), color=GOLD, alpha=0.12, zorder=9)

# Center pinch / vector origin bullseye
ax2.scatter(0, 0, color=GOLD, s=280, zorder=15, edgecolors=WHITE, lw=1.5)
ax2.scatter(0, 0, color=BLUE, s=100, zorder=16)
ax2.text(0, -0.4, r'$\odot$ pinch / Bloch-FFUSE3 overlap', color=WHITE, fontsize=8, fontweight='bold', ha='center')

# Evaluator A₂ triangle nodes in yz projection (EVALT, EVALF, EVALI)
ev_y = [EVALT[1], EVALF[1], EVALI[1]]
ev_z = [EVALT[2], EVALF[2], EVALI[2]]

ax2.scatter(ev_y[0], ev_z[0], color=BLUE, s=140, zorder=18, edgecolors=WHITE, lw=1.5)
ax2.scatter(ev_y[1], ev_z[1], color=RED, s=140, zorder=18, edgecolors=WHITE, lw=1.5)
ax2.scatter(ev_y[2], ev_z[2], color=RED, s=140, zorder=18, edgecolors=WHITE, lw=1.5)

# A₂ evaluator triangle outline & fill
ax2.fill(ev_y, ev_z, color=GREEN, alpha=0.18, zorder=12)
for i in range(3):
    j = (i+1)%3
    ax2.plot([ev_y[i], ev_y[j]], [ev_z[i], ev_z[j]], color=GREEN, lw=2.0, alpha=0.9, zorder=14)

ax2.text(ev_y[0]+0.2, ev_z[0], '+ EVALT', color=BLUE, fontsize=8, fontweight='bold', va='center')
ax2.text(ev_y[1]-0.2, ev_z[1]+0.2, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold', ha='right')
ax2.text(ev_y[2]-0.2, ev_z[2]-0.2, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold', ha='right')

ax2.set_xlim(-5.5, 5.5); ax2.set_ylim(-5.5, 5.5)
ax2.grid(True, ls='--', alpha=0.1)
ax2.set_xlabel('y', color=WHITE)
ax2.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 3 — TOP-DOWN (xy plane, z=0) — EQUATORIAL CROSS-SECTION
# ══════════════════════════════════════════════════════════════════
ax3.set_title('VIEW 3: Top-Down (xy plane, z=0)\nEquatorial rings + spheres → right', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

ax3.plot(2*R*np.cos(theta), 2*R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.35)

ax3.plot(np.array([horn_xy(t) for t in theta])[:,0],
         np.array([horn_xy(t) for t in theta])[:,1], color=SLATE, lw=2, alpha=0.45)

ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)

ax3.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

ax3.plot([0, 2], [0, 0], color=WHITE, lw=3)

ax3.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax3.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax3.scatter(1, 1, color=BLUE, s=120, zorder=10)
ax3.scatter(1, -0.5, color=RED, s=120, zorder=10)
ax3.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s', edgecolors=WHITE, facecolors='none', lw=1.5)
ax3.scatter(*horn_xy(0), color=PURPLE, s=120, zorder=9, marker='D', edgecolors=WHITE, lw=1, alpha=0.8)

ax3.text(-0.35, -0.45, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right')
ax3.text(2.1, -0.35, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold')
ax3.text(1.15, 1.1, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax3.text(1.15, -0.65, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax3.text(horn_xy(0)[0]+0.1, horn_xy(0)[1]-0.5, 'horn(0)', color=PURPLE, fontsize=8)

root0 = (4, 0); root1 = (4*np.cos(2*np.pi/3), 4*np.sin(2*np.pi/3))
root2 = (4*np.cos(4*np.pi/3), 4*np.sin(4*np.pi/3))
for rpt in [root0, root1, root2]:
    ax3.scatter(*rpt, color=GREEN, s=80, zorder=8)
ax3.plot([4, root1[0]], [0, root1[1]], color=GREEN, lw=2, alpha=0.5)
ax3.plot([root1[0], root2[0]], [root1[1], root2[1]], color=GREEN, lw=2, alpha=0.5)
ax3.plot([root2[0], 4], [root2[1], 0], color=GREEN, lw=2, alpha=0.5)

for pt, lbl, ang in [(root0, 'n₊=+1', 0), (root1, 'n₋', 2*np.pi/3), (root2, 'n₋', 4*np.pi/3)]:
    ax3.text((4+0.55)*np.cos(ang), (4+0.55)*np.sin(ang), lbl,
             color=GREEN, fontsize=7, fontweight='bold', ha='center', va='center')

ax3.plot([1, 1], [1, -0.5], color=GREEN, lw=2, alpha=0.8)
ax3.text(0.85, 0.25, 'A₂ triangle\n(collapsed\nto line in xy)', color=GREEN, fontsize=6, ha='center')

ax3.plot([0, 1], [0, 1], color='#aaffcc', ls=':', lw=1.5)
ax3.text(0.4, 0.55, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold')
ax3.text(0.55, 0.25, r'$\sqrt{3}$ (3D)', color=GREEN, fontsize=11, fontweight='bold')
ax3.text(1.0, -0.2, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center')
ax3.text(0.5, -0.2, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold')

ax3.plot([0, 4], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax3.text(2.1, 0.35, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8)

phi_plus = horn_xy(tG); phi_minus = horn_xy(-tG)
for pt in [phi_plus, phi_minus]:
    ax3.scatter(*pt, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax3.text(phi_plus[0]+0.2, phi_plus[1]+0.15, r'$\phi$-tangent', color=WHITE, fontsize=7)

for i in range(16):
    u = i/16*2*np.pi
    rc = np.array([R*np.cos(u), R*np.sin(u)])
    ax3.plot([(R-r_split)*rc[0]/R, (R+r_split)*rc[0]/R],
             [(R-r_split)*rc[1]/R, (R+r_split)*rc[1]/R],
             color='#5a659c', lw=0.5, alpha=0.2)

ax3.set_xlim(-5.5, 5.5); ax3.set_ylim(-5.5, 5.5)
ax3.grid(True, ls='--', alpha=0.1)
ax3.set_xlabel('x', color=WHITE)
ax3.set_ylabel('y', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# SAVE
# ══════════════════════════════════════════════════════════════════
plt.tight_layout(pad=2.0)
plt.savefig('/home/mrnob0dy666/imsgct/ob3ect/kernel_three_view.png',
            dpi=300, facecolor=DARK, edgecolor='none',
            bbox_inches='tight')
print("SAVED: /home/mrnob0dy666/imsgct/ob3ect/kernel_three_view.png")
print("View 1 (Side-On): kidney-bean lobes in xz plane ✓")
print("View 2 (Face-On Ortho): side-by-side lobes + central Bloch/FFUSE3 overlapping sphere ✓")
print("View 3 (Top-Down): equatorial rings in xy plane ✓")