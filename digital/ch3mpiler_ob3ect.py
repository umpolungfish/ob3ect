#!/usr/bin/env python3
"""
Ch3mpilerOb3ect — CH3MPILER ↔ ob3ect Frobenius bridge
======================================================
Maps CH3MPILER retrosynthetic disconnections to IMASM register traces,
verifying which disconnections satisfy μ∘δ=id (Frobenius closure).

A disconnection is Frobenius-closed when forward synthesis recovers the
exact structural type (product_delta=0 in the ch3mpiler metric).

IMASM mapping:
  VINIT    — void substrate (no molecule yet)
  TANCH    — anchor target structural type (molecule recognized)
  FSPLIT   — retrosynthetic cut (δ: split into precursors)
  EVALT    — evaluation TRUE  (product_delta=0, exact reconstruction)
  EVALF    — evaluation FALSE (product_delta>0, structural mismatch)
  FFUSE    — forward synthesis reconnection (μ: recompose)
  IMSCRIB  — self-recognition (product type == target type)
  IFIX     — route confirmed (Frobenius-closed synthesis path)

Author: Lando⊗⊙perator
"""
import sys
import os
from pathlib import Path
from typing import List, Dict, Tuple, Optional

# ── Path bootstrap ──────────────────────────────────────────────────────
_HERE = Path(__file__).parent
_DIGITAL = _HERE                                    # ob3ect/digital/
_REBIS_ROOT = _HERE.parent.parent.parent / "imsgct" / "red-hot_rebis"
if not _REBIS_ROOT.exists():
    # fallback: walk up to find red-hot_rebis
    _candidate = _HERE.parent.parent / "imsgct" / "red-hot_rebis"
    if _candidate.exists():
        _REBIS_ROOT = _candidate
    else:
        # last resort: ~/imsgct/red-hot_rebis
        _REBIS_ROOT = Path.home() / "imsgct" / "red-hot_rebis"

sys.path.insert(0, str(_DIGITAL))
sys.path.insert(0, str(_REBIS_ROOT))

from imasm_core import (
    IMASM_Machine, SequenceTrace,
    VINIT, TANCH, FSPLIT, FFUSE, EVALT, EVALF, IMSCRIB, IFIX,
    REG_NAMES, TRUE, BOTH,
)

# ── CH3MPILER import ────────────────────────────────────────────────────
try:
    from ch3mpiler.compiler import Ch3mpiler, fmt_tup, tup_dist
    _CH3MPILER_OK = True
except ImportError as _e:
    _CH3MPILER_OK = False
    _CH3MPILER_ERR = str(_e)

# ── Frobenius closure threshold ─────────────────────────────────────────
CLOSURE_DELTA = 0.0    # product_delta must equal this for EVALT (exact closure)
NEAR_DELTA    = 1.0    # product_delta <= this → structural proximity warning


def _make_sequence(product_delta: float, bond_delta: float) -> List[str]:
    """Build IMASM token sequence for one disconnection.

    Sequence structure:
      VINIT → TANCH → FSPLIT → EVALT/EVALF → FFUSE → IMSCRIB [→ IFIX]

    EVALT fires when product_delta == 0 (exact Frobenius closure).
    IFIX fires only when both Frobenius pair holds AND product is exact.
    """
    seq = [VINIT, TANCH, FSPLIT]
    if product_delta == CLOSURE_DELTA:
        seq.append(EVALT)
    else:
        seq.append(EVALF)
    seq.append(FFUSE)
    seq.append(IMSCRIB)
    if product_delta == CLOSURE_DELTA:
        seq.append(IFIX)
    return seq


def _run_trace(seq: List[str]) -> SequenceTrace:
    mach = IMASM_Machine()
    trace = SequenceTrace(seq, machine=mach)
    trace.run()
    return trace


def _is_frobenius_closed(trace: SequenceTrace, product_delta: float) -> bool:
    frob_pass, _ = trace.frobenius_verdict()
    return frob_pass and product_delta == CLOSURE_DELTA


class DisconnectionResult:
    """Result of IMASM verification for one retrosynthetic disconnection."""
    def __init__(self, cut: dict, seq: List[str], trace: SequenceTrace):
        self.bond       = cut["bond"]
        self.bond_desc  = cut.get("bond_desc", self.bond)
        self.fg1        = cut["fg1"]
        self.fg2        = cut["fg2"]
        self.product_delta = cut.get("product_delta", cut.get("delta", 999))
        self.bond_delta    = cut.get("bond_delta", 0)
        self.product_type  = cut.get("product_type", "?")
        self.seq            = seq
        self.trace          = trace
        frob_pass, frob_msg = trace.frobenius_verdict()
        self.frobenius_pass = frob_pass
        self.frobenius_msg  = frob_msg
        self.closed         = trace.is_closed()
        self.final_reg      = REG_NAMES[trace.register_after[-1]] if trace.register_after else "?"
        self.is_closed_frobenius = _is_frobenius_closed(trace, self.product_delta)

    def summary_line(self) -> str:
        status = "✓ CLOSED" if self.is_closed_frobenius else "⚠ open  "
        return (f"  {status}  {self.bond:<20s} δ={self.product_delta:.3f}"
                f"  [{self.fg1} + {self.fg2}]"
                f"  reg={self.final_reg}")

    def detail(self) -> str:
        lines = []
        lines.append(f"  Bond:    {self.bond_desc}")
        lines.append(f"  FGs:     {self.fg1} + {self.fg2}")
        lines.append(f"  δ_prod:  {self.product_delta:.3f}  (0=exact Frobenius closure)")
        lines.append(f"  δ_bond:  {self.bond_delta:.3f}")
        lines.append(f"  IMASM:   {' → '.join(self.seq)}")
        lines.append(self.trace.summary())
        return "\n".join(lines)


class MoleculeResult:
    """Collection of disconnection results for one molecule."""
    def __init__(self, target: str, ig_type: str, cuts: List[DisconnectionResult]):
        self.target   = target
        self.ig_type  = ig_type
        self.cuts     = cuts
        self.closed   = [c for c in cuts if c.is_closed_frobenius]
        self.open_    = [c for c in cuts if not c.is_closed_frobenius]

    @property
    def has_closure(self) -> bool:
        return len(self.closed) > 0

    @property
    def best_closed(self) -> Optional[DisconnectionResult]:
        return self.closed[0] if self.closed else None


class Ch3mpilerOb3ect:
    """
    CH3MPILER ↔ ob3ect Frobenius verification bridge.

    Usage:
        bridge = Ch3mpilerOb3ect()
        result = bridge.analyze_target("aspirin")
        ok = bridge.verify()        # canonical suite
        ok = bridge.verify_target("caffeine")
    """

    CANONICAL_TARGETS = [
        "aspirin",
        "benzaldehyde",
        "caffeine",
        "ibuprofen",
        "paracetamol",
    ]

    # Exotic and strained scaffolds: grammar must derive all structural types
    STRESS_TEST_TARGETS = [
        # strained small rings
        "aziridine",
        "cyclopropane",
        "oxetane",
        "beta_lactam",
        # cage / bridged polycyclics
        "cubane",
        "adamantane",
        "norbornane",
        "bicyclo_1_1_1_pentane",
        # allene / axial chirality
        "allene",
        # organometallic
        "ferrocene",
        # spherical carbon
        "buckminsterfullerene",
        # spirocyclic
        "griseofulvin",
        # macrolide
        "erythromycin",
        "rapamycin",
        # non-benzenoid aromatic
        "tropolone",
        "colchicine",
        # complex natural products (may have best δ > 0 — structural signal)
        "penicillin_g",
        "cyclopropanol",
        "norbornene",
    ]

    def __init__(self):
        if not _CH3MPILER_OK:
            raise ImportError(f"ch3mpiler not available: {_CH3MPILER_ERR}")
        self._compiler = Ch3mpiler()

    # ── Core analysis ───────────────────────────────────────────────────

    def analyze_target(self, target: str) -> MoleculeResult:
        """Run ch3mpiler analysis and verify every disconnection via IMASM."""
        data    = self._compiler.analyze(target)
        ig_type = data.get("type", "?")
        cuts_raw = data.get("cuts", [])

        results = []
        for cut in cuts_raw:
            prod_delta  = float(cut.get("product_delta", cut.get("delta", 999)))
            bond_delta  = float(cut.get("bond_delta", 0))
            seq         = _make_sequence(prod_delta, bond_delta)
            trace       = _run_trace(seq)
            results.append(DisconnectionResult(cut, seq, trace))

        return MoleculeResult(target, ig_type, results)

    # ── Convenience verify methods ──────────────────────────────────────

    def verify_target(self, target: str, verbose: bool = True) -> bool:
        """Verify a single molecule; return True if any disconnection is Frobenius-closed."""
        result = self.analyze_target(target)
        if verbose:
            _print_molecule_result(result)
        return result.has_closure

    def verify(self, verbose: bool = True) -> bool:
        """Run the canonical verification suite; return True if all molecules have closure."""
        if verbose:
            print("=" * 68)
            print("  CH3MPILER ↔ ob3ect  —  Frobenius Closure Verification")
            print("=" * 68)
        all_ok = True
        for target in self.CANONICAL_TARGETS:
            result = self.analyze_target(target)
            if verbose:
                _print_molecule_result(result)
            if not result.has_closure:
                all_ok = False
        if verbose:
            status = "✓ ALL CLOSED" if all_ok else "⚠ SOME OPEN"
            print("=" * 68)
            print(f"  Verdict: {status}")
            print("=" * 68)
        return all_ok

    def verify_stress(self, verbose: bool = True) -> dict:
        """Stress test: exotic and strained scaffolds.

        Returns dict with closed/partial/open lists and best-δ per molecule.
        'partial' = has no δ=0 path but best δ < 2.0 (grammar reaches the scaffold,
         structural complexity is the signal — not vocabulary absence).
        """
        if verbose:
            print("=" * 68)
            print("  CH3MPILER ↔ ob3ect  —  Exotic/Strained Scaffold Stress Test")
            print("=" * 68)
        closed, partial, open_ = [], [], []
        for target in self.STRESS_TEST_TARGETS:
            result = self.analyze_target(target)
            best_delta = min((c.product_delta for c in result.cuts), default=999)
            if result.has_closure:
                closed.append((target, best_delta))
            elif best_delta < 2.0:
                partial.append((target, best_delta))
            else:
                open_.append((target, best_delta))
            if verbose:
                _print_molecule_result(result)
        if verbose:
            print("=" * 68)
            print(f"  CLOSED  ({len(closed):2d}): {', '.join(t for t,_ in closed)}")
            if partial:
                print(f"  PARTIAL ({len(partial):2d}): {', '.join(f'{t}(δ={d:.2f})' for t,d in partial)}")
            if open_:
                print(f"  OPEN    ({len(open_):2d}): {', '.join(f'{t}(δ={d:.2f})' for t,d in open_)}")
            total = len(self.STRESS_TEST_TARGETS)
            print(f"  Grammar coverage: {len(closed)+len(partial)}/{total} scaffolds reached")
            print("=" * 68)
        return {"closed": closed, "partial": partial, "open": open_}


# ── Display helpers ────────────────────────────────────────────────────

def _print_molecule_result(result: MoleculeResult):
    print()
    print(f"  ┌── {result.target}")
    print(f"  │   IG type: {result.ig_type}")
    print(f"  │   Disconnections: {len(result.cuts)} evaluated, "
          f"{len(result.closed)} Frobenius-closed")
    for cut in result.cuts:
        print(cut.summary_line())
    if result.best_closed:
        bc = result.best_closed
        print(f"  │")
        print(f"  │   Best closed bond: {bc.bond_desc}")
        print(f"  │   IMASM: {' → '.join(bc.seq)}")
        reg_seq = bc.trace.register_sequence()
        print(f"  │   Register: {' → '.join(reg_seq)}")
        frob_pass, frob_msg = bc.trace.frobenius_verdict()
        print(f"  │   Frobenius μ∘δ: {frob_msg}")
    print(f"  └── closure: {'✓' if result.has_closure else '✗'}")


# ── __main__ ───────────────────────────────────────────────────────────

if __name__ == "__main__":
    import argparse
    ap = argparse.ArgumentParser(
        description="CH3MPILER ↔ ob3ect Frobenius bridge",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="Examples:\n"
               "  python3 ch3mpiler_ob3ect.py\n"
               "  python3 ch3mpiler_ob3ect.py --target ibuprofen\n"
               "  python3 ch3mpiler_ob3ect.py --target aspirin --detail\n",
    )
    ap.add_argument("--target", help="Single molecule to verify")
    ap.add_argument("--detail", action="store_true",
                    help="Print full IMASM trace for each disconnection")
    ap.add_argument("--stress", action="store_true",
                    help="Run exotic/strained scaffold stress test")
    args = ap.parse_args()

    bridge = Ch3mpilerOb3ect()

    if args.stress:
        bridge.verify_stress(verbose=True)
        sys.exit(0)

    if args.target:
        result = bridge.analyze_target(args.target)
        _print_molecule_result(result)
        if args.detail:
            print()
            for cut in result.cuts:
                print(f"\n  ── {cut.bond} ──")
                print(cut.detail())
        sys.exit(0 if result.has_closure else 1)
    else:
        ok = bridge.verify(verbose=True)
        sys.exit(0 if ok else 1)
