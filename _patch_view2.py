#!/usr/bin/env python3
"""Patch plotter_three_view.py: replace View 2 with 3D perspective down FFUSE3 barrel.

Strategy: Read the file, find View 2 line range (268-352), replace with 3D surface plot.
Also fix the subplot creation line.
"""
import re

path = '/home/mrnob0dy666/imsgct/ob3ect/plotter_three_view.py'

with open(path, 'r') as f:
    text = f.read()

###############################################################################
# 1. Fix subplot creation: replace plt.subplots(1,3) with explicit fig + 2D/3D
###############################################################################
old_subplot = "fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(30, 10))"
new_subplot = (
    "fig = plt.figure(figsize=(30, 10))\n"
    "ax1 = fig.add_subplot(1, 3, 1)\n"
    "# ax2 created as 3D projection below\n"
    "# ax3 created as 2D projection below\n"
)
text = text.replace(old_subplot, new_subplot)

# We also need ax3 = fig.add_subplot(1, 3, 3) — View 3 code references ax3
# The old code references ax3, let's find where View 3 uses it
# Actually ax3 is first used in the "ax3.set_title" line. We should create ax3
# right before View 3 section. Let's handle that via text replacement.

# Find the View 3 comment boundary and insert ax3 creation before it
old_v3_header = "# VIEW 3 — TOP-DOWN (xy plane, z=0) — EQUATORIAL CROSS-SECTION"
new_v3_header = (
    "# Create ax3 as 2D subplot\n"
    "ax3 = fig.add_subplot(1, 3, 3)\n"
    "ax3.set_facecolor(DARK)\n"
    "ax3.set_aspect('equal')\n"
    "ax3.tick_params(colors=WHITE)\n"
    "for s in ax3.spines.values():\n"
    "    s.set_color(WHITE)\n"
    "\n"
    "# VIEW 3 — TOP-DOWN (xy plane, z=0) — EQUATORIAL CROSS-SECTION"
)
text = text.replace(old_v3_header, new_v3_header)

###############################################################################
# 2. Find the View 2 section boundaries
###############################################################################
v2_marker = "# VIEW 2 — FACE-ON (yz plane, looking into x)"
v3_marker = "# Create ax3 as 2D subplot"  # after our replacement above

idx_v2 = text.index(v2_marker)
idx_v3 = text.index(v3_marker)

###############################################################################
# 3. Build the replacement View 2 (3D perspective)
###############################################################################
new_v2 = """# ══════════════════════════════════════════════════════════════════
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
ax2.set_title('VIEW 2: Central Perspective (down +x barrel)\\nDual-lobe torus + FFUSE3 vector \\u2192 viewer',
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
a2_labels_3d = ['n\\u208a=+1', 'n\\u208b', 'n\\u208b']
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
ax2.text(0, 0, -0.8, r'$\\odot$ pinch', color=GOLD, fontsize=9, fontweight='bold')
ax2.text(2.2, 0, 0.7, r'$\\ni$ FFUSE3', color=WHITE, fontsize=9, fontweight='bold')
ax2.text(1.4, 1.2, 0.3, '+ EVALT', color=BLUE, fontsize=8, fontweight='bold')
ax2.text(1.4, -0.6, 1.1, r'$\\times$ EVALF', color=RED, fontsize=8, fontweight='bold')
ax2.text(1.4, -0.6, -0.9, r'$\\sqcap$ EVALI', color=RED, fontsize=8, fontweight='bold')
ax2.text(4.3, 0, 0.5, 'horn(0)', color=PURPLE, fontsize=8, fontweight='bold')

# ── Near/far lobe annotations ──
ax2.text(1.6, 2.5, 2.5, 'near lobe\\n(foreground)', color='#5a659c', fontsize=7,
         ha='center', alpha=0.7, style='italic')
ax2.text(-2.5, -2.5, -2.5, 'far lobe\\n(background)', color='#5a659c', fontsize=7,
         ha='center', alpha=0.5, style='italic')

# ── Camera: positioned along +x, looking back at origin ──
# elevation=0 keeps us at z=0 level; azim=0 means from +x toward -x
ax2.view_init(elev=0, azim=0)
ax2.set_xlim(-5, 7)
ax2.set_ylim(-5, 5)
ax2.set_zlim(-5, 5)
ax2.set_xlabel('x \\u2192 viewer', color=WHITE, fontsize=9)
ax2.set_ylabel('y', color=WHITE, fontsize=9)
ax2.set_zlabel('z', color=WHITE, fontsize=9)

"""

# Splice: old View 2 section replaced by new
text = text[:idx_v2] + new_v2 + text[idx_v3:]

# Write back
with open(path, 'w') as f:
    f.write(text)

print("PATCH APPLIED — View 2 replaced with 3D perspective")