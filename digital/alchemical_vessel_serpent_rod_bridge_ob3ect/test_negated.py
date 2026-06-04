#!/usr/bin/env python3
"""Test if negating dihedral angles fixes the helix geometry."""
import sys, math
sys.path.insert(0, '.')
from continuous_serpent_rod_bridge_ob3ect import (
    build_backbone, vdist, _place_atom_correct, BOND_N_CA, BOND_CA_C,
    BOND_C_N, BOND_C_O, ANGLE_N_CA_C, ANGLE_CA_C_N, ANGLE_C_N_CA, BackboneAtom
)

# Negate angles: the IUPAC convention has opposite sign to right-hand rule
# IUPAC: positive = clockwise looking from B to C
# _place_atom_correct: positive = counterclockwise (right-hand rule)
# So IUPAC φ = -57° → counterclockwise → pass +57°
# And IUPAC ψ = -47° → counterclockwise → pass +47°
phi_psi = [(57.0, 47.0)] * 10  # NEGATED angles
bb = build_backbone(phi_psi)

print(f"Built {len(bb)} residues with NEGATED alpha-helix angles (+57, +47)")
for i, res in enumerate(bb):
    if i < 5 or i >= len(bb)-1:
        print(f"  {i}: N({res.n[0]:7.3f},{res.n[1]:7.3f},{res.n[2]:7.3f}) "
              f"CA({res.ca[0]:7.3f},{res.ca[1]:7.3f},{res.ca[2]:7.3f})")
    elif i == 5:
        print(f"  ...")

# Check N(i)->O(i+4) distances
print("\nH-bond patterns (N(i)->O(i+4)):")
for i in range(len(bb) - 4):
    d = vdist(bb[i].n, bb[i+4].o)
    print(f"  N({i}) -> O({i+4}): {d:.3f} A (ideal ~3.0)")

# Check CA(i)->CA(i+1) distances
print("\nCA-CA distances:")
for i in range(len(bb) - 1):
    d = vdist(bb[i].ca, bb[i+1].ca)
    print(f"  CA({i}) -> CA({i+1}): {d:.3f} A (ideal ~3.8)")

# NCO angle check
print("\nN-CA-C bond angle check:")
for i in range(len(bb)):
    v1 = (bb[i].n[0]-bb[i].ca[0], bb[i].n[1]-bb[i].ca[1], bb[i].n[2]-bb[i].ca[2])
    v2 = (bb[i].c[0]-bb[i].ca[0], bb[i].c[1]-bb[i].ca[1], bb[i].c[2]-bb[i].ca[2])
    dot = v1[0]*v2[0]+v1[1]*v2[1]+v1[2]*v2[2]
    n1 = math.sqrt(v1[0]**2+v1[1]**2+v1[2]**2)
    n2 = math.sqrt(v2[0]**2+v2[1]**2+v2[2]**2)
    angle = math.degrees(math.acos(dot/(n1*n2)))
    print(f"  N-CA-C({i}): {angle:.1f} deg (ideal ~111)")
    if i >= 3:
        break
