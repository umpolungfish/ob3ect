#!/usr/bin/env python3
"""Debug backbone geometry."""
import sys, math
sys.path.insert(0, '/home/mrnob0dy666/ob3ect/digital/alchemical_vessel_serpent_rod_bridge_ob3ect')
from continuous_serpent_rod_bridge_ob3ect import *

def debug_backbone(phi_psi, label=""):
    print(f"\n=== {label} ===")
    bb = build_backbone(phi_psi)
    for i, b in enumerate(bb):
        if i >= 6: break
        print(f"  Res {i}: N={b.n}, CA={b.ca}, C={b.c}, O={b.o}")
    # CA-CA rise per residue
    print("  CA-CA distances:")
    for i in range(1, min(10, len(bb))):
        d = vdist(bb[i].ca, bb[i-1].ca)
        print(f"    {i-1}->{i}: {d:.3f}")
    # i->i+4 N-O distances
    print("  i->i+4 N-O distances:")
    for i in range(len(bb)-4):
        d = vdist(bb[i].n, bb[i+4].o)
        print(f"    {i}->{i+4}: {d:.3f}")

# Test 1: phi=0, psi=0 (all-trans, extended)
debug_backbone([(0,0)]*10, "phi=0, psi=0")

# Test 2: phi=-57, psi=-47 (canonical alpha-helix)
debug_backbone([(-57,-47)]*10, "phi=-57, psi=-47")

# Test 3: phi=-90, psi=0 (extended/beta)
debug_backbone([(-90,0)]*10, "phi=-90, psi=0")

# Test 4: phi=0, psi=-90
debug_backbone([(0,-90)]*10, "phi=0, psi=-90")

# Test 5: phi=-120, psi=140 (beta-sheet)
debug_backbone([(-120,140)]*10, "phi=-120, psi=140 (beta)")

# What's the helix axis direction?
print("\n=== Helix check (phi=-57, psi=-47) ===")
bb = build_backbone([(-57,-47)]*10)
# Compute vectors between consecutive CA atoms
for i in range(1, len(bb)):
    v = vsub(bb[i].ca, bb[i-1].ca)
    print(f"  CA_{i-1}->CA_{i}: ({v[0]:.3f}, {v[1]:.3f}, {v[2]:.3f})")
