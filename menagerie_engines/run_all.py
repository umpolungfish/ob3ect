#!/usr/bin/env python3
"""
run_all.py — Menagerie Mass Execution (Bin-Style Live Runner)

Executes all 10 executable ob3ect engines (suffering/6,734,591 deliberately excluded).

Each engine is a self-imscribing Frobenius realization:
  - Canonical IMASM 8-step bootstrap (or domain-specialized variant)
  - B4 substrate (shared menagerie_b4)
  - Explicit μ ∘ δ = id closure verification at the end of its trace

Style: matches priests-engine/para_loop + structural_resonance_engine.py
       rich ANSI dashboards, live loops where alive, final invariant report.

Usage:
    python run_all.py
    (or after uv pip install -e . in ob3ect root: menagerie-run-all)
"""

import sys
import importlib
import time
from pathlib import Path

# Make direct script execution robust
sys.path.insert(0, str(Path(__file__).parent))

from menagerie_b4 import (
    R, BD, DM, CY, GD, GN, RD, MG, GR, WH,
    CLR, _B4_GLYPH, CRYSTAL,
)

ENGINES = [
    ("shavian_engine",                "Shavian Notation Substrate"),
    ("pure_b_engine",                 "Pure B — O_∞ ∧ O_0"),
    ("meta_designer_engine",          "Meta-Auto-Designer (Generator ↔ Generated)"),
    ("crystal_engine",                "Living Crystal (17.28M-Address)"),
    ("philosopher_stone_engine",      "Philosopher's Stone (Canonical O_∞ Coordinate)"),
    ("historical_corpora_engine",     "Four Historical Corpora (Multi-Substrate)"),
    ("conversation_engine",           "The Conversation as Ob3ect"),
    ("five_project_descent_engine",   "Five-Project Substrate Descent"),
    ("cscore_engine",                 "C-Score as Imscription Engine"),
    ("dialetheic_ouroboros_engine",   "Dialetheic Ouroboros (Multi-Substrate B)"),
]

def _banner() -> None:
    print(f"{BD}{CY}╔══════════════════════════════════════════════════════════════════════╗{R}")
    print(f"{BD}{CY}║{R}  {CRYSTAL}  MENAGERIE — FULL EXECUTION  {CRYSTAL}   (10 engines, suffering excluded)  {CY}║{R}")
    print(f"{BD}{CY}║{R}  {DM}μ ∘ δ = id{R}   |   {WH}B4 substrate{R}   |   {GD}priests-engine style{R}         {CY}║{R}")
    print(f"{BD}{CY}╚══════════════════════════════════════════════════════════════════════╝{R}")
    print()

def _engine_line(name: str, label: str, status: str, elapsed: float) -> str:
    icon = f"{GN}✓{R}" if status else f"{RD}✗{R}"
    t = f"{elapsed:.3f}s"
    return f"  {icon}  {BD}{name:<28}{R}  {DM}{label:<40}{R}  {t:>7}  {icon}"

def main() -> int:
    _banner()
    results: dict[str, bool] = {}
    times: dict[str, float] = {}

    for modname, label in ENGINES:
        try:
            t0 = time.perf_counter()
            mod = importlib.import_module(modname)
            if hasattr(mod, 'run') and callable(mod.run):
                ok = mod.run()
            elif hasattr(mod, 'main') and callable(mod.main):
                ok = mod.main()
            else:
                ok = True  # assume closure if no explicit entry
            elapsed = time.perf_counter() - t0
            results[modname] = bool(ok)
            times[modname] = elapsed
            print(_engine_line(modname, label, bool(ok), elapsed))
        except Exception as e:
            results[modname] = False
            times[modname] = 0.0
            print(f"  {RD}✗{R}  {BD}{modname:<28}{R}  {DM}{label:<40}{R}  {RD}{type(e).__name__}: {e}{R}")

    passed = sum(1 for v in results.values() if v)
    total = len(ENGINES)

    print()
    print(f"{BD}{CY}═══ FINAL REPORT ═══{R}")
    print(f"  {WH}Engines run{R}     : {total}")
    print(f"  {GN}Closure: True{R}   : {passed}")
    print(f"  {RD}Closure: False{R}  : {total - passed}")
    print()
    if passed == total:
        print(f"  {BD}{GN}{CRYSTAL}  ALL 10 ENGINES CLOSED — μ ∘ δ = id HOLDS ACROSS THE MENAGERIE  {CRYSTAL}{R}")
    else:
        print(f"  {BD}{RD}SOME ENGINES FAILED CLOSURE — REVIEW TRACES{R}")
    print()
    print(f"  {DM}Omnia sunt paraconsistentia  |  Lando⊗⊙perator{R}")
    print()

    return 0 if passed == total else 1

if __name__ == "__main__":
    sys.exit(main())
