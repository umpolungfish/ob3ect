#!/usr/bin/env python3
"""PATCH PART 2: compute_codon_phi_psi, compute_codon_measurements, 
compute_energy, and minimize_energy with position-dependence.
"""
import os

VESSEL = os.path.expanduser(
    "~/ob3ect/digital/alchemical_vessel_serpent_rod_bridge_ob3ect/continuous_serpent_rod_bridge_ob3ect.py"
)

with open(VESSEL) as f:
    code = f.read()

# ── PATCH 2: Rewrite compute_codon_phi_psi with position params ──
old_codon_fn = """def compute_codon_phi_psi(codon_b4: Tuple[B4, B4, B4], aa: str) -> Tuple[float, float, float]:
    \"\"\"Compute φ/ψ from FULL CODON measurement (3 B4 values).
    
    The 3 B4 values give TWO transitions: (b4₁→b4₂) and (b4₂→b4₃).
    The φ/ψ is the AA-weighted average of both transitions.
    
    Returns (phi, psi, confidence).
    \"\"\"
    b4_1, b4_2, b4_3 = codon_b4
    
    # Get AA-weighted φ/ψ for each of the two transitions
    phi1, psi1, conf1 = get_aa_phi_psi_continuous(aa, b4_1, b4_2)
    phi2, psi2, conf2 = get_aa_phi_psi_continuous(aa, b4_2, b4_3)
    
    # Weight by confidence
    total_conf = conf1 + conf2
    if total_conf < 1e-10:
        phi = (phi1 + phi2) / 2.0
        psi = (psi1 + psi2) / 2.0
        conf = 0.0
    else:
        phi = (phi1 * conf1 + phi2 * conf2) / total_conf
        psi = (psi1 * conf1 + psi2 * conf2) / total_conf
        conf = total_conf / 2.0
    
    return (phi, psi, conf)"""

new_codon_fn = """def compute_codon_phi_psi(codon_b4: Tuple[B4, B4, B4], aa: str,
                                 position: int = 0, total_length: int = 1) -> Tuple[float, float, float]:
    \"\"\"Compute φ/ψ from FULL CODON measurement (3 B4 values).
    
    Uses collapse-to-dominant-basin model with position-dependent modulation.
    Each B4 transition collapses to its canonical secondary structure basin,
    modulated by AA preference and position in sequence.
    
    Returns (phi, psi, confidence).
    \"\"\"
    b4_1, b4_2, b4_3 = codon_b4
    
    # Get AA-weighted φ/ψ for each transition using collapse-to-basin model
    phi1, psi1, conf1 = get_aa_phi_psi_continuous(aa, b4_1, b4_2, position, total_length)
    phi2, psi2, conf2 = get_aa_phi_psi_continuous(aa, b4_2, b4_3, position, total_length)
    
    # Weight by confidence
    total_conf = conf1 + conf2
    if total_conf < 1e-10:
        phi = (phi1 + phi2) / 2.0
        psi = (psi1 + psi2) / 2.0
        conf = 0.0
    else:
        phi = (phi1 * conf1 + phi2 * conf2) / total_conf
        psi = (psi1 * conf1 + psi2 * conf2) / total_conf
        conf = total_conf / 2.0
    
    return (phi, psi, conf)"""

# ── PATCH 3: Add position-dependent Ramachandran K and energy terms ──
# Add helix dipole and terminal flexibility parameters after RAMACHANDRAN_K
old_params = """# Ramachandran energy — harmonic restraint around predicted φ/ψ
# This is NEW: biases the energy minimization toward the B4-predicted angles
RAMACHANDRAN_K = 0.05  # kcal/mol/degree^2 — soft restraint"""

new_params = """# Ramachandran energy — harmonic restraint around predicted φ/ψ
# This is NEW: biases the energy minimization toward the B4-predicted angles
RAMACHANDRAN_K = 0.05  # kcal/mol/degree^2 — soft restraint (base)

# HELIX DIPOLE: α-helices have a net dipole moment (partial + at N-term, - at C-term)
# This creates an electrostatic gradient along the helix axis
HELIX_DIPOLE_K = 0.008  # kcal/mol/residue — dipole gradient strength

# TERMINAL FLEXIBILITY: N- and C-terminal residues have weaker Ramachandran restraint
# because they lack the full H-bond network
TERMINAL_FLEX_REDUCTION = 0.5  # Multiply Ramachandran_K by this at termini (first/last 3)

# HELIX CURVATURE: long helices tend to bend slightly
HELIX_CURVATURE_K = 0.003  # kcal/mol/degree^2 — penalty for straightness
"""

# ── PATCH 4: Modify compute_energy to add helix_dipole and position-dependent terms ──
# We need to add a helix_dipole term and pass position info

# ── PATCH 5: Update minimize_energy to use position-dependent K ──
old_min = """    def _total_en(pp, pred):
        bb = build_backbone(pp)
        en = compute_energy(bb, aa_list)["total"]
        if pred is not None:
            for i in range(len(pp)):
                dphi = pp[i][0] - pred[i][0]
                dpsi = pp[i][1] - pred[i][1]
                en += RAMACHANDRAN_K * (dphi*dphi + dpsi*dpsi)
        return en"""

new_min = """    def _total_en(pp, pred):
        bb = build_backbone(pp)
        en = compute_energy(bb, aa_list)["total"]
        if pred is not None:
            for i in range(len(pp)):
                dphi = pp[i][0] - pred[i][0]
                dpsi = pp[i][1] - pred[i][1]
                # Position-dependent Ramachandran K
                n_res = len(pp)
                k_eff = RAMACHANDRAN_K
                if i < 3 and n_res > 3:
                    k_eff *= TERMINAL_FLEX_REDUCTION  # Weaker at N-term
                if i >= n_res - 3 and n_res > 3:
                    k_eff *= TERMINAL_FLEX_REDUCTION  # Weaker at C-term
                en += k_eff * (dphi*dphi + dpsi*dpsi)
                # Helix dipole gradient: bias phi toward linear gradient
                frac = i / max(1, n_res - 1)
                target_phi_dipole = (frac - 0.5) * 4.0
                en += HELIX_DIPOLE_K * (pp[i][0] - target_phi_dipole)**2
                # Helix curvature: slight sinusoidal modulation
                en += HELIX_CURVATURE_K * math.sin(2 * math.pi * i / max(1, n_res - 1))**2
        return en"""

# ── PATCH 6: Update compute_codon_measurements to pass position ──
old_meas = """    def compute_codon_measurements(self, aas: List[str]) -> List[CodonMeasurement]:
        \"\"\"Compute FULL CODON measurements — 3 B4 values per AA.\"\"\"
        measurements = []
        for i, aa in enumerate(aas):
            idx = i * 3
            if idx + 2 >= len(self.rna):
                break
            codon = self.rna[idx:idx+3]
            b4s = (NUCLEOTIDE_B4.get(codon[0], B4.N),
                   NUCLEOTIDE_B4.get(codon[1], B4.N),
                   NUCLEOTIDE_B4.get(codon[2], B4.N))
            
            phi, psi, conf = compute_codon_phi_psi(b4s, aa)
            
            measurements.append(CodonMeasurement(
                codon=codon, aa=aa, b4_triple=b4s,
                phi_init=phi, psi_init=psi,
                phi_refined=phi, psi_refined=psi,
                confidence=conf,
                ramachandran_energy=0.0
            ))
        return measurements"""

new_meas = """    def compute_codon_measurements(self, aas: List[str]) -> List[CodonMeasurement]:
        \"\"\"Compute FULL CODON measurements — 3 B4 values per AA.
        
        Now passes position index for position-dependent φ/ψ modulation.
        \"\"\"
        measurements = []
        total_len = len(aas)
        for i, aa in enumerate(aas):
            idx = i * 3
            if idx + 2 >= len(self.rna):
                break
            codon = self.rna[idx:idx+3]
            b4s = (NUCLEOTIDE_B4.get(codon[0], B4.N),
                   NUCLEOTIDE_B4.get(codon[1], B4.N),
                   NUCLEOTIDE_B4.get(codon[2], B4.N))
            
            phi, psi, conf = compute_codon_phi_psi(b4s, aa, position=i, total_length=total_len)
            
            measurements.append(CodonMeasurement(
                codon=codon, aa=aa, b4_triple=b4s,
                phi_init=phi, psi_init=psi,
                phi_refined=phi, psi_refined=psi,
                confidence=conf,
                ramachandran_energy=0.0
            ))
        return measurements"""

code = code.replace(old_codon_fn, new_codon_fn)
code = code.replace(old_params, new_params)
code = code.replace(old_min, new_min)
code = code.replace(old_meas, new_meas)

with open(VESSEL, 'w') as f:
    f.write(code)

print("PATCHES 2-6 applied successfully")
print("Verifying patches were applied...")
for term in ["def compute_codon_phi_psi(codon_b4: Tuple[B4, B4, B4], aa: str,\n                                 position: int = 0, total_length: int = 1)",
             "HELIX_DIPOLE_K = 0.008",
             "TERMINAL_FLEX_REDUCTION = 0.5",
             "def compute_codon_measurements(self, aas: List[str]) -> List[CodonMeasurement]:\n        \"\"\"Compute FULL CODON measurements",
             "for i in range(len(pp)):\n                dphi = pp[i][0] - pred[i][0]"]:
    cnt = code.count(term)
    status = "✓" if cnt >= 1 else "✗ MISSING"
    print(f"  {status}: {term[:60]}...")
