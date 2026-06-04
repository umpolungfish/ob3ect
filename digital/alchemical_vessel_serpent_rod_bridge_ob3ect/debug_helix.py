#!/usr/bin/env python3
"""Debug the backbone geometry for alpha-helix."""
import sys, math
sys.path.insert(0, '.')
from continuous_serpent_rod_bridge_ob3ect import (
    build_backbone, vdist, _place_atom_correct, BOND_N_CA, BOND_CA_C,
    BOND_C_N, BOND_C_O, ANGLE_N_CA_C, ANGLE_CA_C_N, ANGLE_C_N_CA, BackboneAtom
)

# Helix angles (-57, -47) — canonical right-handed alpha helix
phi_psi = [(-57.0, -47.0)] * 10
bb = build_backbone(phi_psi)

print(f"Built {len(bb)} residues with alpha-helix angles")
for i, res in enumerate(bb):
    print(f"  {i}: N({res.n[0]:7.3f},{res.n[1]:7.3f},{res.n[2]:7.3f}) "
          f"CA({res.ca[0]:7.3f},{res.ca[1]:7.3f},{res.ca[2]:7.3f})")

# Check N(i)->O(i+4) distances
print("\nH-bond patterns:")
for i in range(len(bb) - 4):
    d = vdist(bb[i].n, bb[i+4].o)
    print(f"  N({i}) -> O({i+4}): {d:.3f} A (ideal ~3.0)")

# Check N(i)->N(i+1) distances (peptide bond length)
print("\nPeptide bond lengths:")
for i in range(len(bb) - 1):
    d = vdist(bb[i].c, bb[i+1].n)
    print(f"  C({i}) -> N({i+1}): {d:.3f} A (ideal ~1.33)")

# Check CA(i)->CA(i+1) distances
print("\nCA-CA distances:")
for i in range(len(bb) - 1):
    d = vdist(bb[i].ca, bb[i+1].ca)
    print(f"  CA({i}) -> CA({i+1}): {d:.3f} A (ideal ~3.8)")

# Helix rise per residue
print("\nHelix axis (approximate):")
for i in range(len(bb) - 1):
    d = vdist(bb[i].ca, bb[i+1].ca)
    print(f"  Rise per residue ({i}->{i+1}): {d:.3f} A (ideal ~1.5 along axis)")
