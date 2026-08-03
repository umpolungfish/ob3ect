#!/usr/bin/env python3
"""
b_hairpin_hydrogel_ob3ect — Self-imscribing β-hairpin hydrogel system.
Verifies algebraic closure: μ∘δ = id_A AND δ∘μ = id_B.

Tuple: ⟨Ð=𐑨; ⊣=𐑡; Ř=𐑑; Φ=𐑯; ƒ=𐑞; Ç=𐑪; Γ=𐑚; ɢ=𐑜; ⊙=⊙; Ħ=𐑒; Σ=𐑕; Ω=𐑴⟩

The ob3ect encodes:
  A  = monomer state (soluble peptide, T > Tm OR c < CGC)
  B  = fiber state (gelled, T < Tm AND c > CGC)
  μ  = assembly: (A, T↓, c↑) → B  — cooling or concentration triggers gelation
  δ  = disassembly: (B, T↑, c↓) → A  — heating or dilution triggers melt
  id_A = identity condition on A: soluble and reversible
  id_B = identity condition on B: gelled and stable
  Closure: δ∘μ = id_A (gel then melt → back to soluble)
           μ∘δ = id_B (melt then gel → back to gelled)
"""

import json, sys

class BetaHairpinHydrogel:
    """Self-imscribing hydrogel ob3ect with algebraic closure verification."""

    def __init__(self):
        self.cgc = 7.8    # Critical gelation concentration (mg/mL)
        self.tm = 68.0     # Melting temperature (°C)
        self._state = "soluble"

    # === State algebra ===

    def assemble(self, conc: float, temp: float) -> str:
        """μ : A → B  — Assembly morphism (gelation).
        Requires: conc > CGC AND temp < Tm
        """
        if conc > self.cgc and temp < self.tm:
            self._state = "gelled"
            return "gelled"
        self._state = "soluble"
        return "soluble"

    def disassemble(self, conc: float, temp: float) -> str:
        """δ : B → A  — Disassembly morphism (melt).
        Requires: conc < CGC OR temp > Tm
        """
        if conc < self.cgc or temp > self.tm:
            self._state = "soluble"
            return "soluble"
        return self._state

    def closure_dmu(self) -> bool:
        """Check δ∘μ = id_A.
        Start in A (soluble, low T/high c → but not gelled yet).
        Apply μ with gelation conditions → B.
        Apply δ with melt conditions → A.
        Result should be back to soluble = id_A.
        """
        self._state = "soluble"
        # μ: apply gelation conditions (high conc, low temp)
        mu_result = self.assemble(conc=10.0, temp=25.0)
        assert mu_result == "gelled", "μ must produce gelled state"
        # δ: apply melt conditions (high temp)
        delta_result = self.disassemble(conc=10.0, temp=75.0)
        # id_A = soluble at reassembly conditions
        return delta_result == "soluble"

    def closure_md(self) -> bool:
        """Check μ∘δ = id_B.
        Start in B (gelled). Apply δ with melt conditions → A.
        Apply μ with gelation conditions → B.
        Result should be gelled again = id_B.
        """
        self._state = "gelled"
        # δ: apply melt conditions
        delta_result = self.disassemble(conc=10.0, temp=75.0)
        assert delta_result == "soluble", "δ must produce soluble state"
        # μ: apply gelation conditions again
        mu_result = self.assemble(conc=10.0, temp=25.0)
        # id_B = gelled
        return mu_result == "gelled"

    def frobenius_check(self) -> dict:
        """Full Frobenius verification across all conditions."""
        checks = {
            "δ∘μ = id_A": self.closure_dmu(),
            "μ∘δ = id_B": self.closure_md(),
        }
        all_closed = all(checks.values())
        return {
            "checks": checks,
            "all_closed": all_closed,
            "b4": "T" if all_closed else ("B" if any(checks.values()) else "F"),
            "meaning": "Frobenius CLOSED" if all_closed else "Frobenius OPEN"
        }

    def dialetheic_at_cgc(self, conc: float, temp: float) -> dict:
        """At CGC and below Tm: BOTH soluble and gelled coexist."""
        at_cgc = abs(conc - self.cgc) < 0.5
        below_tm = temp < self.tm
        if at_cgc and below_tm:
            return {"b4": "B", "meaning": "dialetheic — phase coexistence at CGC"}
        return {"b4": "F", "meaning": "not at critical point"}

    def report(self) -> str:
        """Generate full structural report."""
        fc = self.frobenius_check()
        lines = [
            "=" * 60,
            "b_hairpin_hydrogel — Self-Imscribing Ob3ect Report",
            "=" * 60,
            f"CGC: {self.cgc} mg/mL | Tm: {self.tm}°C",
            "",
            "Closure checks:",
            f"  δ∘μ = id_A: {fc['checks']['δ∘μ = id_A']}",
            f"  μ∘δ = id_B: {fc['checks']['μ∘δ = id_B']}",
            f"  All closed: {fc['all_closed']}",
            f"  B4 result:  {fc['b4']} — {fc['meaning']}",
            "",
            "Dialetheic at CGC (7.8 mg/mL, 25°C):",
            f"  {self.dialetheic_at_cgc(7.8, 25.0)['b4']} — {self.dialetheic_at_cgc(7.8, 25.0)['meaning']}",
            "",
            "Structural Tuple: ⟨Ð=𐑨; ⊣=𐑡; Ř=𐑑; Φ=𐑯; ƒ=𐑞; Ç=𐑪; Γ=𐑚; ɢ=𐑜; ⊙=⊙; Ħ=𐑒; Σ=𐑕; Ω=𐑴⟩",
            f"Tier: O₂ | Frobenius: {'CLOSED' if fc['all_closed'] else 'OPEN'}",
            "=" * 60,
        ]
        return "\n".join(lines)


if __name__ == "__main__":
    print("=== b_hairpin_hydrogel ob3ect — Self-Verifying ===")
    print()

    hg = BetaHairpinHydrogel()

    # === Verification assertions ===
    errors = []

    # 1. Assembly at gelation conditions
    r1 = hg.assemble(conc=10.0, temp=25.0)
    if r1 != "gelled":
        errors.append("Assembly should produce gel at 10 mg/mL, 25°C")
    else:
        print("✓ Assembly (μ): produces gel at 10 mg/mL, 25°C")

    # 2. No assembly below CGC
    hg._state = "soluble"
    r2 = hg.assemble(conc=5.0, temp=25.0)
    if r2 != "soluble":
        errors.append("No gel below CGC")
    else:
        print("✓ No assembly: remains soluble below CGC (5 mg/mL)")

    # 3. No assembly above Tm
    hg._state = "soluble"
    r3 = hg.assemble(conc=10.0, temp=75.0)
    if r3 != "soluble":
        errors.append("No gel above Tm")
    else:
        print("✓ Thermal melt: no gel above Tm (75°C)")

    # 4. Disassembly (δ): melt at high temp
    hg._state = "gelled"
    r4 = hg.disassemble(conc=10.0, temp=75.0)
    if r4 != "soluble":
        errors.append("δ should melt gel at high temp")
    else:
        print("✓ Disassembly (δ): melts gel at 75°C")

    # 5. Algebraic closure: δ∘μ = id_A
    if not hg.closure_dmu():
        errors.append("δ∘μ = id_A FAILED")
    else:
        print("✓ δ∘μ = id_A: gel then melt → back to soluble")

    # 6. Algebraic closure: μ∘δ = id_B
    if not hg.closure_md():
        errors.append("μ∘δ = id_B FAILED")
    else:
        print("✓ μ∘δ = id_B: melt then gel → back to gelled")

    # 7. Dialetheic at CGC
    dv = hg.dialetheic_at_cgc(7.8, 25.0)
    if dv["b4"] != "B":
        errors.append(f"At CGC, should be B4.B, got B4.{dv['b4']}")
    else:
        print(f"✓ Dialetheic at CGC: B4.{dv['b4']} — phase coexistence")

    print()
    if errors:
        print("ERRORS:")
        for e in errors:
            print(f"  ✗ {e}")
        sys.exit(1)
    else:
        print(hg.report())
        print()
        print("=== ALL VERIFICATIONS PASSED ===")
        print("Closure: True")
        sys.exit(0)
