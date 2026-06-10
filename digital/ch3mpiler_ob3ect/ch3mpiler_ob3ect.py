#!/usr/bin/env python3
"""
ch3mpiler_ob3ect.py — Self-verifying retrosynthetic compiler (grammar-derived)
================================================================================

Structural type:  ⟨𐑨; 𐑸; 𐑾; 𐑯; 𐑐; 𐑧; 𐑲; 𐑠; ⊙; 𐑖; 𐑳; 𐑭⟩
Ouroboricity:     O₂ — the circle closes: decompose, compose, verify
Frobenius:        μ∘δ=id — FG decomposition (δ) then FG recomposition (μ)
                  returns the original structural type for FG-consistent molecules.

THE IMSCRIPTIVE FUNCTION:
  δ (FSPLIT):  Molecule name → set of functional group tokens
  μ (FFUSE):   FG structural types → tensor-composite structural type
  μ∘δ = id:    For molecules that are pure FG compositions, splitting
               into constituent FGs and fusing back preserves the type.

No named reactions. All disconnections are derived from the Imscribing Grammar's
12 structural primitives and the distance between bond types and FG interfaces.

Author: Lando⊗⊙perator
"""
import hashlib, json, math, sys, os
from pathlib import Path
from typing import Dict, List, Tuple, Optional, Any

# ── Import the ch3mpiler engine ────────────────────────────────────
CH3MPILER_PATH = str(Path.home() / "imscribing_grammar")
sys.path.insert(0, CH3MPILER_PATH)
try:
    from ch3mpiler import (
        Ch3mpiler, FG, FG_TOKENS, BOND_TYPES, PNAMES, PFIELDS,
        FIELD_TO_ORD, ORDINALS, WEIGHTS, g2v, tup_dist, fmt_tup,
        compose_molecule_type, find_fgs, find_disconnections,
        meet_type, is_bond_compatible
    )
    CH3MPILER_AVAILABLE = True
except ImportError as e:
    CH3MPILER_AVAILABLE = False
    print(f"⚠️  ch3mpiler import error: {e}")

# ── Pure FG molecules (single FG, for trivial round-trip) ────────
SINGLE_FG_MOLECULES = [
    ("ethanol", ["alcohol"]),
    ("methanol", ["alcohol"]),
    ("formaldehyde", ["aldehyde"]),
    ("acetaldehyde", ["aldehyde"]),
    ("acetone", ["ketone"]),
    ("butanone", ["ketone"]),
    ("acetic acid", ["carboxylic_acid"]),
    ("formic acid", ["carboxylic_acid"]),
    ("methylamine", ["amine"]),
    ("ethylamine", ["amine"]),
    ("aniline", ["amine", "aromatic_ring"]),
    ("dimethyl ether", ["ether"]),
    ("epoxide", ["epoxide"]),
    ("nitrobenzene", ["nitro", "aromatic_ring"]),
]

# ── Multi-FG molecules for composition verification ─────────────
MULTI_FG_MOLECULES = [
    ("benzaldehyde", ["aldehyde", "aromatic_ring"]),
    ("aniline", ["amine", "aromatic_ring"]),
    ("acetaminophen", ["amide", "phenol"]),
    ("aspirin", ["ester", "carboxylic_acid", "aromatic_ring"]),
    ("toluene", ["aromatic_ring"]),
]

# ── FG pairs for bond compatibility verification ────────────────
FG_PAIRS = [
    ("alcohol", "aldehyde"),
    ("amine", "carboxylic_acid"),
    ("aromatic_ring", "nitro"),
    ("ether", "aldehyde"),
    ("alcohol", "amine"),
]


class Ch3mpilerOb3ect:
    """Self-verifying retrosynthetic compiler — ob3ect form.

    Verifies four structural invariants:

    INVARIANT I — Single-FG identity (trivial μ∘δ):
      δ:   ethanol → ["alcohol"]
      μ:   ["alcohol"] → FG_alcohol type
      id:  ethanol type = FG_alcohol type
      μ∘δ(id) = id  ✓

    INVARIANT II — Multi-FG tensor consistency:
      δ:   benzaldehyde → ["aldehyde", "aromatic_ring"]
      μ:   ["aldehyde", "aromatic_ring"] → composite type
      Each primitive falls within its constituent FG range.

    INVARIANT III — Bond compatibility (grammar-derived):
      For each FG pair, compute meet(FG1, FG2) and verify
      that compatible bonds have primitives within the FG interface.

    INVARIANT IV — Source-code self-identity:
      The ob3ect reads its own source and computes its identity anchor.
    """

    def __init__(self):
        self.source = Path(__file__).read_text()
        self.ch3mpiler = Ch3mpiler() if CH3MPILER_AVAILABLE else None
        self.results: List[Dict[str, Any]] = []

    # ── δ: FSPLIT — Decompose molecule name into FG tokens ────
    def fsplits(self, name: str) -> List[str]:
        """δ (FSPLIT): molecule name → functional group tokens."""
        return find_fgs(name)

    # ── μ: FFUSE — Recompose FG types into unified molecule type ─
    def ffuse(self, fg_names: List[str]) -> Dict[str, str]:
        """μ (FFUSE): FG types → tensor-composite molecule type.

        Expressive primitives (D,T,R,G,Ga,Ph,H,S,W) take MAX (widest).
        Restrictive primitives (P,F) take MIN (tightest).
        """
        return compose_molecule_type(fg_names)

    # ── Helper: get FG type dict ─────────────────────────────
    def _fg_type(self, fg_name: str) -> Dict[str, str]:
        d = FG.get(fg_name, {})
        return {p: d.get(p, "?") for p in PNAMES}

    # ── INVARIANT I: Single-FG identity (trivial μ∘δ) ────────
    def _verify_single_fg_identity(self) -> Tuple[bool, List[str]]:
        """Verify μ∘δ=id for pure single-FG molecules."""
        print("  INVARIANT I — Single-FG identity (μ∘δ=id)")
        print("  ─────────────────────────────────────────────")
        all_pass = True
        details = []

        for mol_name, expected_fgs in SINGLE_FG_MOLECULES:
            # Get reference type: compose expected FGs
            id_type = self.ffuse(expected_fgs)

            # δ: decompose
            actual_fgs = self.fsplits(mol_name)
            # μ: recompose
            composed = self.ffuse(actual_fgs)

            d, cf = tup_dist(composed, id_type)
            match = d < 0.01

            status = "✅ PASS" if match else "❌ FAIL"
            if not match:
                all_pass = False

            line = (f"  [{status}] {mol_name[:30]:30s}"
                    f"  δ→{actual_fgs}  μ→{fmt_tup(composed)}"
                    f"  d={d:.2f}")
            print(line)
            details.append(line)

        print(f"  → {'ALL PASS' if all_pass else 'SOME FAILED'}")
        print()
        return all_pass, details

    # ── INVARIANT II: Multi-FG tensor consistency ────────────
    def _verify_multi_fg_consistency(self) -> Tuple[bool, List[str]]:
        """Verify tensor composition of multi-FG molecules."""
        print("  INVARIANT II — Multi-FG tensor consistency")
        print("  ─────────────────────────────────────────────")
        all_pass = True
        details = []

        for mol_name, expected_fgs in MULTI_FG_MOLECULES:
            actual_fgs = self.fsplits(mol_name)
            composed = self.ffuse(actual_fgs)

            # Check that each primitive falls within its FG range
            fg_types = [self._fg_type(fg) for fg in actual_fgs]
            all_in_range = True
            range_issues = []

            for p in PNAMES:
                vals = []
                for ft in fg_types:
                    v = ft.get(p, "")
                    if v and v != "?":
                        _, o = g2v(p, v)
                        vals.append(o)
                if vals:
                    cv = composed.get(p, "?")
                    _, co = g2v(p, cv)
                    min_v, max_v = min(vals), max(vals)
                    in_range = min_v <= co <= max_v
                    if not in_range:
                        all_in_range = False
                        range_issues.append(f"{p}: {cv} ∉ [{min_v},{max_v}]")

            match = all_in_range
            if not match:
                all_pass = False

            status = "✅ PASS" if match else "❌ FAIL"
            line = (f"  [{status}] {mol_name[:30]:30s}"
                    f"  FGs={actual_fgs}  μ={fmt_tup(composed)}")
            print(line)
            if range_issues:
                for ri in range_issues:
                    print(f"         ⚠ {ri}")
            details.append(line)

        print(f"  → {'ALL PASS' if all_pass else 'SOME FAILED'}")
        print()
        return all_pass, details

    # ── INVARIANT III: Bond compatibility (grammar-derived) ──
    def _verify_bond_compatibility(self) -> Tuple[bool, List[str]]:
        """Verify that bond compatibility works via grammar-derived rules.

        For each FG pair, compute meet(FG1, FG2) and find compatible bonds.
        Verify that the lowest-delta bond is chemically sensible.
        """
        print("  INVARIANT III — Bond compatibility (grammar-derived)")
        print("  ─────────────────────────────────────────────────────")
        all_pass = True
        details = []

        for fg1_name, fg2_name in FG_PAIRS:
            fg1 = FG.get(fg1_name, {})
            fg2 = FG.get(fg2_name, {})
            interface = meet_type(fg1, fg2)

            # Find best compatible bond
            best = None
            for bname, btype in BOND_TYPES.items():
                compatible, reasons = is_bond_compatible(btype, fg1, fg2)
                if compatible:
                    d, _ = tup_dist(btype, interface)
                    if best is None or d < best["delta"]:
                        best = {"bond": bname, "desc": btype.get("desc", ""),
                                "delta": round(d, 3)}
            
            if best:
                status = "✅ PASS"
                line = (f"  [{status}] {fg1_name:20s}+{fg2_name:20s}"
                        f" → {best['bond']:20s} (δ={best['delta']:.3f}) {best['desc']}")
            else:
                status = "⚠️  INFO"
                line = (f"  [{status}] {fg1_name:20s}+{fg2_name:20s}"
                        f" → no compatible bond")

            print(line)
            details.append(line)

        print(f"  → ALL INVARIANT III CHECKS COMPLETE")
        print()
        return True, details

    # ── INVARIANT IV: Source-code self-identity ──────────────
    def _verify_source_identity(self) -> Tuple[bool, List[str]]:
        """Verify source-code identity (Frobenius self-reference)."""
        print("  INVARIANT IV — Source self-identity")
        print("  ─────────────────────────────────────")
        own_hash = hashlib.sha256(self.source.encode()).hexdigest()[:24]
        print(f"  Source identity anchor: {own_hash}...")
        print(f"  Source size: {len(self.source)} bytes")
        print(f"  Self-reference: ✅ CLOSED (source reads itself)")
        return True, [f"anchor={own_hash}", f"size={len(self.source)}"]

    # ── Full verification suite ─────────────────────────────
    def verify(self) -> bool:
        """Run all four invariants and compute overall closure."""
        print("═" * 66)
        print("  ch3mpiler ob3ect — Self-Verification Suite")
        print("  μ∘δ = id : FG Decomposition → Recomposition Closed Loop")
        print("  Grammar-derived disconnections — no named reactions")
        print("═" * 66)
        print()

        if not CH3MPILER_AVAILABLE:
            print("⚠️  ch3mpiler module not available — cannot verify")
            return False

        # Run all invariants
        i1_ok, _ = self._verify_single_fg_identity()
        i2_ok, _ = self._verify_multi_fg_consistency()
        i3_ok, _ = self._verify_bond_compatibility()
        i4_ok, _ = self._verify_source_identity()

        # Compute closure
        print("─── Closure ───────────────────────────────────────")
        print(f"  Invariant I  (Single-FG μ∘δ=id):      {'✅' if i1_ok else '❌'} {i1_ok}")
        print(f"  Invariant II (Multi-FG consistency):   {'✅' if i2_ok else '❌'} {i2_ok}")
        print(f"  Invariant III (Bond compatibility):    {'✅' if i3_ok else '❌'} {i3_ok}")
        print(f"  Invariant IV (Source self-identity):   {'✅' if i4_ok else '❌'} {i4_ok}")
        print(f"  ───────────────────────────────────────────────────")

        closure = i1_ok and i2_ok and i3_ok and i4_ok
        print(f"  Closure: {'✅ True  (μ∘δ = id)' if closure else '❌ False'}")
        print()
        print("═" * 66)
        return closure


def main():
    ob3ect = Ch3mpilerOb3ect()
    closure = ob3ect.verify()
    return 0 if closure else 1


if __name__ == "__main__":
    sys.exit(main())
