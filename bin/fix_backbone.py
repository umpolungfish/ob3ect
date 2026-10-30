#!/usr/bin/env python3
"""Fix backbone geometry: replace _place_atom and build_backbone.
Uses 4-atom dihedral convention (A-B-C-D rotates around B-C)."""
import os, math

VESSEL = os.path.expanduser(
    "~/ob3ect/digital/alchemical_vessel_serpent_rod_bridge_ob3ect/continuous_serpent_rod_bridge_ob3ect.py"
)

with open(VESSEL) as f:
    text = f.read()

# Step 1: Replace _place_atom with _place_atom_correct that uses 3 reference atoms
# Find the old _place_atom function
idx_old = text.find('def _place_atom(prev, prev_prev,')
if idx_old < 0:
    print("_place_atom not found!")
    exit(1)

remainder = text[idx_old:]
end_idx = remainder.find('\ndef ')
if end_idx < 0:
    end_idx = len(remainder)
old_fn = remainder[:end_idx]

new_fn = '''def _place_atom_correct(prev, prev_prev, prev_prev_prev, bond_len, bond_angle, dihedral):
    """Place atom D bonded to C given reference atom A.
    
    Standard dihedral convention: A-B-C-D rotates around B-C bond.
    prev_prev_prev=A, prev_prev=B, prev=C, new atom=D.
    dihedral=0 -> D in plane A-B-C (cis to A).
    dihedral=pi -> D opposite to A relative to B-C (trans to A).
    """
    v_bc = (prev[0]-prev_prev[0], prev[1]-prev_prev[1], prev[2]-prev_prev[2])
    n_bc = math.sqrt(v_bc[0]**2+v_bc[1]**2+v_bc[2]**2)
    if n_bc < 1e-10: v_bc = (0.0,0.0,1.0); n_bc = 1.0
    
    # z-axis along B->C
    z = (v_bc[0]/n_bc, v_bc[1]/n_bc, v_bc[2]/n_bc)
    
    # Vector from A to B (defines reference plane A-B-C)
    v_ab = (prev_prev[0]-prev_prev_prev[0], prev_prev[1]-prev_prev_prev[1], prev_prev[2]-prev_prev_prev[2])
    n_ab = math.sqrt(v_ab[0]**2+v_ab[1]**2+v_ab[2]**2)
    if n_ab < 1e-10: v_ab = (0.0,-1.0,0.0); n_ab = 1.0
    
    # x-axis: component of v_ab perpendicular to z (the B-C bond direction)
    # This gives the direction to A in the plane perpendicular to B-C
    dot_ab_z = (v_ab[0]*z[0] + v_ab[1]*z[1] + v_ab[2]*z[2]) / n_ab
    x_un = (v_ab[0]/n_ab - dot_ab_z*z[0], v_ab[1]/n_ab - dot_ab_z*z[1], v_ab[2]/n_ab - dot_ab_z*z[2])
    xn = math.sqrt(x_un[0]**2+x_un[1]**2+x_un[2]**2)
    if xn < 1e-10:
        x_un = (1.0,0.0,0.0) if abs(z[0])<0.9 else (0.0,1.0,0.0)
        d2 = x_un[0]*z[0]+x_un[1]*z[1]+x_un[2]*z[2]
        x_un = (x_un[0]-d2*z[0], x_un[1]-d2*z[1], x_un[2]-d2*z[2])
        xn = math.sqrt(x_un[0]**2+x_un[1]**2+x_un[2]**2)
    x = (x_un[0]/xn, x_un[1]/xn, x_un[2]/xn)
    
    # y-axis: z × x (right-handed orthonormal frame)
    y = (z[1]*x[2]-z[2]*x[1], z[2]*x[0]-z[0]*x[2], z[0]*x[1]-z[1]*x[0])
    
    # Local coordinates of D in the (x,y,z) frame
    # dihedral=0: D in x-z plane (cis to A)
    # dihedral=pi: D opposite (trans to A)
    local = (bond_len*math.sin(bond_angle)*math.cos(dihedral),
             bond_len*math.sin(bond_angle)*math.sin(dihedral),
             -bond_len*math.cos(bond_angle))
    
    return (prev[0]+local[0]*x[0]+local[1]*y[0]+local[2]*z[0],
            prev[1]+local[0]*x[1]+local[1]*y[1]+local[2]*z[1],
            prev[2]+local[0]*x[2]+local[1]*y[2]+local[2]*z[2])

# Keep old _place_atom as fallback for building frames that don't need 4-atom convention
_place_atom = _place_atom_correct
'''

text = text.replace(old_fn, new_fn)
print(f"Replaced _place_atom ({len(old_fn)} chars)")

# Step 2: Replace build_backbone to use _place_atom_correct with 3 reference atoms
idx_bb = text.find('def build_backbone(phi_psi:')
if idx_bb < 0:
    print("build_backbone not found!")
    exit(1)

remainder2 = text[idx_bb:]
end_idx2 = remainder2.find('\n\n# Vector utilities')
if end_idx2 < 0:
    end_idx2 = len(remainder2)
old_bb = remainder2[:end_idx2]

new_bb = '''def build_backbone(phi_psi: List[Tuple[float,float]],
                   ss_types: Optional[List[str]] = None) -> List[BackboneAtom]:
    """Build protein backbone from phi/psi angles.
    
    CORRECT dihedral convention:
    Each residue i has:
      phi_i = C_{i-1}-N_i-CA_i-C_i (rotation around N_i-CA_i)
      psi_i = N_i-CA_i-C_i-N_{i+1} (rotation around CA_i-C_i)
      omega_i = CA_i-C_i-N_{i+1}-CA_{i+1} (peptide bond, trans=pi)
    
    Uses _place_atom_correct with 3-atom reference for correct dihedral zero-point.
    """
    n_res = len(phi_psi)
    if n_res == 0: return []
    residues = []
    
    # ── First residue (i=0): place at origin ──
    n0 = (0.0, 0.0, 0.0)  # N at origin
    ca0 = (BOND_N_CA, 0.0, 0.0)  # CA along x
    
    # Virtual atom before N0 to define reference plane for phi_0
    virtual = (-1.0, 0.0, 0.0)
    
    # C0: placed from CA0 and N0 with phi_0 (rotation around N0-CA0)
    phi_0 = math.radians(phi_psi[0][0])
    c0 = _place_atom_correct(ca0, n0, virtual, BOND_CA_C, ANGLE_N_CA_C, phi_0)
    
    # O0: along CA0-C0 direction
    od = (ca0[0]-c0[0], ca0[1]-c0[1], ca0[2]-c0[2])
    ol = math.sqrt(od[0]**2+od[1]**2+od[2]**2)
    o0 = (c0[0]+od[0]*BOND_C_O/ol, c0[1]+od[1]*BOND_C_O/ol, c0[2]+od[2]*BOND_C_O/ol) if ol>0.01 else (c0[0],c0[1]+BOND_C_O,c0[2])
    residues.append(BackboneAtom(n=n0, ca=ca0, c=c0, o=o0))
    
    # ── Subsequent residues ──
    for i in range(1, n_res):
        pr = residues[-1]  # previous residue
        phi_i = math.radians(phi_psi[i][0])   # phi for this residue
        psi_prev = math.radians(phi_psi[i-1][1])  # psi of previous residue
        
        # For N_i: we need a 4-atom dihedral N_{i-1}-CA_{i-1}-C_{i-1}-N_i
        # Reference atom = N_{i-1} (pr.n)
        # Central bond = CA_{i-1}-C_{i-1} (pr.ca -> pr.c)
        # psi_{i-1} = rotation around CA_{i-1}-C_{i-1}
        ni = _place_atom_correct(pr.c, pr.ca, pr.n, BOND_C_N, ANGLE_CA_C_N, psi_prev)
        
        # For CA_i: dihedral C_{i-1}-N_i-CA_i-C_i (omega=pi for trans peptide)
        # Reference atom = C_{i-1} (pr.c)
        # Central bond = N_i -> CA_i
        # omega = pi (trans peptide)
        cai = _place_atom_correct(ni, pr.c, pr.n, BOND_N_CA, ANGLE_C_N_CA, -math.pi)

        # For C_i: dihedral N_i-CA_i-C_i-O_i (phi_i determines C_i position)
        # Reference atom = N_i (ni)
        # Central bond = CA_i -> C_i... 
        # Wait: phi_i = C_{i-1}-N_i-CA_i-C_i rotates around N_i-CA_i
        # So C_i rotates around N_i-CA_i
        ci = _place_atom_correct(ni, pr.c, pr.n, BOND_CA_C, ANGLE_N_CA_C, phi_i)
        # Hmm, that's not right either. Let me think...
        # C_i is bonded to CA_i. The dihedral for placing C_i is:
        # Something-N_i-CA_i-C_i
        # where "Something" defines the reference plane
        # The reference should be C_{i-1} (pr.c), giving C_{i-1}-N_i-CA_i-C_i
        # But _place_atom_correct(prev, prev_prev, ref, ...) rotates around prev_prev->prev
        # prev = CA_i (cai), prev_prev = N_i (ni), ref = C_{i-1} (pr.c)
        # This rotates C_i around N_i->CA_i with reference plane C_{i-1}-N_i-CA_i
        # This IS phi_i!
        
        # Actually the code above is wrong. Let me redo it.
        # For CA_i: dihedral N_{i-1}-CA_{i-1}-C_{i-1}-N_i... wait, CA_i placement
        # CA_i is bonded to N_i
        # The dihedral for CA_i is X-C_{i-1}-N_i-CA_i where X defines ref plane
        # The rotation is around C_{i-1}-N_i
        # For trans omega: this should be pi
        
        # Let me just place C_i and handle the rest correctly:
        # CA_i: bonded to N_i, ref=C_{i-1}, dihedral=pi (omega)
        cai = _place_atom_correct(ni, pr.c, pr.n, BOND_N_CA, ANGLE_C_N_CA, math.pi)
        
        # C_i: bonded to CA_i, ref=N_i, dihedral=phi_i (C_{i-1}-N_i-CA_i-C_i)
        ci = _place_atom_correct(cai, ni, pr.c, BOND_CA_C, ANGLE_N_CA_C, phi_i)
        
        # O_i: along CA_i-C_i direction
        od2 = (cai[0]-ci[0], cai[1]-ci[1], cai[2]-ci[2])
        ol2 = math.sqrt(od2[0]**2+od2[1]**2+od2[2]**2)
        oi = (ci[0]+od2[0]*BOND_C_O/ol2, ci[1]+od2[1]*BOND_C_O/ol2, ci[2]+od2[2]*BOND_C_O/ol2) if ol2>0.01 else (ci[0],ci[1]+BOND_C_O,ci[2])
        residues.append(BackboneAtom(n=ni, ca=cai, c=ci, o=oi))
    
    return residues
'''

text = text.replace(old_bb, new_bb)
print(f"Replaced build_backbone ({len(old_bb)} chars)")

with open(VESSEL, 'w') as f:
    f.write(text)
print("Written successfully")
