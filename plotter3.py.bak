#!/usr/bin/env python3
"""
Three-View Plotter for mOMonadOS Kernel Geometry — ORTHOGRAPHIC (v7)
===================================================================
Updated with UCFm constants, fixed label overlaps, and correct view order:
View 1: SIDE-ON (xz plane, y=0) — kidney-bean lobe cross-section.
View 2: TOP-DOWN (xy plane, z=0) — equatorial cross-section as rings.
View 3: FACE-ON ORTHO (yz plane, x=0) — two distinct lobe circles + evaluator triangle.
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
    return np.array([(R+R*np.cos(t))*np.cos(t), (R+R*np.cos(t))*np.sin(t)])

def horn_tube_cross_section_xz():
    left_x = -R + R * np.cos(theta)
    left_z = R * np.sin(theta)
    right_x = R + R * np.cos(theta)
    right_z = R * np.sin(theta)
    return left_x, left_z, right_x, right_z

# ─── Create figure ───────────────────────────────────────────────
fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(30, 10))
fig.patch.set_facecolor(DARK)

for ax in (ax1, ax2, ax3):
    ax.set_facecolor(DARK)
    ax.set_aspect("equal")
    ax.tick_params(colors=WHITE)
    for s in ax.spines.values():
        s.set_color(WHITE)
    ax.grid(True, ls='--', alpha=0.1)

# ══════════════════════════════════════════════════════════════════
# VIEW 1 — SIDE-ON (xz plane, y=0)
# ══════════════════════════════════════════════════════════════════
ax1.set_title('VIEW 1: Side-On (xz plane, y=0)', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

left_x, left_z, right_x, right_z = horn_tube_cross_section_xz()
ax1.plot(left_x, left_z, color='#5a659c', lw=2.5, alpha=0.9)
ax1.plot(right_x, right_z, color='#5a659c', lw=2.5, alpha=0.9)
ax1.fill(left_x, left_z, color='#5a659c', alpha=0.08)
ax1.fill(right_x, right_z, color='#5a659c', alpha=0.08)
ax1.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, marker='o', alpha=0.6)

# λ_C split shell (projected onto xz)
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)

# Evaluator sphere circle (center at x=1, radius=1)
ax1.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

# FFUSE3 coupler
ax1.plot([0, 2], [0, 0], color=WHITE, lw=3)

# Key nodes
ax1.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax1.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax1.scatter(1, 0, color=BLUE, s=120, zorder=10)   # EVALT projection (x=1,z=0)
ax1.scatter(1, sqrt3/2, color=RED, s=120, zorder=10)   # EVALF
ax1.scatter(1, -sqrt3/2, color=RED, s=120, zorder=10)  # EVALI
ax1.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s', edgecolors=WHITE, facecolors='none', lw=1.5)
ax1.scatter(4, 0, color=PURPLE, s=120, zorder=9, marker='D', edgecolors=WHITE, lw=1, alpha=0.8)

# Labels with background boxes
bbox = dict(facecolor=DARK, edgecolor='none', pad=2)
ax1.text(-0.35, -0.35, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right', bbox=bbox)
ax1.text(2.1, -0.25, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold', bbox=bbox)
ax1.text(1.15, 0.2, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold', bbox=bbox)
ax1.text(1.15, sqrt3/2+0.25, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold', bbox=bbox)
ax1.text(1.15, -sqrt3/2-0.35, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold', bbox=bbox)
ax1.text(4.1, -0.35, 'horn(0)', color=PURPLE, fontsize=8, bbox=bbox)

# Evaluator A₂ triangle fill and edges
tri_xz = np.array([[1, 0], [1, sqrt3/2], [1, -sqrt3/2]])
ax1.fill(tri_xz[:,0], tri_xz[:,1], color=GREEN, alpha=0.15, zorder=5)
for i in range(3):
    j = (i+1)%3
    ax1.plot([tri_xz[i,0], tri_xz[j,0]], [tri_xz[i,1], tri_xz[j,1]], color=GREEN, lw=2, alpha=0.8)

# Distance chords
ax1.plot([0, 1], [0, 0], color='#aaffcc', ls=':', lw=1.5)
ax1.text(0.5, -0.2, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold', ha='center', bbox=bbox)
ax1.text(0.5, sqrt3/4-0.05, r'$\sqrt{3}$', color=GREEN, fontsize=11, fontweight='bold', bbox=bbox)
ax1.text(1.0, -0.15, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center', bbox=bbox)
ax1.text(0.5, 0.35, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold', bbox=bbox)

# Syzygy axis
ax1.plot([0, 4.2], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax1.text(2.1, 0.28, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8, bbox=bbox)

# A₂ roots on outer equator (side view: they project to x-axis)
a2_angles = [0, 2*np.pi/3, 4*np.pi/3]
a2_pts_xz = [(horn_xy(ang)[0], 0.0) for ang in a2_angles]
for i, (px, pz) in enumerate(a2_pts_xz):
    offset = 0.35 if i == 0 else -0.35
    ax1.scatter(px, offset, color=GREEN, s=80, zorder=8)
    ax1.text(px, offset+0.2, ['n₊=+1','n₋','n₋'][i], color=GREEN, fontsize=7, fontweight='bold', ha='center', bbox=bbox)
for i in range(3):
    j = (i+1)%3
    ax1.plot([a2_pts_xz[i][0], a2_pts_xz[j][0]], [a2_pts_xz[i][1], a2_pts_xz[j][1]], color=GREEN, lw=2, alpha=0.3, zorder=3)

# φ-tangent loci
phi_xz = horn_xy(tG)
ax1.scatter(phi_xz[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.scatter(horn_xy(-tG)[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.text(phi_xz[0]+0.15, 0.25, r'$\phi$-tangent', color=WHITE, fontsize=7, alpha=0.9, bbox=bbox)

# ─── UCFm constants for side view ─────────────────────────────
ucfm_side = r"$\alpha^{-1}=137.035999$" + "\n" + r"$m_p/m_e=1836.152$"
ax1.text(-5.2, 4.8, ucfm_side, color=WHITE, fontsize=8,
         ha='left', va='top', bbox=dict(facecolor=DARK, edgecolor=GOLD, alpha=0.8, pad=4))

ax1.set_xlim(-5.5, 6.0); ax1.set_ylim(-5.5, 5.5)
ax1.set_xlabel('x', color=WHITE)
ax1.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 2 — TOP-DOWN (xy plane, z=0) — EQUATORIAL CROSS-SECTION
# ══════════════════════════════════════════════════════════════════
ax2.set_title('VIEW 2: Top-Down (xy plane, z=0)', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Outer equator (radius 4)
ax2.plot(2*R*np.cos(theta), 2*R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.35)

# Horn ring projection
horn_xy_pts = np.array([horn_xy(t) for t in theta])
ax2.plot(horn_xy_pts[:,0], horn_xy_pts[:,1], color=SLATE, lw=2, alpha=0.45)

# λ_C split shell
ax2.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
ax2.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)

# Evaluator sphere projection (vertical line at x=1)
ax2.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

# FFUSE3 coupler
ax2.plot([0, 2], [0, 0], color=WHITE, lw=3)

# Nodes
ax2.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax2.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax2.scatter(1, 1, color=BLUE, s=120, zorder=10)   # EVALT (y=1)
ax2.scatter(1, -0.5, color=RED, s=120, zorder=10) # EVALF (y=-0.5)
ax2.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s', edgecolors=WHITE, facecolors='none', lw=1.5)
ax2.scatter(*horn_xy(0), color=PURPLE, s=120, zorder=9, marker='D', edgecolors=WHITE, lw=1, alpha=0.8)

# Labels
ax2.text(-0.35, -0.45, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right', bbox=bbox)
ax2.text(2.1, -0.35, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold', bbox=bbox)
ax2.text(1.15, 1.1, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold', bbox=bbox)
ax2.text(1.15, -0.65, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold', bbox=bbox)
ax2.text(horn_xy(0)[0]+0.1, horn_xy(0)[1]-0.5, 'horn(0)', color=PURPLE, fontsize=8, bbox=bbox)

# A₂ roots on outer equator
root0 = (4, 0); root1 = (4*np.cos(2*np.pi/3), 4*np.sin(2*np.pi/3))
root2 = (4*np.cos(4*np.pi/3), 4*np.sin(4*np.pi/3))
for rpt in [root0, root1, root2]:
    ax2.scatter(*rpt, color=GREEN, s=80, zorder=8)
ax2.plot([4, root1[0]], [0, root1[1]], color=GREEN, lw=2, alpha=0.5)
ax2.plot([root1[0], root2[0]], [root1[1], root2[1]], color=GREEN, lw=2, alpha=0.5)
ax2.plot([root2[0], 4], [root2[1], 0], color=GREEN, lw=2, alpha=0.5)

for pt, lbl, ang in [(root0, 'n₊=+1', 0), (root1, 'n₋', 2*np.pi/3), (root2, 'n₋', 4*np.pi/3)]:
    ax2.text((4+0.55)*np.cos(ang), (4+0.55)*np.sin(ang), lbl,
             color=GREEN, fontsize=7, fontweight='bold', ha='center', va='center', bbox=bbox)

# Evaluator A₂ triangle (collapsed to line in xy)
ax2.plot([1, 1], [1, -0.5], color=GREEN, lw=2, alpha=0.8)
ax2.text(0.85, 0.25, 'A₂ triangle\n(collapsed\nto line in xy)', color=GREEN, fontsize=6, ha='center', bbox=bbox)

# Distance annotations
ax2.plot([0, 1], [0, 1], color='#aaffcc', ls=':', lw=1.5)
ax2.text(0.4, 0.55, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold', bbox=bbox)
ax2.text(0.55, 0.25, r'$\sqrt{3}$ (3D)', color=GREEN, fontsize=11, fontweight='bold', bbox=bbox)
ax2.text(1.0, -0.2, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center', bbox=bbox)
ax2.text(0.5, -0.2, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold', bbox=bbox)

# Syzygy axis
ax2.plot([0, 4], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax2.text(2.1, 0.35, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8, bbox=bbox)

# φ-tangent loci
phi_plus = horn_xy(tG); phi_minus = horn_xy(-tG)
for pt in [phi_plus, phi_minus]:
    ax2.scatter(*pt, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax2.text(phi_plus[0]+0.2, phi_plus[1]+0.15, r'$\phi$-tangent', color=WHITE, fontsize=7, bbox=bbox)

# 16 poloidal rings (projected as radial lines)
for i in range(16):
    u = i/16*2*np.pi
    rc = np.array([R*np.cos(u), R*np.sin(u)])
    ax2.plot([(R-r_split)*rc[0]/R, (R+r_split)*rc[0]/R],
             [(R-r_split)*rc[1]/R, (R+r_split)*rc[1]/R],
             color='#5a659c', lw=0.5, alpha=0.2)

# ─── UCFm constants for top-down view ─────────────────────────
ucfm_top = r"Gear ratio = 4" + "\n" + r"$m_\tau/m_e = 3476.785$" + "\n" + r"$\pi$ (curvature)"
ax2.text(-5.2, 4.8, ucfm_top, color=WHITE, fontsize=8,
         ha='left', va='top', bbox=dict(facecolor=DARK, edgecolor=GOLD, alpha=0.8, pad=4))

ax2.set_xlim(-5.5, 5.5); ax2.set_ylim(-5.5, 5.5)
ax2.set_xlabel('x', color=WHITE)
ax2.set_ylabel('y', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 3 — FACE-ON ORTHO (yz plane, looking down +x into FFUSE3 vector)
# ══════════════════════════════════════════════════════════════════
ax3.set_title('VIEW 3: Face-On Ortho (yz plane, x=0)', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Torus lobes: left (y=-2) and right (y=+2) circles of radius 2
left_lobe_y = -R + R * np.cos(theta)
left_lobe_z = R * np.sin(theta)
right_lobe_y = R + R * np.cos(theta)
right_lobe_z = R * np.sin(theta)

ax3.plot(left_lobe_y, left_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Left Lobe')
ax3.plot(right_lobe_y, right_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Right Lobe')
ax3.fill(left_lobe_y, left_lobe_z, color='#5a659c', alpha=0.08)
ax3.fill(right_lobe_y, right_lobe_z, color='#5a659c', alpha=0.08)
ax3.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, alpha=0.6)
ax3.text(-R, -2.4, 'Left Lobe (y=-2)', color='#5a659c', fontsize=8, ha='center', bbox=bbox)
ax3.text(R, -2.4, 'Right Lobe (y=+2)', color='#5a659c', fontsize=8, ha='center', bbox=bbox)

# Evaluator sphere (center at origin, radius=1) – draw solid circle
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, lw=2.5, alpha=0.7, label='Evaluator sphere')
ax3.fill(r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, alpha=0.08)

# Bloch shell (same circle, dashed)
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2, alpha=0.6, label=r'Bloch ($\lambda_C$)')
# FFUSE sphere overlay (same)
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls=':', lw=2, alpha=0.4, label='FFUSE3 sphere')

# Center pinch
ax3.scatter(0, 0, color=GOLD, s=280, zorder=15, edgecolors=WHITE, lw=1.5)
ax3.text(0, -0.4, r'$\odot$ pinch / Bloch-FFUSE3 overlap', color=WHITE, fontsize=8, fontweight='bold', ha='center', bbox=bbox)

# Evaluator A₂ triangle nodes in yz projection
ev_y = [EVALT[1], EVALF[1], EVALI[1]]
ev_z = [EVALT[2], EVALF[2], EVALI[2]]

ax3.scatter(ev_y[0], ev_z[0], color=BLUE, s=140, zorder=18, edgecolors=WHITE, lw=1.5)
ax3.scatter(ev_y[1], ev_z[1], color=RED, s=140, zorder=18, edgecolors=WHITE, lw=1.5)
ax3.scatter(ev_y[2], ev_z[2], color=RED, s=140, zorder=18, edgecolors=WHITE, lw=1.5)

# A₂ evaluator triangle fill and edges
ax3.fill(ev_y, ev_z, color=GREEN, alpha=0.18, zorder=12)
for i in range(3):
    j = (i+1)%3
    ax3.plot([ev_y[i], ev_y[j]], [ev_z[i], ev_z[j]], color=GREEN, lw=2.0, alpha=0.9, zorder=14)

# Labels for evaluator nodes
ax3.text(ev_y[0]+0.2, ev_z[0], '+ EVALT', color=BLUE, fontsize=8, fontweight='bold', va='center', bbox=bbox)
ax3.text(ev_y[1]-0.2, ev_z[1]+0.2, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold', ha='right', bbox=bbox)
ax3.text(ev_y[2]-0.2, ev_z[2]-0.2, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold', ha='right', bbox=bbox)

# ─── UCFm constants for face-on view ─────────────────────────
ucfm_face = r"$\sin^2\theta_W = 3/13 = 0.230769$" + "\n" + r"$m_\mu/m_e = 206.769$"
ax3.text(-5.2, 4.8, ucfm_face, color=WHITE, fontsize=8,
         ha='left', va='top', bbox=dict(facecolor=DARK, edgecolor=GOLD, alpha=0.8, pad=4))

ax3.set_xlim(-5.5, 5.5); ax3.set_ylim(-5.5, 5.5)
ax3.set_xlabel('y', color=WHITE)
ax3.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# SAVE
# ══════════════════════════════════════════════════════════════════
plt.tight_layout(pad=2.0)
plt.savefig('/home/mrnob0dy666/imsgct/ob3ect/kernel_three_view.png',
            dpi=300, facecolor=DARK, edgecolor='none',
            bbox_inches='tight')
print("SAVED: /home/mrnob0dy666/imsgct/ob3ect/kernel_three_view.png")
print("View 1 (Side-On): kidney-bean lobes in xz plane ✓")
print("View 2 (Top-Down): equatorial rings in xy plane ✓")
print("View 3 (Face-On): side-by-side lobes + evaluator triangle on circle ✓")