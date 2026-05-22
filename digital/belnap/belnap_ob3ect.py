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
        return Belnap.N  # T+F → N
    return a


def designated(b: int) -> bool:
    """T or B count as 'true' for paraconsistent consequence."""
    return b in (Belnap.T, Belnap.B)


class BelnapOb3ect:
    """Self-verifying Belnap FOUR lattice ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_B_fixed_point(self) -> bool:
        ok = bnot(Belnap.B) == Belnap.B
        print(f"  B = ¬B  (fixed point of negation)    : {ok}")
        return ok

    def _verify_no_explosion(self) -> bool:
        ok = band(Belnap.B, bnot(Belnap.B)) == Belnap.B
        print(f"  B ∧ ¬B = B  (no explosion)           : {ok}")
        return ok

    def _verify_B_ne_F(self) -> bool:
        ok = Belnap.B != Belnap.F
        print(f"  B ≠ F  (no collapse to false)         : {ok}")
        return ok

    def _verify_no_boolean_complement(self) -> bool:
        # B has no c such that B∧c=F and B∨c=T
        ok = True
        for c in range(4):
            if band(Belnap.B, c) == Belnap.F and bor(Belnap.B, c) == Belnap.T:
                ok = False
        print(f"  B has no Boolean complement           : {ok}")
        return ok

    def _verify_B_is_top(self) -> bool:
        ok = all(join(a, Belnap.B) == Belnap.B for a in range(4))
        print(f"  B is top in approximation order       : {ok}")
        return ok

    def _verify_N_is_bot(self) -> bool:
        ok = all(meet(a, Belnap.N) == Belnap.N for a in range(4))
        print(f"  N is bottom in approximation order    : {ok}")
        return ok

    def _verify_only_B_dialetheic(self) -> bool:
        # Only B is both designated and its negation is designated
        dialetheic = lambda b: designated(b) and designated(bnot(b))
        results = {Belnap.name(v): dialetheic(v) for v in range(4)}
        ok = results == {"N": False, "T": False, "F": False, "B": True}
        print(f"  Only B is dialetheic                  : {ok}")
        if not ok:
            print(f"    got: {results}")
        return ok

    def _verify_meet_join_distrib(self) -> bool:
        ok = True
        for a in range(4):
            for b in range(4):
                for c in range(4):
                    if meet(a, join(b, c)) != join(meet(a, b), meet(a, c)):
                        ok = False
        print(f"  meet distributes over join            : {ok}")
        return ok

    def _verify_negation_table(self) -> bool:
        expected = [(Belnap.N, Belnap.N), (Belnap.T, Belnap.F),
                     (Belnap.F, Belnap.T), (Belnap.B, Belnap.B)]
        ok = all(bnot(a) == e for a, e in expected)
        print(f"  Negation table complete               : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== Belnap FOUR Ob3ect ===")
        tests = [
            self._verify_B_fixed_point(),
            self._verify_no_explosion(),
            self._verify_B_ne_F(),
            self._verify_no_boolean_complement(),
            self._verify_B_is_top(),
            self._verify_N_is_bot(),
            self._verify_only_B_dialetheic(),
            self._verify_meet_join_distrib(),
            self._verify_negation_table(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if BelnapOb3ect().verify() else 1)
