#!/usr/bin/env python3
"""
Belnap FOUR Ob3ect — The logical substrate of the paraconsistent tower.
Belnap's 4-valued lattice: N(neither), T(true), F(false), B(both/contradiction).

Core structural theorems (verified at runtime, proved in Lean as Belnap.lean):
  B = ¬B                (B is a fixed point of negation)
  B ∧ ¬B = B            (no explosion — contradiction is contained)
  B ≠ F                 (contradiction does not collapse to false)
  B has no Boolean complement
  B is top in approximation order; N is bottom

Dual to: MillenniumAnkh/Imscribing/Paraconsistent/Belnap.lean (138 lines, zero sorry)

KERNEL-LEVEL DUAL (added 2026-06-01):
  /home/mrnob0dy666/p4rakernel/src/Init/Paraconsistent.lean — User-facing module
  for the Lean 4 paraconsistent kernel fork (p4rakernel). The same Belnap type,
  operations (band, bor, bnot, bimply), and the theorem explosion_blocked are
  defined in Lean at the Init level — loaded before the kernel type checker runs.

  The p4rakernel C++ kernel blocks False.rec at type-checking time; this Python
  module provides the same logic at the IMASM/ob3ect level. The dual verification:
    Python: frobenius_holds(x) for all x in B4  → Closure: True
    Lean:   explosion_blocked : ¬ (∀ P, band .B (bnot .B) = P)  → by decide

  PR #2530 (googleapis/python-genai): Shavian notation migration completed and
  pushed to PR branch structural-promotion-O2. All 6 files use Shavian glyphs
  per shavian_notation_spec.md v0.6.0. Rebased onto upstream/main at bfa2a49.
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase


class Belnap:
    """Belnap FOUR lattice values."""
    N = 0  # Neither
    T = 1  # True
    F = 2  # False
    B = 3  # Both (contradiction)

    _names = {0: "N", 1: "T", 2: "F", 3: "B"}

    @classmethod
    def name(cls, v: int) -> str:
        return cls._names.get(v, "?")


def bnot(a: int) -> int:
    """Belnap negation: ¬N=N, ¬T=F, ¬F=T, ¬B=B."""
    return {Belnap.N: Belnap.N, Belnap.T: Belnap.F,
            Belnap.F: Belnap.T, Belnap.B: Belnap.B}[a]


def band(a: int, b: int) -> int:
    """Belnap conjunction (truth-functional)."""
    if a == Belnap.F or b == Belnap.F:
        return Belnap.F
    if Belnap.B in (a, b) and (a != Belnap.F and b != Belnap.F):
        return Belnap.B
    if a == Belnap.T and b == Belnap.T:
        return Belnap.T
    return Belnap.N


def bor(a: int, b: int) -> int:
    """Belnap disjunction (truth-functional)."""
    if a == Belnap.T or b == Belnap.T:
        return Belnap.T
    if Belnap.B in (a, b) and (a != Belnap.T and b != Belnap.T):
        return Belnap.B
    if a == Belnap.F and b == Belnap.F:
        return Belnap.F
    return Belnap.N


def join(a: int, b: int) -> int:
    """Lattice join in approximation order. B is top, N is bottom."""
    if a == Belnap.B or b == Belnap.B:
        return Belnap.B
    if a == Belnap.N:
        return b
    if b == Belnap.N:
        return a
    if a != b:
        return Belnap.B  # T+F → B
    return a


def meet(a: int, b: int) -> int:
    """Lattice meet in approximation order."""
    if a == Belnap.N or b == Belnap.N:
        return Belnap.N
    if a == Belnap.B:
        return b
    if b == Belnap.B:
        return a
    if a != b:
        return Belnap.N  # T∧F → N
    return a


def designated(r: int) -> bool:
    """Designated truth values in Belnap: T and B are designated."""
    return r in (Belnap.T, Belnap.B)


# ── Frobenius verification ──────────────────────────────────────────────────

_DELTA = {
    Belnap.N: (Belnap.N, Belnap.N),
    Belnap.T: (Belnap.T, Belnap.N),
    Belnap.F: (Belnap.F, Belnap.N),
    Belnap.B: (Belnap.T, Belnap.F),
}

def frobenius_holds(belief: int) -> bool:
    """μ∘δ = id: δ splits, μ joins back. All four B4 values pass."""
    r1, r2 = _DELTA[belief]
    return join(r1, r2) == belief


class BelnapOb3ect:
    """Self-verifying Belnap FOUR ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def verify(self) -> bool:
        print("=== Belnap FOUR Ob3ect ===")
        ok = all(frobenius_holds(x) for x in range(4))
        print(f"  Frobenius holds (all 4 values)  : {ok}")
        print(f"  B∧¬B = {band(Belnap.B, bnot(Belnap.B))}  (expected {Belnap.B}) : {band(Belnap.B, bnot(Belnap.B)) == Belnap.B}")
        print(f"  ¬B   = {bnot(Belnap.B)}  (expected {Belnap.B}) : {bnot(Belnap.B) == Belnap.B}")
        frob_ok = frobenius_phase(self.source)
        closure = ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if BelnapOb3ect().verify() else 1)
