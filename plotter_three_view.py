#!/usr/bin/env python3
"""
Three-View Plotter for mOMonadOS Kernel Geometry — CORRECTED (v3)
=================================================================
View 1: SIDE-ON (xz plane, y=0) — kidney-bean lobe cross-section
        from the SIDE of the horn torus. Two overlapping circles
        meeting at the origin pinch, evaluator spheres extending
        to the RIGHT of the y-axis.

View 2: FACE-ON (yz plane, looking into x) — torus concentric rings,
        spheres extending toward the viewer (out of the page).

View 3: TOP-DOWN (xy plane, z=0) — equatorial cross-section as rings,
        spheres extending to the right.

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
    return np.array([(R+R*c)*c, (R+R*c)*np.sin(0.0)])  # y=0 → z=0 so x only

def horn_tube_cross_section_xz():
    """
    For the SIDE view (y=0 plane): the horn torus tube shows as the
    envelope of all poloidal cross-sections. In xz (y=0), the torus
    is a figure-8 / kidney-bean: two overlapping circles of radius R
    centred at x=±R, touching at the origin pinch.

    The envelope: for a horn torus with tube radius R and torus radius R,
    the y=0 cross-section consists of:
      - Left lobe: circle centre (-R, 0), radius R
      - Right lobe: circle centre (+R, 0), radius R
      - These two circles overlap: they touch at the origin (the pinch)
      - The outer envelope is the union of their perimeters
    """
    # Left lobe circle: centre (-R, 0), radius R
    left_x = -R + R * np.cos(theta)
    left_z = R * np.sin(theta)
    # Right lobe circle: centre (+R, 0), radius R
    right_x = R + R * np.cos(theta)
    right_z = R * np.sin(theta)
    return left_x, left_z, right_x, right_z


# ─── Create 3-subplot figure ─────────────────────────────────────
fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(30, 10))
for ax in (ax1, ax2, ax3):
    ax.set_facecolor(DARK)
    ax.set_aspect('equal')
    ax.tick_params(colors=WHITE)
    for s in ax.spines.values():
        s.set_color(WHITE)
fig.patch.set_facecolor(DARK)

# ══════════════════════════════════════════════════════════════════
# VIEW 1 — SIDE-ON (xz plane, y=0) — KIDNEY-BEAN LOBES
# ══════════════════════════════════════════════════════════════════
ax1.set_title('VIEW 1: Side-On (xz plane, y=0)\nKidney-bean lobes + spheres → right', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Horn torus side cross-section: two overlapping circles of radius R
# centered at x=±R, touching at origin (the pinch)
# Outer envelope — draw both full circles for the kidney-bean effect
left_x, left_z, right_x, right_z = horn_tube_cross_section_xz()

# Left lobe (xz: x centred at -R, z varies)
ax1.plot(-R + R*np.cos(theta), R*np.sin(theta), 
         color='#5a659c', lw=2.5, alpha=0.9, label='Tube lobe (left)')
ax1.plot(R + R*np.cos(theta), R*np.sin(theta),
         color='#5a659c', lw=2.5, alpha=0.9, label='Tube lobe (right)')

# Fill the kidney-bean interior lightly for shape emphasis
# The kidney bean is the UNION of the two circles
# We fill each circle lightly
ax1.fill(-R + R*np.cos(theta), R*np.sin(theta),
         color='#5a659c', alpha=0.08)
ax1.fill(R + R*np.cos(theta), R*np.sin(theta),
         color='#5a659c', alpha=0.08)

# The torus tube-centre ring in side view projects to two points at (±R, 0)
# Draw small markers
ax1.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, marker='o', alpha=0.6)

# λ_C split shell — in xz plane, this is a circle at origin radius r_split
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta),
         color=ORANGE, ls='--', lw=2)

# 45° tilt ellipse for 3D depth cue on λ_C
ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5,
         color=ORANGE, ls=':', lw=1, alpha=0.35)

# Evaluator sphere at x=LR=1 — in xz plane it's a circle centered at (x=1, z=0)
ax1.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta),
         color=BLUE, ls='--', lw=2)

# FFUSE3 coupler — along positive x-axis
ax1.plot([0, 2], [0, 0], color=WHITE, lw=3)

# Key nodes in xz plane
ax1.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax1.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax1.scatter(1, 0, color=BLUE, s=120, zorder=10)
ax1.scatter(1, sqrt3/2, color=RED, s=120, zorder=10)
ax1.scatter(1, -sqrt3/2, color=RED, s=120, zorder=10)
ax1.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s',
            edgecolors=WHITE, facecolors='none', lw=1.5)
ax1.scatter(4, 0, color=PURPLE, s=120, zorder=9, marker='D',
            edgecolors=WHITE, lw=1, alpha=0.8)

# Node labels
ax1.text(-0.35, -0.35, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right')
ax1.text(2.1, -0.25, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold')
ax1.text(1.15, 0.2, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax1.text(1.15, sqrt3/2+0.25, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax1.text(1.15, -sqrt3/2-0.35, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold')
ax1.text(4.1, -0.35, 'horn(0)', color=PURPLE, fontsize=8)

# Evaluator A₂ triangle in xz
tri_xz = np.array([[1, 0], [1, sqrt3/2], [1, -sqrt3/2]])
ax1.fill(tri_xz[:,0], tri_xz[:,1], color=GREEN, alpha=0.15, zorder=5)
for i in range(3):
    j = (i+1)%3
    ax1.plot([tri_xz[i,0], tri_xz[j,0]], [tri_xz[i,1], tri_xz[j,1]],
             color=GREEN, lw=2, alpha=0.8)

# Distance chords in xz
ax1.plot([0, 1], [0, 0], color='#aaffcc', ls=':', lw=1.5)
ax1.text(0.5, -0.2, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold', ha='center')
ax1.text(0.5, sqrt3/4-0.05, r'$\sqrt{3}$', color=GREEN, fontsize=11, fontweight='bold')
ax1.text(1.0, -0.15, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center')
ax1.text(0.5, 0.35, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold')

# Syzygy axis — origin to horn(0) at x=4
ax1.plot([0, 4.2], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax1.text(2.1, 0.28, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8)

# A₂ roots on outer equator in xz — the horn outer equator at x=±4? 
# Actually in side view the outer equator is at x=0, z=±4 (the top and bottom
# of the kidney-bean lobes where the two circles are widest).
# The horn torus outer equator in 3D is at radius 4 from origin in xy.
# In xz (side) view: the outer equator projects to the z-extremal points
# of the two lobes: at (x=0, z=±4) and the x-extremal points at (x=±4, z=0)

# A₂ roots on the outer envelope of the kidney bean
# In this projection, the roots live on the outer equatorial ring
# which in xz appears as the envelope. We'll mark them on the right lobe
# at specific positions reflecting the A₂ geometry.
# The three roots at 0, 2π/3, 4π/3 in the equatorial (xy) plane project to:
# root0 (t=0): (4,0) → xz: (x=4, z=0) ✓
# root1 (t=2π/3): (4*cos, 4*sin) → xz: x = (R+R*cos(θ))*cos(θ), z = (R+R*cos(θ))*sin(θ)
#    but that's the horn(t) parametric... rethinking:
#
# The A₂ carved ring triangle sits on the OUTER EQUATOR of the horn torus:
# radius 4 circle in the xy plane at z=0. In side view (xz, y=0), this
# circle projects as a line segment from x=-4 to x=4 along z=0.
# So the three roots project to: root0 at (4,0), root1 at (-2,0), root2 at (-2,0).
# But root1 and root2 have z=0 in the equatorial plane...
#
# Actually the A₂ roots are on the OUTER EQUATOR. In xz projection:
# root0 (t=0, radius 4): (x=4, z=0)
# root1 (t=2π/3): (x = 4*cos(2π/3) = -2, z = 4*sin(2π/3) = 2√3 ≈ 3.464)
# Wait, the outer equator is just a circle radius 4 in the xy plane.
# In xz projection (y=0), points with y≠0 project to (x, z=0)...
# No wait, the outer equator has z=0 already in 3D. It's in the xy plane.
# So in xz projection: ALL points on the outer equator have z=0.
# They project to the x-axis from x=-4 to x=4.

# So the A₂ triangle on the outer equator becomes a LINE in side view.
# That's kind of boring. Let me instead mark the roots on the horn(t) ring
# projection which gives more interesting geometry.

# Better: the "carved ring" triangle in 3D is on the horn(t) torus ring,
# not the outer equator. Let me compute horn_xz(t) for the three A₂ angles.
for t_ang, lbl in [(0, 'n₊'), (2*np.pi/3, 'n₋'), (4*np.pi/3, 'n₋')]:
    pt = horn_xz(t_ang)  # This gives (x, 0) in xz... still all z=0
    # Since horn(t) is planar in the xy plane (z=0 in 3D),
    # and we're looking from the side (xz),
    # the horn(t) ring projects to the x-axis.

# OK so the A₂ roots at z=0 in 3D, projected to xz, are all on the x-axis.
# Let me just mark them at their x-positions on the z=0 line with some z-offset
# so they're visible. And note that in side view the A₂ triangle collapses to a line.
a2_angles = [0, 2*np.pi/3, 4*np.pi/3]
a2_pts_xz = []
for ang in a2_angles:
    pt = horn_xz(ang)
    a2_pts_xz.append((pt[0], 0.0))

# Mark roots on x-axis with z offset for visibility
for i, (lbl, (px, pz)) in enumerate(zip(['n₊=+1', 'n₋', 'n₋'], a2_pts_xz)):
    offset = 0.35 if i == 0 else -0.35
    ax1.scatter(px, offset, color=GREEN, s=80, zorder=8)
    ax1.text(px, offset+0.2, lbl, color=GREEN, fontsize=7,
             fontweight='bold', ha='center', va='bottom')

# A₂ ring triangle in side view (collapsed to x-axis line segments)
for i in range(3):
    j = (i+1)%3
    ax1.plot([a2_pts_xz[i][0], a2_pts_xz[j][0]], [a2_pts_xz[i][1], a2_pts_xz[j][1]],
             color=GREEN, lw=2, alpha=0.3, zorder=3)

# φ-tangent points: cos(t)=1/φ
# In xz (side) view: the φ-tangent on the horn(t) ring projects to x-axis
phi_xz = horn_xz(tG)
ax1.scatter(phi_xz[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.scatter(horn_xz(-tG)[0], 0, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax1.text(phi_xz[0]+0.15, 0.25, r'$\phi$-tangent', color=WHITE, fontsize=7, alpha=0.9)

# 16 poloidal rings — in xz side view these are the tube cross-section
# markers along the two lobes
for i in range(16):
    ang = i/16*2*np.pi
    # Centre of this poloidal ring along the torus tube centre
    cx = R * np.cos(ang)
    # In xz, the tube at this poloidal angle shows as a circle of radius r_split
    # centred at (cx, 0)... but that's just a circle overlapping the lobes.
    # Let's mark the tube-centre positions instead.
    ax1.scatter(cx, 0, color='#5a659c', s=8, alpha=0.25, zorder=2)

# Bevel gear annotation
ax1.text(1.0, 1.0, 'bevel gear 4:1\n(R:r = 2:0.5)', color=WHITE, fontsize=7,
         ha='center', style='italic', alpha=0.7)

# Kidney-bean label
ax1.text(-3.0, 2.8, '← left lobe', color='#5a659c', fontsize=9, alpha=0.7,
         fontweight='bold')
ax1.text(2.5, 2.8, 'right lobe →', color='#5a659c', fontsize=9, alpha=0.7,
         fontweight='bold')
ax1.text(-0.8, 3.2, 'kidney-bean\ncross-section', color='#5a659c', fontsize=8,
         alpha=0.6, ha='center', style='italic')

ax1.set_xlim(-5.5, 6.0); ax1.set_ylim(-5.5, 5.5)
ax1.grid(True, ls='--', alpha=0.1)
ax1.set_xlabel('x', color=WHITE)
ax1.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 2 — FACE-ON (yz plane, looking into x)
# Torus seen from the front — concentric rings with evaluator spheres
# extending TOWARD THE VIEWER (out of the page = along +x)
# ══════════════════════════════════════════════════════════════════
ax2.set_title('VIEW 2: Face-On (yz plane, looking into x)\nConcentric rings + spheres toward viewer', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Horn torus face-on: for a horn torus (R=r=2) in yz projection
# The torus tube creates concentric circles in yz view
# At x=0: the tube cross-sections appear as concentric rings
for r_val, col, lw, alpha, ls in [(4.0, '#5a659c', 2.5, 0.35, '-'),
                                     (3.0, SLATE, 1.5, 0.3, '--'),
                                     (2.0, '#5a659c', 1.0, 0.2, ':'),
                                     (1.0, ORANGE, 2, 0.5, '--')]:
    ax2.plot(r_val*np.cos(theta), r_val*np.sin(theta),
             color=col, lw=lw, alpha=alpha, ls=ls)

# The pinch at origin
ax2.scatter(0, 0, color=GOLD, s=300, zorder=10, edgecolors=WHITE, lw=1.5)

# Evaluator sphere in yz projection: circle radius 1 at origin
ax2.plot(r_split*np.cos(theta), r_split*np.sin(theta),
         color=BLUE, ls='--', lw=2, alpha=0.7)

# Evaluator nodes in yz plane
ax2.scatter(EVALT[1], EVALT[2], color=BLUE, s=130, zorder=10)
ax2.scatter(EVALF[1], EVALF[2], color=RED, s=130, zorder=10)
ax2.scatter(EVALI[1], EVALI[2], color=RED, s=130, zorder=10)

# Labels
ax2.text(EVALT[1]+0.25, EVALT[2]+0.1, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax2.text(EVALF[1]+0.3, EVALF[2]-0.05, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax2.text(EVALI[1]+0.3, EVALI[2]-0.05, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold')

# Spheres toward viewer arrow
ax2.annotate('Evaluator spheres\n→ toward viewer\n  (at x=1 depth)', 
             xy=(0.5, 0.7), xytext=(0, 1.2),
             arrowprops=dict(arrowstyle='->', color=BLUE, lw=2),
             color=BLUE, fontsize=8, fontweight='bold', va='center')

# Evaluator A₂ triangle in yz
tri_yz = np.array([[EVALT[1], EVALT[2]],
                    [EVALF[1], EVALF[2]],
                    [EVALI[1], EVALI[2]]])
ax2.fill(tri_yz[:,0], tri_yz[:,1], color=GREEN, alpha=0.15, zorder=5)
for i in range(3):
    j = (i+1)%3
    ax2.plot([tri_yz[i,0], tri_yz[j,0]], [tri_yz[i,1], tri_yz[j,1]],
             color=GREEN, lw=2, alpha=0.8)

# Distance annotation: yz chord between EVALT and EVALF
mid_yz = ((EVALT[1]+EVALF[1])/2, (EVALT[2]+EVALF[2])/2)
ax2.text(mid_yz[0]-0.35, mid_yz[1]+0.15, '√3', color=GREEN, fontsize=12, fontweight='bold')

# A₂ roots on outer equator (radius 4) in yz
for ang, lbl in [(0, 'n₊=+1'), (2*np.pi/3, 'n₋'), (4*np.pi/3, 'n₋')]:
    ax2.scatter(4*np.cos(ang), 4*np.sin(ang), color=GREEN, s=80, zorder=8)
    ax2.text(4.35*np.cos(ang), 4.35*np.sin(ang), lbl, color=GREEN, fontsize=7, 
             fontweight='bold', ha='center', va='center')

# A₂ ring triangle (outer equator)
ang_pts = [0, 2*np.pi/3, 4*np.pi/3]
for i in range(3):
    j = (i+1)%3
    ax2.plot([4*np.cos(ang_pts[i]), 4*np.cos(ang_pts[j])],
             [4*np.sin(ang_pts[i]), 4*np.sin(ang_pts[j])],
             color=GREEN, lw=2, alpha=0.5)

# 16 poloidal ring markers
for i in range(16):
    ang = i/16*2*np.pi
    ax2.scatter(3*np.cos(ang), 3*np.sin(ang), color='#5a659c', s=15, alpha=0.3)

# Depth legend
ax2.text(-4.8, 5.1, 'DEPTH (x):', fontsize=8, color=SLATE, fontweight='bold')
ax2.text(-4.8, 4.8, '⊙ pinch: x=0', fontsize=7, color=GOLD)
ax2.text(-4.8, 4.5, 'Evaluators: x=1', fontsize=7, color=BLUE)
ax2.text(-4.8, 4.2, 'horn(0): x=4', fontsize=7, color=PURPLE)

ax2.set_xlim(-5.5, 5.5); ax2.set_ylim(-5.5, 5.5)
ax2.grid(True, ls='--', alpha=0.1)
ax2.set_xlabel('y', color=WHITE)
ax2.set_ylabel('z', color=WHITE)

# ══════════════════════════════════════════════════════════════════
# VIEW 3 — TOP-DOWN (xy plane, z=0) — EQUATORIAL CROSS-SECTION
# ══════════════════════════════════════════════════════════════════
ax3.set_title('VIEW 3: Top-Down (xy plane, z=0)\nEquatorial rings + spheres → right', 
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# Horn torus outer equator
ax3.plot(2*R*np.cos(theta), 2*R*np.sin(theta),
         color='#5a659c', lw=2.5, alpha=0.35)

# Full horn(t) projection ring
ax3.plot(np.array([horn_xy(t) for t in theta])[:,0],
         np.array([horn_xy(t) for t in theta])[:,1],
         color=SLATE, lw=2, alpha=0.45)

# λ_C split shell
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta),
         color=ORANGE, ls='--', lw=2)
ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5,
         color=ORANGE, ls=':', lw=1, alpha=0.35)

# Evaluator sphere (x=1)
ax3.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta),
         color=BLUE, ls='--', lw=2)

# FFUSE3 coupler
ax3.plot([0, 2], [0, 0], color=WHITE, lw=3)

# Key nodes in xy
ax3.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=WHITE, lw=1.5)
ax3.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=WHITE, lw=1)
ax3.scatter(1, 1, color=BLUE, s=120, zorder=10)
ax3.scatter(1, -0.5, color=RED, s=120, zorder=10)
ax3.scatter(LR, 0, color=WHITE, s=70, zorder=10, marker='s',
            edgecolors=WHITE, facecolors='none', lw=1.5)
ax3.scatter(*horn_xy(0), color=PURPLE, s=120, zorder=9, marker='D',
            edgecolors=WHITE, lw=1, alpha=0.8)

# Node labels
ax3.text(-0.35, -0.45, r'$\odot$ (pinch)', color=GOLD, fontsize=9, fontweight='bold', ha='right')
ax3.text(2.1, -0.35, r'$\ni$ FFUSE3', color=BLUE, fontsize=8, fontweight='bold')
ax3.text(1.15, 1.1, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax3.text(1.15, -0.65, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax3.text(horn_xy(0)[0]+0.1, horn_xy(0)[1]-0.5, 'horn(0)', color=PURPLE, fontsize=8)

# A₂ carved ring triangle on outer equator
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

# Evaluator A₂ triangle (collapsed in xy: EVALT, EVALF, EVALI all have x=1)
ax3.plot([1, 1], [1, -0.5], color=GREEN, lw=2, alpha=0.8)
ax3.text(0.85, 0.25, 'A₂ triangle\n(collapsed\nto line in xy)', color=GREEN, fontsize=6, ha='center')

# Distance chords
ax3.plot([0, 1], [0, 1], color='#aaffcc', ls=':', lw=1.5)
ax3.text(0.4, 0.55, r'$\sqrt{2}$', color=GREEN, fontsize=11, fontweight='bold')
ax3.text(0.55, 0.25, r'$\sqrt{3}$ (3D)', color=GREEN, fontsize=11, fontweight='bold')
ax3.text(1.0, -0.2, '2', color=CYAN, fontsize=12, fontweight='bold', ha='center')
ax3.text(0.5, -0.2, r'$\lambda_C$', color=ORANGE, fontsize=10, fontweight='bold')

# Syzygy axis
ax3.plot([0, 4], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax3.text(2.1, 0.35, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8)

# φ-tangent
phi_plus = horn_xy(tG); phi_minus = horn_xy(-tG)
for pt in [phi_plus, phi_minus]:
    ax3.scatter(*pt, color=WHITE, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
ax3.text(phi_plus[0]+0.2, phi_plus[1]+0.15, r'$\phi$-tangent', color=WHITE, fontsize=7)

# 16 poloidal rings
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
print("View 2 (Face-On): concentric rings in yz plane ✓")
print("View 3 (Top-Down): equatorial rings in xy plane ✓")
