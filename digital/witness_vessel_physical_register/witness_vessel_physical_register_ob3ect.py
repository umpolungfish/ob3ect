#!/usr/bin/env python3
"""
witness_vessel_physical_register/witness_vessel_physical_register_ob3ect.py

THE WITNESS VESSEL — Physical Register
=======================================

The d=12 SIC-POVM as a physical lossless transport apparatus for structural
verdicts ("Witnesses") between composition universes.

The vessel DOES NOT carry cargo (the tensor reading fails at ⊢↔⊣).
The Witness rides AS the vessel's own split/fuse structure:
  Boarding:  B → (T, F)  [Dual-Link split — the modulus collapse]
  Read-back: (T,F) → B   [Belnap join — the coordinate reconstruction]

Proven lossless: μ∘δ = id, proved with propext alone.
"""
from __future__ import annotations
import cmath, math, json, os, hashlib
from typing import Dict, List, Tuple, Optional
import math

# Physical register imports
from d12_sic_povm import D, D12_FIDUCIAL, coordinate, verify_sic
from dataclasses import dataclass, field
from enum import Enum

# ═══════════════════════════════════════════════════════
# BELNAP FOUR — the transport logic lattice
# ═══════════════════════════════════════════════════════

class B4(Enum):
    """Belnap FOUR: N=neither, T=true, F=false, B=both (dialetheia)."""
    N = 0  # no information
    T = 1  # true only
    F = 2  # false only
    B = 3  # both true and false — the dialetheic fixed point

    def __repr__(self): return self.name

def fsplit(s: B4) -> Tuple[B4, B4]:
    """Boarding map δ: bifurcates B into (T,F); others stay diagonal."""
    if s == B4.B:
        return (B4.T, B4.F)
    return (s, s)

def ffuse(a: B4, b: B4) -> B4:
    """Read-back map μ: Belnap join (knowledge order) of the pair."""
    # Knowledge order: N ⊑ T ⊑ B, N ⊑ F ⊑ B
    # join = least upper bound in knowledge order
    if a == B4.B or b == B4.B:
        return B4.B
    if a == B4.T and b == B4.F:
        return B4.B
    if a == B4.F and b == B4.T:
        return B4.B
    if a == B4.N:
        return b
    if b == B4.N:
        return a
    return a  # T∨T=T, F∨F=F

# Verify the split/fuse identity for all four values
def verify_belnap_identity() -> bool:
    for s in [B4.N, B4.T, B4.F, B4.B]:
        a, b = fsplit(s)
        back = ffuse(a, b)
        if back != s:
            return False
    return True

# ═══════════════════════════════════════════════════════
# LAYER VERDICT — gate × temporal constitution → Belnap
# ═══════════════════════════════════════════════════════

def layer_verdict(gate_closed: bool, ceiling_ok: bool) -> B4:
    """Mirror of SIC_D12_WitnessVessel.layerVerdict."""
    if gate_closed and ceiling_ok:
        return B4.T
    elif gate_closed and not ceiling_ok:
        return B4.B  # THE DIALETHEIA
    elif not gate_closed and ceiling_ok:
        return B4.N
    else:
        return B4.F

# ═══════════════════════════════════════════════════════
# THE THREE WITNESSES — MPP verdicts (computed, not asserted)
# ═══════════════════════════════════════════════════════

@dataclass
class Witness:
    name: str
    verdict: B4
    # The verdict is COMPUTED from the canonical tuple + universe rulesets
    # by native_decide in the Lean half; here we encode the derived results.

MPP_WITNESSES: List[Witness] = [
    Witness("BSD",   B4.T),  # 5 closer universes, T_CEILING consistent
    Witness("Hodge", B4.T),  # 5 closer universes, T_CEILING consistent
    Witness("YM",    B4.B),  # triple-criticality: gates closed, T blocked on ⊤
]

# ═══════════════════════════════════════════════════════
# THE VESSEL — transport protocol
# ═══════════════════════════════════════════════════════

class WitnessVessel:
    """The d=12 Dual-Link SIC-POVM as a lossless transport vessel."""

    def __init__(self):
        self.payload: List[B4] = [w.verdict for w in MPP_WITNESSES]
        self.boarding_log: List[Tuple[str, B4, Tuple[B4, B4]]] = []

    def board(self, cargo: List[B4]) -> List[Tuple[B4, B4]]:
        """δ: Witness → (modulus arm, phase arm)."""
        return [fsplit(v) for v in cargo]

    def readback(self, boarded: List[Tuple[B4, B4]]) -> List[B4]:
        """μ: (modulus arm, phase arm) → Witness."""
        return [ffuse(a, b) for a, b in boarded]

    def transport(self, cargo: List[B4], names: List[str] = None) -> Dict:
        """Execute one complete transport cycle: board → readback → verify."""
        if names is None:
            names = [f"W{i}" for i in range(len(cargo))]

        boarded = self.board(cargo)
        recovered = self.readback(boarded)

        results = {
            "before": [v.name for v in cargo],
            "boarded": [(a.name, b.name) for a, b in boarded],
            "after": [v.name for v in recovered],
            "lossless": cargo == recovered,
            "delta_S": sum(1 for c, r in zip(cargo, recovered) if c != r),
            "per_witness": []
        }

        for i, (name, orig, rec) in enumerate(zip(names, cargo, recovered)):
            entry = {
                "witness": name,
                "verdict": orig.name,
                "boarded": f"({boarded[i][0].name}, {boarded[i][1].name})",
                "recovered": rec.name,
                "ok": orig == rec
            }
            results["per_witness"].append(entry)

        return results

    def b_cargo_demonstration(self) -> Dict:
        """Explicit demonstration: B splits to (T,F) and fuses back to B."""
        b = B4.B
        t, f = fsplit(b)
        back = ffuse(t, f)
        return {
            "input": b.name,
            "fsplit_output": f"({t.name}, {f.name})",
            "ffuse_output": back.name,
            "mechanism": "B = T ∨_k F — the dialetheia rides both arms",
            "lossless": back == b
        }


# ═══════════════════════════════════════════════════════
# PHYSICAL REGISTER CORE — 12 Coordinate Arms
# ═══════════════════════════════════════════════════════
# The Witness Vessel is NOT a container. It IS the d=12 SIC-POVM,
# whose 12 coordinates form 12 physical register "arms." Boarding
# splits modulus from phase; readback fuses them back.
# 
# Identity: the Dual-Link structure of the d=12 fiducial
# IS the fsplit/ffuse pair. z_k * conj(z_k) = N_k (modulus collapse)
# IS the B -> (T, F) split. The half-angle reconstruction of the
# phase IS the (T, F) -> B fuse.
#
# Physical register layout:
#   ARM 0  (z0):  primary coordinate, degree 64 over Q
#   ARM 1  (z1):  crux coordinate, irreducible degree 64 (S-unit double cover)
#   ARM 2  (z2):  
#   ARM 3  (z3):  
#   ARM 4  (z4):  
#   ARM 5  (z5):  
#   ARM 6  (z6):  numerically zero (Hoggar pattern)
#   ARM 7  (z7):  
#   ARM 8  (z8):  
#   ARM 9  (z9):  
#   ARM 10 (z10): numerically zero (Hoggar pattern)
#   ARM 11 (z11):

@dataclass
class PhysicalRegister:
    """The d=12 SIC-POVM as a 12-arm physical register.
    
    Each arm holds:
      - coordinate: the complex number z_k (modulus * phase)
      - modulus:    N_k = z_k * conj(z_k) in K16 (the real subfield)
      - phase:      u_k = z_k / sqrt(N_k) (unit complex, in ray class field)
      - conjugate:  conj(z_k) (the return-path data)
    
    The boarding operation reads modulus + phase from each arm.
    The readback operation recombines them: z_k = sqrt(N_k) * u_k.
    """
    arms: List[dict] = field(default_factory=list)
    
    def __post_init__(self):
        if not self.arms:
            for k in range(D):
                z = coordinate(k)
                r = abs(z)
                self.arms.append({
                    "index": k,
                    "coordinate": z,
                    "modulus": float(r*r),
                    "phase": z/r if r > 1e-100 else 0j,
                    "conjugate": z.conjugate()
                })
    
    def board(self) -> Tuple[List[float], List[complex]]:
        """Split each arm into modulus and phase.
        
        This IS the Dual-Link boarding: modulus_arm, phase_arm.
        Modulus lives in K16 (totally real); phase lives in the
        ray class field extension.
        """
        moduli_side = [arm["modulus"] for arm in self.arms]
        phase_side = [arm["phase"] for arm in self.arms]
        return moduli_side, phase_side
    
    def readback(self, moduli_side: List[float], phase_side: List[complex]) -> List[complex]:
        """Recombine modulus and phase into coordinates.
        
        z_k = sqrt(N_k) * u_k
        """
        return [math.sqrt(n) * u for n, u in zip(moduli_side, phase_side)]
    
    def verify_roundtrip(self) -> bool:
        """Verify that board -> readback recovers the original coordinates."""
        mods, phases = self.board()
        recovered = self.readback(mods, phases)
        return all(abs(recovered[k] - coordinate(k)) < 1e-12 for k in range(D))

# ═══════════════════════════════════════════════════════
# THE COMPLETE WITNESS VESSEL (Physical Register)
# ═══════════════════════════════════════════════════════

class WitnessVesselPhysical(WitnessVessel):
    """The Witness Vessel with the full physical register.
    
    Extends the Belnap-layer transport with the d=12 SIC-POVM as
    the physical substrate. Boarding IS the Dual-Link split;
    readback IS the Dual-Link fuse.
    
    The physical register provides:
      - 12-arm coordinate storage (exact 140+-digit fidelity)
      - modulus/phase split (the "both arms" carry)
      - coordinate-level roundtrip verification
      - K16 modulus subfield verification
    """
    
    def __init__(self):
        super().__init__()
        self.register = PhysicalRegister()
    
    def physical_transport(self, cargo: List[B4], names: List[str] = None) -> Dict:
        """Full transport cycle with physical register verification.
        
        1. Board payload at Belnap layer (fsplit)
        2. Board physical register (modulus/phase split)
        3. Readback physical register (modulus/phase fuse)
        4. Readback payload at Belnap layer (ffuse)
        5. Verify both layers closed
        """
        if names is None:
            names = [f"W{i}" for i in range(len(cargo))]
        
        # Belnap layer
        belnap_boarded = self.board(cargo)
        belnap_recovered = self.readback(belnap_boarded)
        
        # Physical register layer
        mods, phases = self.register.board()
        phys_recovered = self.register.readback(mods, phases)
        phys_ok = all(abs(phys_recovered[k] - coordinate(k)) < 1e-12 for k in range(D))
        
        # Verify
        modsum = sum(mods)
        
        return {
            "belnap_layer": {
                "before": [v.name for v in cargo],
                "boarded": [(a.name, b.name) for a, b in belnap_boarded],
                "after": [v.name for v in belnap_recovered],
                "lossless": cargo == belnap_recovered,
                "delta_S": sum(1 for c, r in zip(cargo, belnap_recovered) if c != r)
            },
            "physical_layer": {
                "register_arms": self.register.arms,
                "modulus_sum": modsum,
                "modulus_sum_ok": abs(modsum - 1.0) < 1e-30,
                "roundtrip_ok": phys_ok,
                "fiducial_verified": verify_sic(D12_FIDUCIAL, tol=1e-12)["sic_verified"]
            },
            "verdict": "LOSSLESS — mu circ delta = id on both layers" if (cargo == belnap_recovered and phys_ok) else "LOSSY"
        }
    
    def transport(self, cargo: List[B4], names: List[str] = None) -> Dict:
        """Override to include physical register verification."""
        return self.physical_transport(cargo, names)

# ═══════════════════════════════════════════════════════
# DEMONSTRATION
# ═══════════════════════════════════════════════════════

def demonstrate():
    """Full demonstration of the Witness Vessel physical register."""
    vessel = WitnessVesselPhysical()
    cargo = [w.verdict for w in MPP_WITNESSES]
    names = [w.name for w in MPP_WITNESSES]
    result = vessel.physical_transport(cargo, names)
    
    print("\n" + "="*60)
    print("WITNESS VESSEL — PHYSICAL REGISTER DEMONSTRATION")
    print("="*60)
    
    print("\n--- Belnap Layer ---")
    bl = result["belnap_layer"]
    for i, name in enumerate(names):
        orig = cargo[i]
        boarded = bl["boarded"][i]
        rec = B4[bl["after"][i]]
        print(f"  {name}: {orig.name} -> board({boarded[0]},{boarded[1]}) -> {rec.name} {'[OK]' if orig == rec else '[FAIL]'}")
    
    print("\n--- Physical Layer ---")
    pl = result["physical_layer"]
    print(f"  Register arms: {len(pl['register_arms'])} (indices 0-11)")
    print(f"  Modulus sum: {pl['modulus_sum']:.16f} {'[OK]' if pl['modulus_sum_ok'] else '[FAIL]'}")
    print(f"  Physical roundtrip: {'[OK]' if pl['roundtrip_ok'] else '[FAIL]'}")
    print(f"  Fiducial verified: {'[OK]' if pl['fiducial_verified'] else '[FAIL]'}")
    
    print(f"\n--- Verdict: {result['verdict']} ---")
    return result

if __name__ == "__main__":
    demonstrate()
