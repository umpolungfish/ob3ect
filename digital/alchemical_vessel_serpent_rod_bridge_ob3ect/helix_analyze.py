#!/usr/bin/env python3
"""Detailed helix geometry analysis."""
import sys, math
sys.path.insert(0, '.')
from continuous_serpent_rod_bridge_ob3ect import (
    build_backbone, vdist, vsub, vdot, vnorm, vcross
)

phi_psi = [(-57.0, -47.0)] * 10
bb = build_backbone(phi_psi)

# Compute CA positions and vectors
print("CA coordinates and sequential vectors:")
for i, res in enumerate(bb):
    print(f"  CA({i}): ({res.ca[0]:7.3f}, {res.ca[1]:7.3f}, {res.ca[2]:7.3f})")

print("\nCA-CA vectors:")
for i in range(len(bb)-1):
    v = vsub(bb[i+1].ca, bb[i].ca)
    print(f"  v{i} = ({v[0]:7.3f}, {v[1]:7.3f}, {v[2]:7.3f})  |v|={vnorm(v):.3f}")

print("\nAngle between successive CA-CA vectors (should be ~100°/residue):")
for i in range(len(bb)-2):
    v1 = vsub(bb[i+1].ca, bb[i].ca)
    v2 = vsub(bb[i+2].ca, bb[i+1].ca)
    cos_a = vdot(v1, v2) / (vnorm(v1)*vnorm(v2) + 1e-10)
    angle = math.degrees(math.acos(max(-1, min(1, cos_a))))
    print(f"  v{i} × v{i+1}: {angle:.1f} deg")

# Compute cumulative angle (should indicate helical turn)
print("\nCumulative turn angle (sum of successive CA-CA angles):")
total_angle = 0
for i in range(len(bb)-2):
    v1 = vsub(bb[i+1].ca, bb[i].ca)
    v2 = vsub(bb[i+2].ca, bb[i+1].ca)
    cos_a = vdot(v1, v2) / (vnorm(v1)*vnorm(v2) + 1e-10)
    angle = math.degrees(math.acos(max(-1, min(1, cos_a))))
    total_angle += angle
    print(f"  After residue {i+2}: {total_angle:.1f} deg cumulative")

# Check dihedral between successive CA-CA vectors
print("\nDihedral angle between CA(i-2)->CA(i-1)->CA(i)->CA(i+1) planes:")
for i in range(2, len(bb)-1):
    p1 = bb[i-2].ca; p2 = bb[i-1].ca; p3 = bb[i].ca; p4 = bb[i+1].ca
    v1 = vsub(p2, p1); v2 = vsub(p3, p2); v3 = vsub(p4, p3)
    n1 = vcross(v1, v2); n2 = vcross(v2, v3)
    cos_d = vdot(n1, n2) / (vnorm(n1)*vnorm(n2) + 1e-10)
    sin_d = vdot(v2, vcross(n1, n2)) / (vnorm(v2)*vnorm(n1)*vnorm(n2) + 1e-10)
    dih = math.degrees(math.atan2(sin_d, cos_d))
    print(f"  CA({i-2})-CA({i-1})-CA({i})-CA({i+1}): {dih:.1f} deg")

# Check phi/psi dihedrals from the built coordinates
print("\nActual phi/psi from backbone coordinates:")
for i in range(1, len(bb)-1):
    # phi_i = C(i-1)-N(i)-CA(i)-C(i)
    p1 = bb[i-1].c; p2 = bb[i].n; p3 = bb[i].ca; p4 = bb[i].c
    v1 = vsub(p2, p1); v2 = vsub(p3, p2); v3 = vsub(p4, p3)
    n1 = vcross(v1, v2); n2 = vcross(v2, v3)
    cos_p = vdot(n1, n2) / (vnorm(n1)*vnorm(n2) + 1e-10)
    sin_p = vdot(v2, vcross(n1, n2)) / (vnorm(v2)*vnorm(n1)*vnorm(n2) + 1e-10)
    phi_actual = math.degrees(math.atan2(sin_p, cos_p))

    # psi_i = N(i)-CA(i)-C(i)-N(i+1)
    p1 = bb[i].n; p2 = bb[i].ca; p3 = bb[i].c; p4 = bb[i+1].n
    v1 = vsub(p2, p1); v2 = vsub(p3, p2); v3 = vsub(p4, p3)
    n1 = vcross(v1, v2); n2 = vcross(v2, v3)
    cos_s = vdot(n1, n2) / (vnorm(n1)*vnorm(n2) + 1e-10)
    sin_s = vdot(v2, vcross(n1, n2)) / (vnorm(v2)*vnorm(n1)*vnorm(n2) + 1e-10)
    psi_actual = math.degrees(math.atan2(sin_s, cos_s))

    print(f"  Residue {i}: phi={phi_actual:.1f} (expected -57)  psi={psi_actual:.1f} (expected -47)")
