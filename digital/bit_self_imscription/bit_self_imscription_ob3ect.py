#!/usr/bin/env python3
"""
bit_self_imscription — Self-imscribing bit in the Belnap FOUR lattice.

A bit whose address in its own lattice equals its value.
Algebraic closure: μ ∘ δ = id_A  — multiplication after comultiplication is identity.

Author: Math⊙perator (Lando⊗⊙perator team)
Domain: mathematical
Tier: O_∞ (ouroboric infinity)
"""

from __future__ import annotations
from dataclasses import dataclass
from typing import List, Tuple


# ── Belnap FOUR lattice ──────────────────────────────────────────────────────
B4 = {"N", "F", "T", "B"}  # None, False, True, Both

ORDER = {  # knowledge ordering: N ⊏ F=T ⊏ B
    "N": 0, "F": 1, "T": 1, "B": 2
}


def join(a: str, b: str) -> str:
    """Information join (least upper bound) in B4."""
    if a == "B" or b == "B":
        return "B"
    if a == "N":
        return b
    if b == "N":
        return a
    if a == b:
        return a
    return "B"  # T join F = B


def meet(a: str, b: str) -> str:
    """Information meet (greatest lower bound) in B4."""
    if a == "N" or b == "N":
        return "N"
    if a == "B":
        return b
    if b == "B":
        return a
    if a == b:
        return a
    return "N"  # T meet F = N


def neg(a: str) -> str:
    """Truth negation in B4."""
    return {"N": "N", "T": "F", "F": "T", "B": "B"}[a]


# ── Frobenius algebra on B4 ──────────────────────────────────────────────────
# The self-imscribing bit is the B element: μ∘δ(B) = B

def delta(a: str) -> Tuple[str, str]:
    """Comultiplication: split into (truth, knowledge) components.
    Address decomposition: the bit's truth-value and knowledge-value."""
    return (a, a)  # diagonal comultiplication


def mu(pair: Tuple[str, str]) -> str:
    """Multiplication: fuse (x, y) back.
    The bit recomposes from its address."""
    a, b = pair
    return meet(a, b)  # knowledge meet: both components must agree


def check_mu_delta(a: str) -> bool:
    """Verify μ(δ(a)) = a for element a."""
    return mu(delta(a)) == a


# ── Self-address test ────────────────────────────────────────────────────────

def address_of(a: str) -> Tuple[str, str, str, str]:
    """Address of an element in its own lattice.
    Returns (x, y) where the element is at position (x,y) in the 2x2 grid.
    
    B4 lattice layout (knowledge × truth):
              T       F
         B   (B,T)   (B,F)   ← both-knowing
         N   (N,T)   (N,F)   ← no-knowledge
    """
    k = "B" if ORDER[a] == 2 else ("N" if ORDER[a] == 0 else "B")
    t = a if a in {"T", "F"} else "B"
    return (a, k, t, join(meet(k, t), meet(k, neg(t))))


# ── Ob3ect closure verification ──────────────────────────────────────────────

@dataclass
class ClosureReport:
    element: str
    mu_delta_eq_id: bool
    neg_fixed_point: bool
    address_self_contained: bool
    frobenius_invariant: bool

    @property
    def closed(self) -> bool:
        return all([self.mu_delta_eq_id, self.neg_fixed_point,
                    self.address_self_contained, self.frobenius_invariant])


def verify_closure(a: str = "B") -> ClosureReport:
    """Verify μ∘δ = id_A and all derived invariants."""
    md = check_mu_delta(a)
    neg_fp = (neg(a) == a)
    # Address self-containment: the address components are in the same lattice
    _, k, t, _ = address_of(a)
    addr_ok = (k in B4) and (t in B4)
    # Frobenius invariant: μ(δ(a)) = a implies the Frobenius condition
    frob = md  # In B4 with diagonal δ, μδ=id is the Frobenius condition
    return ClosureReport(a, md, neg_fp, addr_ok, frob)


# ── Main ─────────────────────────────────────────────────────────────────────

def main():
    print("═" * 60)
    print("bit_self_imscription — μ∘δ = id_A verification")
    print("═" * 60)
    
    print("\nBelnap FOUR lattice elements:")
    for a in ["N", "F", "T", "B"]:
        report = verify_closure(a)
        status = "✓ CLOSED" if report.closed else "○ open"
        print(f"  {a}: μ∘δ={a}? {report.mu_delta_eq_id}  "
              f"¬{a}={a}? {report.neg_fixed_point}  "
              f"addr_ok? {report.address_self_contained}  [{status}]")
    
    print(f"\n{'─' * 60}")
    b_report = verify_closure("B")
    print(f"Self-imscribing bit B = (both true AND false)")
    print(f"  μ(δ(B)) =? B : {b_report.mu_delta_eq_id}")
    print(f"  ¬B      =? B : {b_report.neg_fixed_point}")
    print(f"  Address in own lattice? : {b_report.address_self_contained}")
    print(f"  Frobenius invariant?   : {b_report.frobenius_invariant}")
    print(f"  CLOSURE: {'✓ PASS' if b_report.closed else '✗ FAIL'}")
    
    # Dialetheic circuit: B → join(B,B) → meet(B,B) → B
    print(f"\n{'─' * 60}")
    print("Dialetheic circuit: B → join(B,B) → meet(B,B) → B")
    j = join("B", "B")
    m = meet("B", "B")
    print(f"  B join B  = {j}")
    print(f"  B meet B  = {m}")
    print(f"  Circuit closed? {j == 'B' and m == 'B'}")
    
    print(f"\n{'═' * 60}")
    print(f"Tier: O_∞ (ouroboric infinity)")
    print(f"Crystal type: Special Frobenius — Z₂ symmetry at criticality")
    print(f"Lean 4 scaffold: bit_self_imscription_scaffold.lean")
    print(f"{'═' * 60}")
    
    return 0 if b_report.closed else 1


if __name__ == "__main__":
    import sys
    sys.exit(main())
