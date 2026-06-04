#!/usr/bin/env python3
"""Test a rewritten _place_atom_correct with clear IUPAC dihedral convention."""
import math
import sys
sys.path.insert(0, '.')

BOND_N_CA = 1.458; BOND_CA_C = 1.525; BOND_C_N = 1.329; BOND_C_O = 1.231
ANGLE_N_CA_C = math.radians(111.0)
ANGLE_CA_C_N = math.radians(116.2)
ANGLE_C_N_CA = math.radians(121.7)

def _place_atom_correct_new(prev, prev_prev, prev_prev_prev, bond_len, bond_angle, dihedral):
    """Place D bonded to C.

    IUPAC convention: A-B-C-D
    dihedral=0: D cis to A (same side of B-C as A)
    dihedral>0: RIGHT-handed rotation looking from B to C (clockwise)
    dihedral<0: LEFT-handed rotation looking from B to C (counterclockwise)
    """
    # z-axis along B→C (unit vector)
    dx = prev[0] - prev_prev[0]
    dy = prev[1] - prev_prev[1]
    dz = prev[2] - prev_prev[2]
    n_bc = math.sqrt(dx*dx + dy*dy + dz*dz)
    if n_bc < 1e-10:
        return (prev[0], prev[1] + bond_len, prev[2])
    zx = dx / n_bc; zy = dy / n_bc; zz = dz / n_bc

    # Vector A→B (from prev_prev_prev to prev_prev)
    ax = prev_prev[0] - prev_prev_prev[0]
    ay = prev_prev[1] - prev_prev_prev[1]
    az = prev_prev[2] - prev_prev_prev[2]
    n_ab = math.sqrt(ax*ax + ay*ay + az*az)
    if n_ab < 1e-10:
        ax = 1.0; ay = 0.0; az = 0.0; n_ab = 1.0

    # x-axis: component of A→B perpendicular to z
    # x points in the direction of A from BC (toward A's side of the bond)
    dot_ab_z = (ax*zx + ay*zy + az*zz) / n_ab
    xx = ax/n_ab - dot_ab_z*zx
    xy = ay/n_ab - dot_ab_z*zy
    xz = az/n_ab - dot_ab_z*zz
    nx = math.sqrt(xx*xx + xy*xy + xz*xz)
    if nx < 1e-10:
        xx = 1.0; xy = 0.0; xz = 0.0
        d2 = xx*zx + xy*zy + xz*zz
        xx -= d2*zx; xy -= d2*zy; xz -= d2*zz
        nx = math.sqrt(xx*xx + xy*xy + xz*xz)
        if nx < 1e-10:
            xx = 0.0; xy = 1.0; xz = 0.0
            d2 = xx*zx + xy*zy + xz*zz
            xx -= d2*zx; xy -= d2*zy; xz -= d2*zz
            nx = math.sqrt(xx*xx + xy*xy + xz*xz)
    xx /= nx; xy /= nx; xz /= nx

    # y-axis: z × x (RIGHT-handed cross product)
    # Looking from B to C: +x is toward A, +y is to the right
    yx = zy*xz - zz*xy
    yy = zz*xx - zx*xz
    yz = zx*xy - zy*xx

    # Local coordinates of D in the (x, y, z) frame
    # The angle between C→D and B→C is (180 - bond_angle)
    # So D_z = bond_len * cos(180 - bond_angle) = -bond_len*cos(bond_angle)
    # D_xy = bond_len * sin(bond_angle)
    #
    # IUPAC: positive dihedral = clockwise looking from B to C
    # = LEFT-handed rotation around +z from x to y
    # = right-hand rule NEGATIVE around +z
    # So we use -dihedral in the standard rotation formula
    local_x = bond_len * math.sin(bond_angle) * math.cos(-dihedral)
    local_y = bond_len * math.sin(bond_angle) * math.sin(-dihedral)
    local_z = -bond_len * math.cos(bond_angle)

    return (prev[0] + local_x*xx + local_y*yx + local_z*zx,
            prev[1] + local_x*xy + local_y*yy + local_z*zy,
            prev[2] + local_x*xz + local_y*yz + local_zz*zz)

print("Module loaded. Testing dihedral convention...")
