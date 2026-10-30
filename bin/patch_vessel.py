#!/usr/bin/env python3
"""PATCH: Position-dependent collapse-to-basin measurement + energy terms.
Replaces the weighted-average-of-all-16-eigenstates approach with a 
collapse-to-dominant-secondary-structure-basin model.
"""
import os, re, shutil

VESSEL = os.path.expanduser(
    "~/ob3ect/digital/alchemical_vessel_serpent_rod_bridge_ob3ect/continuous_serpent_rod_bridge_ob3ect.py"
)

# Read the full file
with open(VESSEL) as f:
    code = f.read()

# ── PATCH 1: Replace get_aa_phi_psi_continuous ──
old_func = """def get_aa_phi_psi_continuous(aa: str, b4_from: B4, b4_to: B4) -> Tuple[float, float, float]:
    \"\"\"Compute CONTINUOUS φ/ψ for an AA given a B4 transition.
    
    Instead of returning the single canonical (φ, ψ) for the transition,
    computes a WEIGHTED AVERAGE over ALL 16 transitions, where the weights
    are the AA's Ramachandran preferences modulated by the similarity of
    each transition to the actual (b4_from→b4_to) event.
    
    Returns (phi, psi, confidence) where confidence ∈ [0,1] indicates
    how concentrated the weight distribution is.
    \"\"\"
    if aa not in AA_RAMACHANDRAN_WEIGHTS:
        aa = "Ala"  # default
    
    base_weights = AA_RAMACHANDRAN_WEIGHTS[aa]
    
    # Modulate weights by similarity to the actual transition
    # Peak at the matching transition, fall off smoothly for non-matching
    modulated = []
    for idx, (f, t) in enumerate(TRANSITIONS):
        w = base_weights[idx]
        # Boost if this transition matches or is structurally similar
        if f == b4_from and t == b4_to:
            w *= 3.0  # Exact match gets 3x boost
        elif f == b4_from or t == b4_to:
            w *= 1.5  # Partial match (same from OR same to)
        elif f == b4_from and t != b4_to:
            w *= 1.2  # Same starting state
        elif f != b4_from and t == b4_to:
            w *= 1.2  # Same ending state
        modulated.append(w)
    
    # Normalize to probability distribution
    total = sum(modulated)
    if total < 1e-10:
        modulated = [1.0/16] * 16
        total = 1.0
    weights = [w / total for w in modulated]
    
    # Compute weighted average φ/ψ
    phi_w = sum(weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["phi"] for i in range(16))
    psi_w = sum(weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["psi"] for i in range(16))
    
    # Confidence: inverse of the effective number of transitions contributing
    # Lower effective_N → higher confidence (concentrated distribution)
    effective_N = 1.0 / sum(w * w for w in weights)
    confidence = 1.0 - min(1.0, (effective_N - 1.0) / 15.0)
    
    return (phi_w, psi_w, confidence)"""

new_func = """def get_aa_phi_psi_continuous(aa: str, b4_from: B4, b4_to: B4,
                              position: int = 0, total_length: int = 1) -> Tuple[float, float, float]:
    \"\"\"Compute φ/ψ for an AA given a B4 transition via COLLAPSE-TO-DOMINANT-BASIN.
    
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
    \"\"\"
    if aa not in AA_RAMACHANDRAN_WEIGHTS:
        aa = "Ala"
    
    base_weights = AA_RAMACHANDRAN_WEIGHTS[aa]
    
    # Find the specific transition's index and canonical φ/ψ
    try:
        t_idx = TRANSITIONS.index((b4_from, b4_to))
    except ValueError:
        t_idx = 0
    
    canon = B4_TRANSITION_EIGENSTATES[(b4_from, b4_to)]
    phi_c, psi_c = canon["phi"], canon["psi"]
    
    # Compute AA's Ramachandran centroid (preferred φ/ψ) as weighted average
    # over ALL transitions using the AA's base weights (unmodulated)
    max_w = max(base_weights)
    phi_centroid = sum(base_weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["phi"] 
                       for i in range(16)) / max(sum(base_weights), 1e-10)
    psi_centroid = sum(base_weights[i] * B4_TRANSITION_EIGENSTATES[TRANSITIONS[i]]["psi"] 
                       for i in range(16)) / max(sum(base_weights), 1e-10)
    
    # COLLAPSE: blend between canonical φ/ψ and AA centroid
    # If the AA strongly prefers this transition (w ≈ max_w), collapse is tight
    # to canonical. If not, pull toward AA centroid.
    w_aa = base_weights[t_idx]
    blend = w_aa / max_w  # 1.0 = perfect preference, 0.0 = AA hates this transition
    
    # The confidence is how strongly the AA prefers this transition
    confidence = blend
    
    # Blend φ/ψ
    phi = blend * phi_c + (1.0 - blend) * phi_centroid
    psi = blend * psi_c + (1.0 - blend) * psi_centroid
    
    # --- Position-dependent modulation ---
    # N-terminal (first 3): +5-10° in φ, broader ψ (more flexible/less constrained)
    # C-terminal (last 3): slight unwinding, negative ψ shift
    # Middle: helix dipole gradient (linear shift along sequence)
    
    n_term = position < 3 and total_length > 3
    c_term = position >= total_length - 3 and total_length > 3
    
    if n_term:
        nf = 1.0 - position * 0.3  # 1.0, 0.7, 0.4 for pos 0,1,2
        phi += 8.0 * nf
        psi += 5.0 * nf  # Slightly broader in ψ
    
    if c_term:
        cf = (position - (total_length - 4)) * 0.3  # 0.3, 0.6, 0.9 for pos -3,-2,-1
        phi -= 2.0 * cf  # Slight φ negative shift
        psi -= 6.0 * cf  # Unwinding in ψ (more negative)
    
    # Helix dipole gradient: for helix-favoring positions in the middle,
    # apply a gradual linear shift proportional to position along the sequence
    frac = position / max(1, total_length - 1)
    dipole_delta = (frac - 0.5) * 4.0  # ±2° gradient along helix
    phi += dipole_delta * 0.3
    psi += dipole_delta * 0.2
    
    return (phi, psi, min(1.0, confidence * 1.5))"""
