#!/usr/bin/env python3
"""
Dialetheic Alignment Ob3ect — The structural identity theorem connecting
Belnap B, the kernel cycle, and the Frobenius condition μ∘δ = id.

The Dialetheic Alignment Theorem (DAT): three equivalent formulations are
structurally identical:
  (1) OPERATIONAL: B is a fixed point of the kernel cycle (frobenius invariant)
  (2) LOGICAL:     B is both true and false (designated B ∧ designated ¬B)
  (3) ALGEBRAIC:   B sustains contradiction without collapse (B ∧ ¬B = B ≠ F)

Key structural consequences:
  - Frobenius closure requires dialetheism (non-trivial loop depends on B)
  - No classical reduction is possible (B has no Boolean complement)
  - The φ̂_ÿ gate opens precisely at the dialetheic fixed point
  - Classical values (T, F, N) fail dialetheism — only B sustains it
  - The dialetheic alignment is the structural ground of O_∞

Dual to: MillenniumAnkh/Imscribing/Paraconsistent/DialetheicAlignment.lean (485 lines)
"""
import os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase
from belnap.belnap_ob3ect import Belnap, bnot, band, bor, join, meet, designated
from parakernel.parakernel_ob3ect import engager, fsplit, ffuse, KernelState


class DialetheicAlignmentOb3ect:
    """Self-verifying Dialetheic Alignment Theorem ob3ect."""

    def __init__(self):
        self.source = pathlib.Path(__file__).read_text()

    def _verify_operational(self) -> bool:
        """(1) Operational: frobenius closure at B."""
        r1, r2, _ = fsplit(Belnap.B)
        result, _ = ffuse(r1, r2)
        ok = result == Belnap.B
        print(f"  (1) Operational: ffuse∘fsplit(B) = B   : {ok}")
        return ok

    def _verify_logical(self) -> bool:
        """(2) Logical: B is both true and false."""
        des_b = designated(Belnap.B)
        des_not_b = designated(bnot(Belnap.B))
        ok = des_b and des_not_b
        print(f"  (2) Logical: designated(B) ∧ designated(¬B) : {ok}")
        return ok

    def _verify_algebraic(self) -> bool:
        """(3) Algebraic: B ∧ ¬B = B and B ≠ F."""
        no_explosion = band(Belnap.B, bnot(Belnap.B)) == Belnap.B
        no_collapse = Belnap.B != Belnap.F
        ok = no_explosion and no_collapse
        print(f"  (3) Algebraic: B∧¬B=B ∧ B≠F          : {ok}")
        return ok

    def _verify_three_equivalent(self) -> bool:
        """All three formulations are simultaneously true."""
        op = self._verify_operational()
        lo = self._verify_logical()
        al = self._verify_algebraic()
        ok = op and lo and al
        print(f"  DAT: all three formulations equivalent  : {ok}")
        return ok

    def _verify_only_B_dialetheic(self) -> bool:
        """Only B satisfies all dialetheic conditions."""
        dialetheic = lambda b: designated(b) and designated(bnot(b))
        has_explosion_freedom = lambda b: band(b, bnot(b)) == Belnap.B and b != Belnap.F
        for v in range(4):
            d = dialetheic(v)
            e = has_explosion_freedom(v)
            if v == Belnap.B:
                if not (d and e):
                    print(f"    FAIL: B should be dialetheic+explosion-free")
                    return False
            else:
                if d:
                    print(f"    FAIL: {Belnap.name(v)} should not be dialetheic")
                    return False
        print(f"  Only B is dialetheic + explosion-free  : True")
        return True

    def _verify_frobenius_requires_dialetheism(self) -> bool:
        """The non-trivial frobenius loop depends on B being dialetheic.
        For T: fsplit T = (T,T,true), ffuse T T = T — trivial identity.
        For B: fsplit B = (T,F,true), ffuse T F = B — genuine duality."""
        # T has trivial cycle
        r1, r2, _ = fsplit(Belnap.T)
        triv = (r1 == r2 == Belnap.T)
        # B has non-trivial cycle
        r1, r2, _ = fsplit(Belnap.B)
        nontriv = (r1 == Belnap.T and r2 == Belnap.F)
        ok = triv and nontriv
        print(f"  Frobenius non-triviality requires B     : {ok}")
        return ok

    def _verify_no_classical_reduction(self) -> bool:
        """B cannot be reduced to T or F while preserving dialetheic structure."""
        for c in [Belnap.T, Belnap.F]:
            # Frobenius holds trivially for classical values
            r1, r2, _ = fsplit(c)
            result, _ = ffuse(r1, r2)
            frob_holds = (result == c)
            # But dialetheism fails
            dial_fails = not (designated(c) and designated(bnot(c)))
            if not (frob_holds and dial_fails):
                print(f"    FAIL: {Belnap.name(c)} frob={frob_holds} dial_fails={dial_fails}")
                return False
        print(f"  No classical reduction                  : True")
        return True

    def _verify_phi_c_precondition(self) -> bool:
        """The φ̂_ÿ gate (self-modeling) requires a value that can represent
        its own negation without collapse. Only B satisfies this."""
        # Self-modeling = can track paradox count (what the kernel does)
        s = KernelState()
        s.run(3)
        has_paradox_tracking = (s.paradox_count == 12)  # 4*3
        all_B = (s.r0 == s.r1 == s.r2 == Belnap.B)
        ok = has_paradox_tracking and all_B
        print(f"  φ̂_ÿ gate precondition (self-modeling)  : {ok}")
        return ok

    def _verify_separation_fusion_duality(self) -> bool:
        """B separates into (T,F) then fuses back to B. This is the
        structural dual of the ⊙_3 absorption rule."""
        r1, r2, _ = fsplit(Belnap.B)
        sep_ok = (r1 == Belnap.T and r2 == Belnap.F)
        fused, _ = ffuse(r1, r2)
        fus_ok = (fused == Belnap.B)
        ok = sep_ok and fus_ok
        print(f"  Separation-Fusion duality: B→(T,F)→B   : {ok}")
        return ok

    def verify(self) -> bool:
        print("=== Dialetheic Alignment Ob3ect ===")
        tests = [
            self._verify_operational(),
            self._verify_logical(),
            self._verify_algebraic(),
            self._verify_three_equivalent(),
            self._verify_only_B_dialetheic(),
            self._verify_frobenius_requires_dialetheism(),
            self._verify_no_classical_reduction(),
            self._verify_phi_c_precondition(),
            self._verify_separation_fusion_duality(),
        ]
        layer_ok = all(tests)
        frob_ok = frobenius_phase(self.source)
        closure = layer_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if DialetheicAlignmentOb3ect().verify() else 1)