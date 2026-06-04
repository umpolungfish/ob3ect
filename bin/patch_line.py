#!/usr/bin/env python3
"""Line-based patcher for the vessel file."""
import os

VESSEL = os.path.expanduser(
    "~/ob3ect/digital/alchemical_vessel_serpent_rod_bridge_ob3ect/continuous_serpent_rod_bridge_ob3ect.py"
)

with open(VESSEL) as f:
    lines = f.readlines()

# ── PATCH 1: get_aa_phi_psi_continuous (lines 187-240) ──
new_get = r'''def get_aa_phi_psi_continuous(aa: str, b4_from: B4, b4_to: B4,
                              position: int = 0, total_length: int = 1) -> Tuple[float, float, float]:
    """Compute φ/ψ for an AA given a B4 transition via COLLAPSE-TO-DOMINANT-BASIN.

    Instead of averaging ALL 16 eigenstates (which gives non-physical intermediate
    φ/ψ), this uses the canonical φ/ψ of the specific transition as the attractor,
    then modulates by the AA's Ramachandran preference.

    The key insight: the B4 transition defines a secondary structure BASIN (helix,
    sheet, turn, loop). The φ/ψ COLLAPSES to that basin's canonical values, not to
    a weighted average of all basins.

    The AA identity determines the STRENGTH of collapse - if the AA strongly prefers
    this basin (e.g., Ala for helix), the collapse is tight. If not (e.g., Pro for
    helix), the collapse is loose and shifts toward the AA's Ramachandran centroid.

    Also applies position-dependent modulation for terminal effects.

    Returns (phi, psi, confidence).
    """
    if aa not in AA_RAMACHANDRAN_WEIGHTS:
        aa = "Ala"

    base_weights = AA_RAMACHANDRAN_WEIGHTS[aa]

    # Find the specific transition's index and canonical phi/psi
    try:
        t_idx = TRANSITIONS.index((b4_from, b4_to))
    except ValueError:
        t_idx = 0

    canon = B4_TRANSITION_EIGENSTATES[(b4_from, b4_to)]
    phi_c, psi_c = canon["phi"], canon["psi"]

    # Compute AA's Ramachandran centroid as weighted average over ALL transitions
    max_w = max(base_weights)
    total_w = sum(base_weights)
    phi_centroid = sum(base_weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["phi"]
                       for i in range(16)) / max(total_w, 1e-10)
    psi_centroid = sum(base_weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["psi"]
                       for i in range(16)) / max(total_w, 1e-10)

    # COLLAPSE: blend between canonical phi/psi and AA centroid
    w_aa = base_weights[t_idx]
    blend = w_aa / max_w  # 1.0 = perfect preference, 0.0 = AA hates this transition
    confidence = blend

    phi = blend * phi_c + (1.0 - blend) * phi_centroid
    psi = blend * psi_c + (1.0 - blend) * psi_centroid

    # --- Position-dependent modulation ---
    # N-terminal (first 3): +5-10 deg in phi, broader psi (less constrained)
    # C-terminal (last 3): slight unwinding, negative psi shift
    # Middle: helix dipole gradient

    n_term = position < 3 and total_length > 3
    c_term = position >= total_length - 3 and total_length > 3

    if n_term:
        nf = 1.0 - position * 0.3
        phi += 8.0 * nf
        psi += 5.0 * nf

    if c_term:
        cf = (position - (total_length - 4)) * 0.3
        phi -= 2.0 * cf
        psi -= 6.0 * cf

    # Helix dipole gradient
    frac = position / max(1, total_length - 1)
    dipole_delta = (frac - 0.5) * 3.0
    phi += dipole_delta * 0.3
    psi += dipole_delta * 0.2

    return (phi, psi, min(1.0, confidence * 1.5))

'''

# Find the end of get_aa_phi_psi_continuous function
# It ends at the return statement, followed by the next section header
end_get = 240  # The line after the function

# Replace lines 187-240
new_lines = lines[:186] + [new_get] + lines[end_get:]
lines = new_lines

print(f"PATCH 1 applied: get_aa_phi_psi_continuous at line 187")

with open(VESSEL, 'w') as f:
    f.writelines(lines)
print("Written successfully")
