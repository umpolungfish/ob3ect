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
fig = plt.figure(figsize=(30, 10))
ax1 = fig.add_subplot(1, 3, 1)
# ax2 created as 3D projection below
# ax3 created as 2D projection below

# Style ax1 (2D axes)
ax1.set_facecolor(DARK)
ax1.set_aspect("equal")
ax1.tick_params(colors=WHITE)
for s in ax1.spines.values():
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
# ══════════════════════════════════════════════════════════════════
# VIEW 2 — CENTRAL PERSPECTIVE (3D, looking down +x into FFUSE3 barrel)
# Horn torus rendered as 3D surface with dual-lobe tube visible:
# near wall (foreground, x>0) and far wall (background, x<0).
# Camera at +x looking back at origin — straight down the FFUSE3 vector.
# ══════════════════════════════════════════════════════════════════
from mpl_toolkits.mplot3d import Axes3D
ax2 = fig.add_subplot(1, 3, 2, projection='3d')
ax2.set_facecolor(DARK)
ax2.xaxis.pane.fill = False
ax2.yaxis.pane.fill = False
ax2.zaxis.pane.fill = False
ax2.xaxis.pane.set_edgecolor(DARK)
ax2.yaxis.pane.set_edgecolor(DARK)
ax2.zaxis.pane.set_edgecolor(DARK)
ax2.tick_params(colors=WHITE, labelsize=7)
ax2.xaxis.label.set_color(WHITE)
ax2.yaxis.label.set_color(WHITE)
ax2.zaxis.label.set_color(WHITE)
ax2.set_title('VIEW 2: Central Perspective (down +x barrel)\nDual-lobe torus + FFUSE3 vector \u2192 viewer',
              color=WHITE, fontsize=14, fontweight='bold', pad=12)

# ── Horn torus surface (R=2, r_tube=2: self-intersecting at origin) ──
n_u, n_v = 180, 120
u_arr = np.linspace(0, 2*np.pi, n_u)
v_arr = np.linspace(0, 2*np.pi, n_v)
U_grid, V_grid = np.meshgrid(u_arr, v_arr)
X_torus = (R + R*np.cos(V_grid)) * np.cos(U_grid)
Y_torus = (R + R*np.cos(V_grid)) * np.sin(U_grid)
Z_torus = R * np.sin(V_grid)

# Face orientation: cos(U) > 0 faces +x (toward viewer)
face_x = np.cos(U_grid)
norm_x = (face_x + 1) / 2  # 0..1

# Surface with colour gradient: cool (far wall) to warm (near wall)
colors_torus = plt.cm.coolwarm(norm_x * 0.55 + 0.22)
ax2.plot_surface(X_torus, Y_torus, Z_torus,
                 facecolors=colors_torus,
                 alpha=0.30, rstride=4, cstride=4,
                 edgecolor='none', antialiased=True)

# Wireframe: poloidal rings (v=const) — show tube circular cross-section
for vi in range(0, n_v, n_v//16):
    ax2.plot(X_torus[vi, :], Y_torus[vi, :], Z_torus[vi, :],
             color='#5a659c', lw=0.7, alpha=0.55)

# Wireframe: toroidal rings (u=const) — show torus wrapping
for ui in range(0, n_u, n_u//14):
    ax2.plot(X_torus[:, ui], Y_torus[:, ui], Z_torus[:, ui],
             color='#5a659c', lw=0.5, alpha=0.30)

# ── Tube centre ring (radius R=2, xy plane, z=0) ──
ring_theta = np.linspace(0, 2*np.pi, 500)
ax2.plot(R*np.cos(ring_theta), R*np.sin(ring_theta), np.zeros_like(ring_theta),
         color='#7a85cc', lw=2.0, alpha=0.75)

# ── Outer equator (radius 4, xy plane) ──
ax2.plot(2*R*np.cos(ring_theta), 2*R*np.sin(ring_theta), np.zeros_like(ring_theta),
         color='#5a659c', lw=1.5, alpha=0.30, ls='--')

# ── Origin pinch (⊙) — the self-intersection ──
ax2.scatter(0, 0, 0, color=GOLD, s=320, zorder=20, edgecolors=WHITE, lw=2)

# ── FFUSE3 vector barrel: thick ray from origin along +x ──
ax2.quiver(0, 0, 0, 5, 0, 0, color=WHITE, lw=3, arrow_length_ratio=0.08,
           alpha=0.9, zorder=15)
# Depth rings along FFUSE3 axis at x=1,2,3,4
for xd in [1, 2, 3, 4]:
    rt = np.linspace(0, 2*np.pi, 100)
    ax2.plot(np.full_like(rt, xd), 0.35*np.cos(rt), 0.35*np.sin(rt),
             color=WHITE, lw=0.7, alpha=0.35, zorder=10)

# ── Evaluator sphere at x=LR=1 ──
sphere_u = np.linspace(0, 2*np.pi, 36)
sphere_v = np.linspace(0, np.pi, 18)
SU, SV = np.meshgrid(sphere_u, sphere_v)
SX = 1 + r_split * np.sin(SV) * np.cos(SU)
SY = r_split * np.sin(SV) * np.sin(SU)
SZ = r_split * np.cos(SV)
ax2.plot_surface(SX, SY, SZ, color=BLUE, alpha=0.18,
                 rstride=4, cstride=4, edgecolor='none')
for vi_e in range(0, 18, 5):
    ax2.plot(SX[vi_e, :], SY[vi_e, :], SZ[vi_e, :],
             color=BLUE, lw=0.6, alpha=0.5)

# ── Evaluator nodes on sphere surface ──
ax2.scatter(*EVALT, color=BLUE, s=150, zorder=18, edgecolors=WHITE, lw=1.5)
ax2.scatter(*EVALF, color=RED, s=150, zorder=18, edgecolors=WHITE, lw=1.5)
ax2.scatter(*EVALI, color=RED, s=150, zorder=18, edgecolors=WHITE, lw=1.5)

# ── A₂ evaluator triangle in 3D (x=1 plane) ──
tri_3d_x = [1, 1, 1]
tri_3d_y = [EVALT[1], EVALF[1], EVALI[1]]
tri_3d_z = [EVALT[2], EVALF[2], EVALI[2]]
for i in range(3):
    j = (i+1)%3
    ax2.plot([tri_3d_x[i], tri_3d_x[j]],
             [tri_3d_y[i], tri_3d_y[j]],
             [tri_3d_z[i], tri_3d_z[j]],
             color=GREEN, lw=2.5, alpha=0.9, zorder=12)

# ── A₂ roots on outer equator ──
a2_roots_3d = [(4*np.cos(a), 4*np.sin(a), 0)
               for a in [0, 2*np.pi/3, 4*np.pi/3]]
a2_labels_3d = ['n\u208a=+1', 'n\u208b', 'n\u208b']
for (rx, ry, rz), lbl in zip(a2_roots_3d, a2_labels_3d):
    ax2.scatter(rx, ry, rz, color=GREEN, s=90, zorder=15, edgecolors=WHITE, lw=1)

# ── Syzygy axis: origin → horn(0) at (4,0,0) ──
ax2.plot([0, 4], [0, 0], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
ax2.scatter(4, 0, 0, color=PURPLE, s=140, zorder=14, marker='D',
            edgecolors=WHITE, lw=1.2)

# ── λ_C split ring at origin (radius r_split=1, yz plane) ──
lc3d = np.linspace(0, 2*np.pi, 200)
ax2.plot(np.zeros_like(lc3d), r_split*np.cos(lc3d), r_split*np.sin(lc3d),
         color=ORANGE, ls='--', lw=2, alpha=0.7, zorder=8)

# ── φ-tangent points on tube centre ring ──
phi_plus_3d = (R*np.cos(tG), R*np.sin(tG), 0)
phi_minus_3d = (R*np.cos(-tG), R*np.sin(-tG), 0)
for pt in [phi_plus_3d, phi_minus_3d]:
    ax2.scatter(*pt, color=WHITE, s=90, zorder=18, edgecolors=GOLD, lw=1.5)

# ── Labels ──
ax2.text(0, 0, -0.8, r'$\odot$ pinch', color=GOLD, fontsize=9, fontweight='bold')
ax2.text(2.2, 0, 0.7, r'$\ni$ FFUSE3', color=WHITE, fontsize=9, fontweight='bold')
ax2.text(1.4, 1.2, 0.3, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax2.text(1.4, -0.6, 1.1, r'$\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax2.text(1.4, -0.6, -0.9, r'$\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold')
ax2.text(4.3, 0, 0.5, 'horn(0)', color=PURPLE, fontsize=8, fontweight='bold')

# ── Near/far lobe annotations ──
ax2.text(1.6, 2.5, 2.5, 'near lobe\n(foreground)', color='#5a659c', fontsize=7,
         ha='center', alpha=0.7, style='italic')
ax2.text(-2.5, -2.5, -2.5, 'far lobe\n(background)', color='#5a659c', fontsize=7,
         ha='center', alpha=0.5, style='italic')

# ── Camera: positioned along +x, looking back at origin ──
# elevation=0 keeps us at z=0 level; azim=0 means from +x toward -x
ax2.view_init(elev=0, azim=0)
ax2.set_xlim(-5, 7)
ax2.set_ylim(-5, 5)
ax2.set_zlim(-5, 5)
ax2.set_xlabel('x \u2192 viewer', color=WHITE, fontsize=9)
ax2.set_ylabel('y', color=WHITE, fontsize=9)
ax2.set_zlabel('z', color=WHITE, fontsize=9)

# Create ax3 as 2D subplot
ax3 = fig.add_subplot(1, 3, 3)
ax3.set_facecolor(DARK)
ax3.set_aspect('equal')
ax3.tick_params(colors=WHITE)
for s in ax3.spines.values():
    s.set_color(WHITE)

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
print("View 2 (Central Perspective): 3D dual-lobe torus down FFUSE3 barrel ✓")
print("View 3 (Top-Down): equatorial rings in xy plane ✓")
