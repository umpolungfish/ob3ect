#!/usr/bin/env python3
"""Diagnose the backbone geometry by computing expected CA-CA angles."""
import sys, math
sys.path.insert(0, '.')
from continuous_serpent_rod_bridge_ob3ect import (
    build_backbone, vdist, vsub, vdot, vnorm, vcross,
    _place_atom_correct, _build_frame,
    BOND_N_CA, BOND_CA_C, BOND_C_N, BOND_C_O,
    ANGLE_N_CA_C, ANGLE_CA_C_N, ANGLE_C_N_CA, BackboneAtom
)

# Test: what's the angle between CA(i-1)->CA(i) and CA(i)->CA(i+1) for alpha-helix?
phi_psi = [(-57.0, -47.0)] * 5
bb = build_backbone(phi_psi)

# Compute CA-CA vectors and their angles
print("CA-CA vectors and angles between successive vectors:")
for i in range(1, len(bb)-1):
    v1 = vsub(bb[i].ca, bb[i-1].ca)
    v2 = vsub(bb[i+1].ca, bb[i].ca)
    cos_theta = vdot(v1, v2) / (vnorm(v1)*vnorm(v2) + 1e-10)
    theta = math.degrees(math.acos(max(-1, min(1, cos_theta))))
    print(f"  CA({i-1})->CA({i}) × CA({i})->CA({i+1}): {theta:.1f} deg (ideal ~100 deg for alpha-helix)")

# Direct test: compute expected C position given N and CA with specific phi
print("\n--- Direct placement test ---")
n0 = (0.0, 0.0, 0.0)
ca0 = (1.458, 0.0, 0.0)

# Place C0 with phi=-57 using _place_atom_correct
phi0 = math.radians(-57.0)
virtual = (-1.0, 0.0, 0.0)
c0 = _place_atom_correct(ca0, n0, virtual, BOND_CA_C, ANGLE_N_CA_C, phi0)
print(f"C0 with phi=-57: ({c0[0]:.3f}, {c0[1]:.3f}, {c0[2]:.3f})")

# Place N1 with psi=-47 using _place_atom_correct
psi0 = math.radians(-47.0)
n1 = _place_atom_correct(c0, ca0, n0, BOND_C_N, ANGLE_CA_C_N, psi0)
print(f"N1 with psi=-47: ({n1[0]:.3f}, {n1[1]:.3f}, {n1[2]:.3f})")

# Place CA1 with omega=180 (trans)
ca1 = _place_atom_correct(n1, c0, ca0, BOND_N_CA, ANGLE_C_N_CA, math.pi)
print(f"CA1 with omega=180: ({ca1[0]:.3f}, {ca1[1]:.3f}, {ca1[2]:.3f})")

# Now verify: what angle does CA0-C0-N1 make?
print("\nAngle CA0-C0-N1:")
v1 = vsub(c0, ca0)
v2 = vsub(n1, c0)
cos_ang = vdot(v1, v2) / (vnorm(v1)*vnorm(v2) + 1e-10)
ang = math.degrees(math.acos(max(-1, min(1, cos_ang))))
print(f"  Expected: 116.2 deg, Got: {ang:.1f} deg")

# Dihedral N0-CA0-C0-N1 (should equal psi0 = -47)
def dihedral(p1, p2, p3, p4):
    """Compute dihedral angle between p1-p2-p3-p4."""
    v1 = vsub(p2, p1)
    v2 = vsub(p3, p2)
    v3 = vsub(p4, p3)
    # Normal to plane 1: v1 × v2
    n1 = vcross(v1, v2)
    # Normal to plane 2: v2 × v3
    n2 = vcross(v2, v3)
    cos_dih = vdot(n1, n2) / (vnorm(n1)*vnorm(n2) + 1e-10)
    sin_dih = vdot(v2, vcross(n1, n2)) / (vnorm(v2)*vnorm(n1)*vnorm(n2) + 1e-10)
    return math.degrees(math.atan2(sin_dih, cos_dih))

dih = dihedral(n0, ca0, c0, n1)
print(f"\nDihedral N0-CA0-C0-N1: {dih:.1f} deg (should be psi0=-47)")

# Dihedral C0-N1-CA1-C1 (should be phi1=-57)
phi1 = math.radians(-57.0)
c1 = _place_atom_correct(ca1, n1, c0, BOND_CA_C, ANGLE_N_CA_C, phi1)
dih2 = dihedral(c0, n1, ca1, c1)
print(f"Dihedral C0-N1-CA1-C1: {dih2:.1f} deg (should be phi1=-57)")

# CA0-CA1 distance
d_ca = vdist(ca0, ca1)
print(f"\nCA0-CA1 distance: {d_ca:.3f} A (ideal ~3.8)")

# Vector angle CA0->CA1 and CA1->CA2
v_ca01 = vsub(ca1, ca0)
# For CA2, compute next step
n2 = _place_atom_correct(c1, ca1, n1, BOND_C_N, ANGLE_CA_C_N, math.radians(-47.0))
ca2 = _place_atom_correct(n2, c1, ca1, BOND_N_CA, ANGLE_C_N_CA, math.pi)
v_ca12 = vsub(ca2, ca1)
cos_ca = vdot(v_ca01, v_ca12) / (vnorm(v_ca01)*vnorm(v_ca12) + 1e-10)
ca_ang = math.degrees(math.acos(max(-1, min(1, cos_ca))))
print(f"Angle CA0-CA1-CA2: {ca_ang:.1f} deg (ideal ~100 deg for alpha-helix)")
print(f"CA1-CA2 distance: {vdist(ca1, ca2):.3f} A")
