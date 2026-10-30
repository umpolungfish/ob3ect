#!/usr/bin/env python3
"""
Three-View Plotter for mOMonadOS Kernel Geometry — ORTHOGRAPHIC (v8)
====================================================================
Improved: CLI args, vector output, main guard, clean view-3 overlays.
Synopsis:
  python plotter3.py [--output path] [--dpi 300] [--format png|svg|pdf] [--title "..."]

View 1: SIDE-ON (xz plane, y=0) — kidney-bean lobe cross-section.
View 2: TOP-DOWN (xy plane, z=0) — equatorial cross-section as rings.
View 3: FACE-ON ORTHO (yz plane, x=0) — two distinct lobe circles + evaluator triangle.
"""
import argparse, os
import matplotlib
import numpy as np
import matplotlib.pyplot as plt

# ─── Constants ──────────────────────────────────────────────────
R = 2.0; r_split = 1.0; sqrt2 = np.sqrt(2); sqrt3 = np.sqrt(3)
phi = (1 + np.sqrt(5)) / 2; inv_phi = 1 / phi; LR = R / 2

EVALT = np.array([1.0, 1.0, 0.0]); EVALF = np.array([1.0, -0.5, sqrt3/2])
EVALI = np.array([1.0, -0.5, -sqrt3/2])
tG = np.arccos(inv_phi)

# ─── Colour palette ─────────────────────────────────────────────
GREEN  = '#009E73'; BLUE   = '#0072B2'; GOLD   = '#E69F00'
ORANGE = '#E69F00'; PURPLE = '#CC79A7'; CYAN   = '#56B4E9'
GREY   = '#888888'; SLATE  = '#9AA7B4'
RED    = '#D55E00'

# INK is the foreground and PAPER the background. They were named WHITE and
# DARK, which is a statement about one theme rather than about their role, and
# that naming is why every one of the ~35 sites below had to mean 'dark'. A
# figure bound for a printed page needs black on nothing; the same geometry
# needs white on near-black on a screen. Same drawing, two bindings.
INK, PAPER = 'white', '#0a0a0a'
TRANSPARENT = False


def set_theme(theme: str) -> None:
    """Bind the foreground and background for the requested theme.

    'print' is black on nothing: the figure carries no background of its own and
    sits on whatever page includes it. 'dark' is the screen theme and remains
    the default, so nothing that already calls this script changes.
    """
    # GREY and SLATE carry the construction lines and the lobe outlines. Both
    # were chosen to sit just above a near-black field, so on white they drop
    # almost to nothing and the construction the figure exists to show goes
    # missing. The hues stay; only the value moves.
    global INK, PAPER, TRANSPARENT, GREY, SLATE
    if theme == "print":
        INK, PAPER, TRANSPARENT = 'black', 'none', True
        GREY, SLATE = '#555555', '#5A6672'
    else:
        INK, PAPER, TRANSPARENT = 'white', '#0a0a0a', False
        GREY, SLATE = '#888888', '#9AA7B4' 

theta = np.linspace(0, 2*np.pi, 500)

def horn_xy(t):
    return np.array([(R+R*np.cos(t))*np.cos(t), (R+R*np.cos(t))*np.sin(t)])

def horn_tube_cross_section_xz():
    left_x = -R + R*np.cos(theta); left_z = R*np.sin(theta)
    right_x = R + R*np.cos(theta); right_z = R*np.sin(theta)
    return left_x, left_z, right_x, right_z


def build_three_view(output_path, dpi=300, fmt='png', title=None, views=(1, 2, 3)):
    """Build the orthographic figure, keeping only the requested views.

    All three are always drawn, because the draw code for each is written
    against its own axes and splitting it would be a larger change than the
    selection is worth. The unwanted axes are removed before the layout is
    computed, so what is saved is a figure of exactly the requested width.

    Selection exists because three panels at 30 inches wide are illegible once
    scaled into a text column: the labels survive the vector export and die on
    the page. One view at page width reads.
    """
    matplotlib.use('Agg')
    fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(30, 10))
    fig.patch.set_facecolor(PAPER)

    for ax in (ax1, ax2, ax3):
        ax.set_facecolor(PAPER); ax.set_aspect("equal")
        ax.tick_params(colors=INK)
        for s in ax.spines.values():
            s.set_color(INK)
        ax.grid(True, ls='--', alpha=0.1)

    # ══════════════════════════════════════════════════════════════
    # VIEW 1 — SIDE-ON (xz plane, y=0)
    # ══════════════════════════════════════════════════════════════
    ax1.set_title('VIEW 1: Side-On (xz plane, y=0)',
                  color=INK, fontsize=14, fontweight='bold', pad=12)

    left_x, left_z, right_x, right_z = horn_tube_cross_section_xz()
    ax1.plot(left_x, left_z, color='#5a659c', lw=2.5, alpha=0.9)
    ax1.plot(right_x, right_z, color='#5a659c', lw=2.5, alpha=0.9)
    ax1.fill(left_x, left_z, color='#5a659c', alpha=0.08)
    ax1.fill(right_x, right_z, color='#5a659c', alpha=0.08)
    ax1.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, marker='o', alpha=0.6)

    # λ_C split shell
    ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
    ax1.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)

    # Evaluator sphere circle
    ax1.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)

    # FFUSE3 coupler
    ax1.plot([0, 2], [0, 0], color=INK, lw=3)

    # Key nodes
    ax1.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=INK, lw=1.5)
    ax1.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=INK, lw=1)
    ax1.scatter(1, 0, color=BLUE, s=120, zorder=10)
    ax1.scatter(1, sqrt3/2, color=RED, s=120, zorder=10)
    ax1.scatter(1, -sqrt3/2, color=RED, s=120, zorder=10)
    ax1.scatter(LR, 0, color=INK, s=70, zorder=10, marker='s',
                edgecolors=INK, facecolors='none', lw=1.5)
    ax1.scatter(4, 0, color=PURPLE, s=120, zorder=9, marker='D',
                edgecolors=INK, lw=1, alpha=0.8)

    # Labels with background boxes
    bbox = dict(facecolor=PAPER, edgecolor='none', pad=2)
    ax1.text(-0.35 if not TRANSPARENT else -1.35, -0.35 if not TRANSPARENT else -1.05,
             r'⊙', color=GOLD, fontsize=9, fontweight='bold',
             ha='right' if not TRANSPARENT else 'center', bbox=bbox)
    ax1.text(2.0, -0.52 if TRANSPARENT else -0.25, r'∋', color=BLUE,
             fontsize=8, fontweight='bold', ha='center' if TRANSPARENT else 'left',
             bbox=bbox)
    ax1.text(1.15, 0.2, '⊤', color=BLUE, fontsize=8,
             fontweight='bold', bbox=bbox) if not TRANSPARENT else \
        ax1.text(1.0, 0.30, '⊤', color=BLUE, fontsize=8, fontweight='bold',
                 ha='center', bbox=bbox)
    ax1.text(1.15, sqrt3/2+0.25, r'⊥', color=RED, fontsize=8,
             fontweight='bold', bbox=bbox)
    ax1.text(1.15, -sqrt3/2-0.35, r'⊞', color=RED, fontsize=8,
             fontweight='bold', bbox=bbox)
    ax1.text(4.0, -0.80 if TRANSPARENT else -0.35, 'horn(0)', color=PURPLE,
             fontsize=8, ha='center' if TRANSPARENT else 'left', bbox=bbox)

    # Evaluator A₂ triangle fill and edges
    tri_xz = np.array([[1, 0], [1, sqrt3/2], [1, -sqrt3/2]])
    ax1.fill(tri_xz[:,0], tri_xz[:,1], color=GREEN, alpha=0.15, zorder=5)
    for i in range(3):
        j = (i+1)%3
        ax1.plot([tri_xz[i,0], tri_xz[j,0]], [tri_xz[i,1], tri_xz[j,1]],
                 color=GREEN, lw=2, alpha=0.8)

    # Distance chords
    ax1.plot([0, 1], [0, 0], color='#aaffcc', ls=':', lw=1.5)
    # Four chord labels inside one shell radius. On screen they are readable at
    # full width; at column width they overlap each other and the pinch label,
    # so print keeps the one the section is about and drops the rest.
    if not TRANSPARENT:
        ax1.text(0.5, -0.2, r'$\sqrt{2}$', color=GREEN, fontsize=11,
                 fontweight='bold', ha='center', bbox=bbox)
        ax1.text(0.5, sqrt3/4-0.05, r'$\sqrt{3}$', color=GREEN, fontsize=11,
                 fontweight='bold', bbox=bbox)
        ax1.text(1.0, -0.15, '2', color=CYAN, fontsize=12,
                 fontweight='bold', ha='center', bbox=bbox)
    ax1.text(0.5, 0.35, r'$\lambda_C$', color=ORANGE, fontsize=10,
             fontweight='bold', ha='center', bbox=bbox)

    # Syzygy axis
    ax1.plot([0, 4.2], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
    if not TRANSPARENT:
        ax1.text(2.1, 0.28, 'syzygy axis', color=PURPLE, fontsize=8, alpha=0.8, bbox=bbox)

    # A₂ roots on outer equator (side view: project to x-axis)
    a2_angles = [0, 2*np.pi/3, 4*np.pi/3]
    a2_pts_xz = [(horn_xy(ang)[0], 0.0) for ang in a2_angles]
    for i, (px, pz) in enumerate(a2_pts_xz):
        offset = 0.35 if i == 0 else -0.35
        ax1.scatter(px, offset, color=GREEN, s=80, zorder=8)
        if not TRANSPARENT:
            ax1.text(px, offset+0.2, ['n₊=+1','n₋','n₋'][i],
                     color=GREEN, fontsize=7, fontweight='bold', ha='center', bbox=bbox)
    for i in range(3):
        j = (i+1)%3
        ax1.plot([a2_pts_xz[i][0], a2_pts_xz[j][0]],
                 [a2_pts_xz[i][1], a2_pts_xz[j][1]],
                 color=GREEN, lw=2, alpha=0.3, zorder=3)

    # φ-tangent loci
    phi_xz = horn_xy(tG)
    ax1.scatter(phi_xz[0], 0, color=INK, s=90, zorder=11,
                edgecolors=GOLD, lw=1.5)
    ax1.scatter(horn_xy(-tG)[0], 0, color=INK, s=90, zorder=11,
                edgecolors=GOLD, lw=1.5)
    if not TRANSPARENT:
        ax1.text(phi_xz[0]+0.15, 0.25, r'$\phi$-tangent', color=INK,
                 fontsize=7, alpha=0.9, bbox=bbox)

    # UCFm constants for side view. Screen chrome: on a page they crowd the frame
    # corner and say nothing the caption cannot, so print omits them.
    if not TRANSPARENT:
        ucfm_side = r"$\alpha^{-1}=137.035999$" + "\n" + r"$m_p/m_e=1836.152$"
        ax1.text(-5.2, 4.8, ucfm_side, color=INK, fontsize=8,
                 ha='left', va='top',
                 bbox=dict(facecolor=PAPER, edgecolor=GOLD, alpha=0.8, pad=4))
    # The section lives in x∈[-4,4.6], z∈[-2.4,2.4]. The screen view pads it to a
    # square that is mostly empty; on a page that empty field is what gets scaled
    # and the geometry shrinks inside it.
    if TRANSPARENT:
        ax1.set_xlim(-4.6, 5.4); ax1.set_ylim(-2.8, 2.8)
    else:
        ax1.set_xlim(-5.5, 6.0); ax1.set_ylim(-5.5, 5.5)
    ax1.set_xlabel('x', color=INK); ax1.set_ylabel('z', color=INK)

    # ══════════════════════════════════════════════════════════════
    # VIEW 2 — TOP-DOWN (xy plane, z=0)
    # ══════════════════════════════════════════════════════════════
    ax2.set_title('VIEW 2: Top-Down (xy plane, z=0)',
                  color=INK, fontsize=14, fontweight='bold', pad=12)

    ax2.plot(2*R*np.cos(theta), 2*R*np.sin(theta), color='#5a659c', lw=2.5, alpha=0.35)
    horn_xy_pts = np.array([horn_xy(t) for t in theta])
    ax2.plot(horn_xy_pts[:,0], horn_xy_pts[:,1], color=SLATE, lw=2, alpha=0.45)

    ax2.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=ORANGE, ls='--', lw=2)
    ax2.plot(r_split*np.cos(theta), r_split*np.sin(theta)*0.5, color=ORANGE, ls=':', lw=1, alpha=0.35)
    ax2.plot(1 + r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, ls='--', lw=2)
    ax2.plot([0, 2], [0, 0], color=INK, lw=3)    # Nodes
    ax2.scatter(0, 0, color=GOLD, s=280, zorder=10, edgecolors=INK, lw=1.5)
    ax2.scatter(2, 0, color=BLUE, s=160, zorder=10, edgecolors=INK, lw=1)
    ax2.scatter(1, 1, color=BLUE, s=120, zorder=10)
    ax2.scatter(1, -0.5, color=RED, s=120, zorder=10)
    ax2.scatter(LR, 0, color=INK, s=70, zorder=10, marker='s',
                edgecolors=INK, facecolors='none', lw=1.5)
    ax2.scatter(*horn_xy(0), color=PURPLE, s=120, zorder=9, marker='D',
                edgecolors=INK, lw=1, alpha=0.8)

    # Labels
    bbox2 = dict(facecolor=PAPER, edgecolor='none', pad=2)
    ax2.text(-0.35, -0.45, r'⊙', color=GOLD, fontsize=9,
             fontweight='bold', ha='right', bbox=bbox2)
    ax2.text(2.1, -0.35, r'∋', color=BLUE, fontsize=8,
             fontweight='bold', bbox=bbox2)
    ax2.text(1.15, 1.1, '⊤', color=BLUE, fontsize=8,
             fontweight='bold', bbox=bbox2)
    ax2.text(1.15, -0.65, r'⊥', color=RED, fontsize=8,
             fontweight='bold', bbox=bbox2)
    ax2.text(horn_xy(0)[0]+0.1, horn_xy(0)[1]-0.5, 'horn(0)',
             color=PURPLE, fontsize=8, bbox=bbox2)

    # A₂ roots on outer equator
    root0 = (4, 0); root1 = (4*np.cos(2*np.pi/3), 4*np.sin(2*np.pi/3))
    root2 = (4*np.cos(4*np.pi/3), 4*np.sin(4*np.pi/3))
    for rpt in [root0, root1, root2]:
        ax2.scatter(*rpt, color=GREEN, s=80, zorder=8)
    for (x1,y1),(x2,y2) in [(root0,root1),(root1,root2),(root2,root0)]:
        ax2.plot([x1,x2],[y1,y2], color=GREEN, lw=2, alpha=0.5)

    for pt, lbl, ang in [(root0, 'n₊=+1', 0), (root1, 'n₋', 2*np.pi/3),
                          (root2, 'n₋', 4*np.pi/3)]:
        ax2.text((4+0.55)*np.cos(ang), (4+0.55)*np.sin(ang), lbl,
                 color=GREEN, fontsize=7, fontweight='bold',
                 ha='center', va='center', bbox=bbox2)

    # A₂ triangle (collapsed to line in xy)
    ax2.plot([1, 1], [1, -0.5], color=GREEN, lw=2, alpha=0.8)
    ax2.text(0.85, 0.25, 'A₂ triangle\n(collapsed\nto line in xy)',
             color=GREEN, fontsize=6, ha='center', bbox=bbox2)

    # Distance annotations
    ax2.plot([0, 1], [0, 1], color='#aaffcc', ls=':', lw=1.5)
    ax2.text(0.4, 0.55, r'$\sqrt{2}$', color=GREEN, fontsize=11,
             fontweight='bold', bbox=bbox2)
    ax2.text(0.55, 0.25, r'$\sqrt{3}$ (3D)', color=GREEN, fontsize=11,
             fontweight='bold', bbox=bbox2)
    ax2.text(1.0, -0.2, '2', color=CYAN, fontsize=12,
             fontweight='bold', ha='center', bbox=bbox2)
    ax2.text(0.5, -0.2, r'$\lambda_C$', color=ORANGE, fontsize=10,
             fontweight='bold', bbox=bbox2)

    # Syzygy axis
    ax2.plot([0, 4], [0, 0], color=PURPLE, ls='--', lw=2, alpha=0.6)
    ax2.text(2.1, 0.35, 'syzygy axis', color=PURPLE, fontsize=8,
             alpha=0.8, bbox=bbox2)

    # φ-tangent loci
    phi_plus = horn_xy(tG); phi_minus = horn_xy(-tG)
    for pt in [phi_plus, phi_minus]:
        ax2.scatter(*pt, color=INK, s=90, zorder=11, edgecolors=GOLD, lw=1.5)
    ax2.text(phi_plus[0]+0.2, phi_plus[1]+0.15, r'$\phi$-tangent',
             color=INK, fontsize=7, bbox=bbox2)

    # 16 poloidal rings
    for i in range(16):
        u = i/16*2*np.pi; rc = np.array([R*np.cos(u), R*np.sin(u)])
        ax2.plot([(R-r_split)*rc[0]/R, (R+r_split)*rc[0]/R],
                 [(R-r_split)*rc[1]/R, (R+r_split)*rc[1]/R],
                 color='#5a659c', lw=0.5, alpha=0.2)

    # UCFm constants for top-down view
    ucfm_top = r"Gear ratio = 4" + "\n" + r"$m_\tau/m_e = 3476.785$" + "\n" + r"$\pi$ (curvature)"
    ax2.text(-5.2, 4.8, ucfm_top, color=INK, fontsize=8,
             ha='left', va='top',
             bbox=dict(facecolor=PAPER, edgecolor=GOLD, alpha=0.8, pad=4))

    ax2.set_xlim(-5.5, 5.5); ax2.set_ylim(-5.5, 5.5)
    ax2.set_xlabel('x', color=INK); ax2.set_ylabel('y', color=INK)

    # ══════════════════════════════════════════════════════════════
    # VIEW 3 — FACE-ON ORTHO (yz plane, x=0)
    # ══════════════════════════════════════════════════════════════
    ax3.set_title('VIEW 3: Face-On Ortho (yz plane, x=0)',
                  color=INK, fontsize=14, fontweight='bold', pad=12)

    # Torus lobes: left (y=-2) and right (y=+2) circles
    left_lobe_y = -R + R*np.cos(theta); left_lobe_z = R*np.sin(theta)
    right_lobe_y = R + R*np.cos(theta); right_lobe_z = R*np.sin(theta)

    ax3.plot(left_lobe_y, left_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Left Lobe')
    ax3.plot(right_lobe_y, right_lobe_z, color='#5a659c', lw=2.5, alpha=0.9, label='Right Lobe')
    ax3.fill(left_lobe_y, left_lobe_z, color='#5a659c', alpha=0.08)
    ax3.fill(right_lobe_y, right_lobe_z, color='#5a659c', alpha=0.08)
    ax3.scatter([-R, R], [0, 0], color='#5a659c', s=40, zorder=8, alpha=0.6)
    ax3.text(-R, -2.4, 'Left Lobe (y=-2)', color='#5a659c', fontsize=8,
             ha='center', bbox=bbox2)
    ax3.text(R, -2.4, 'Right Lobe (y=+2)', color='#5a659c', fontsize=8,
             ha='center', bbox=bbox2)

    # Evaluator / Bloch / FFUSE3 sphere — single compound circle with layered styling
    # Instead of 3 identical overlapping circles, use a single thick circle with
    # a dash-dot-dash pattern that conveys all three roles
    ax3.plot(r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, lw=3,
             alpha=0.5, label='Evaluator / Bloch / FFUSE3 sphere (r=1)')
    # Inner ring for depth
    ax3.plot(r_split*0.92*np.cos(theta), r_split*0.92*np.sin(theta),
             color=ORANGE, ls='--', lw=1, alpha=0.4)
    ax3.fill(r_split*np.cos(theta), r_split*np.sin(theta), color=BLUE, alpha=0.06)    # Center pinch
    ax3.scatter(0, 0, color=GOLD, s=280, zorder=15, edgecolors=INK, lw=1.5)
    ax3.text(0, -0.4, r'⊙', color=INK,
             fontsize=8, fontweight='bold', ha='center', bbox=bbox2)

    # Evaluator A₂ triangle nodes in yz projection
    ev_y = [EVALT[1], EVALF[1], EVALI[1]]
    ev_z = [EVALT[2], EVALF[2], EVALI[2]]

    ax3.scatter(ev_y[0], ev_z[0], color=BLUE, s=140, zorder=18,
                edgecolors=INK, lw=1.5)
    ax3.scatter(ev_y[1], ev_z[1], color=RED, s=140, zorder=18,
                edgecolors=INK, lw=1.5)
    ax3.scatter(ev_y[2], ev_z[2], color=RED, s=140, zorder=18,
                edgecolors=INK, lw=1.5)

    # A₂ evaluator triangle fill and edges
    ax3.fill(ev_y, ev_z, color=GREEN, alpha=0.18, zorder=12)
    for i in range(3):
        j = (i+1)%3
        ax3.plot([ev_y[i], ev_y[j]], [ev_z[i], ev_z[j]],
                 color=GREEN, lw=2.0, alpha=0.9, zorder=14)

    # Labels for evaluator nodes
    ax3.text(ev_y[0]+0.2, ev_z[0], '⊤', color=BLUE, fontsize=8,
             fontweight='bold', va='center', bbox=bbox2)
    ax3.text(ev_y[1]-0.2, ev_z[1]+0.2, r'⊥', color=RED,
             fontsize=8, fontweight='bold', ha='right', bbox=bbox2)
    ax3.text(ev_y[2]-0.2, ev_z[2]-0.2, r'⊞', color=RED,
             fontsize=8, fontweight='bold', ha='right', bbox=bbox2)

    # UCFm constants for face-on view
    ucfm_face = r"$\sin^2\theta_W = 3/13 = 0.230769$" + "\n" + r"$m_\mu/m_e = 206.769$"
    ax3.text(-5.2, 4.8, ucfm_face, color=INK, fontsize=8,
             ha='left', va='top',
             bbox=dict(facecolor=PAPER, edgecolor=GOLD, alpha=0.8, pad=4))

    ax3.set_xlim(-5.5, 5.5); ax3.set_ylim(-5.5, 5.5)
    ax3.set_xlabel('y', color=INK); ax3.set_ylabel('z', color=INK)

    # ══════════════════════════════════════════════════════════════
    # SAVE
    # ══════════════════════════════════════════════════════════════
    if title:
        fig.suptitle(title, color=INK, fontsize=16, fontweight='bold', y=1.02)

    for n, ax in ((1, ax1), (2, ax2), (3, ax3)):
        if n not in views:
            fig.delaxes(ax)
    # Font sizes are in points and the figure is placed at a fixed width, so the
    # only lever on apparent type size is the panel's own inches: a 10-inch panel
    # scaled into a text column takes its 9pt labels down to about 2pt. Print
    # halves the panel, which doubles the type at the same placed width.
    # bbox_inches crops to the drawn content, which is roughly a third of the
    # declared figure width because the axes carry wide empty margins. So the
    # saved file is much narrower than the panel, and including it at \linewidth
    # MAGNIFIES it — a 7-inch panel cropped to 186pt and blown up to a 390pt
    # column took 8pt labels to about 17pt. The panel is therefore sized so the
    # cropped result lands near column width and is placed at 1:1, which is the
    # only arrangement in which the declared point sizes mean what they say.
    panel = 15 if TRANSPARENT else 10
    fig.set_size_inches(panel * len(views), panel)
    if TRANSPARENT:
        # The panel title repeats the caption on a page and is the one label
        # guaranteed to collide with the plot at column width.
        for ax in fig.axes:
            ax.set_title('')

    plt.tight_layout(pad=2.0)
    plt.savefig(output_path, dpi=dpi, facecolor=PAPER, edgecolor='none',
                bbox_inches='tight', transparent=TRANSPARENT)
    fsize = os.path.getsize(output_path)
    print(f"✅ Saved '{output_path}' ({fsize} bytes, {fsize/1024:.1f} KB, {fmt.upper()})")
    print(f"   View 1 (Side-On): kidney-bean lobes in xz plane ✓")
    print(f"   View 2 (Top-Down): equatorial rings in xy plane ✓")
    print(f"   View 3 (Face-On): side-by-side lobes + evaluator triangle on circle ✓")
    plt.close(fig)
    return output_path


def cli():
    parser = argparse.ArgumentParser(
        description='mOMonadOS Kernel Geometry — Three-View Orthographic Plotter')
    parser.add_argument('--output', '-o',
                        default='/home/mrnob0dy666/imsgct/ob3ect/kernel_three_view.png',
                        help='Output path')
    parser.add_argument('--dpi', type=int, default=300, help='Resolution (default: 300)')
    parser.add_argument('--format', '-f', choices=['png','svg','pdf'], default='png',
                        help='Output format (default: png)')
    parser.add_argument('--title', '-t', default=None, help='Figure title (suptitle)')
    parser.add_argument('--theme', choices=['dark', 'print'], default='dark',
                        help="'dark' for screen (default), 'print' for black on "
                             "a transparent background, for inclusion in a paper")
    parser.add_argument('--views', default='1,2,3',
                        help="Which views to keep, e.g. '1' or '1,3' (default: all)")
    args = parser.parse_args()
    set_theme(args.theme)
    views = tuple(int(v) for v in args.views.split(',') if v.strip())

    out = args.output
    if not out.lower().endswith(('.png','.svg','.pdf')):
        out = os.path.splitext(out)[0] + '.' + args.format

    matplotlib.use('Agg')
    build_three_view(out, dpi=args.dpi, fmt=args.format, title=args.title, views=views)


if __name__ == '__main__':
    cli()