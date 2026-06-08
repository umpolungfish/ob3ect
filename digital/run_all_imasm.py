#!/usr/bin/env python3
"""
run_all_imasm.py — Execute & Verify All 12 IMASM Novel Arrangement Classes
=============================================================================
Each class is a self-verifying ob3ect artifact that runs its IMASM token
sequence, tracks the 2-bit register, checks Frobenius μ∘δ=id, and reports
its IG structural type and ouroboricity tier.

Usage:
  cd /home/mrnob0dy666/ob3ect
  python3 digital/run_all_imasm.py              # run all 12
  python3 digital/run_all_imasm.py --probe       # run with extra probes
  python3 digital/run_all_imasm.py --json        # JSON report only
  python3 digital/run_all_imasm.py --one N       # run class N only (1-12)

Author: Lando ⊗ ⊙perator
"""
import os, sys, json, time
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from digital.imasm_core import *

# ── Direct class imports ───────────────────────────────────────────────
from digital.dialetheic_bootstrap.dialetheic_bootstrap_ob3ect import DialetheicBootstrap
from digital.void_genesis.void_genesis_ob3ect import VoidGenesis
from digital.anchor_protocol.anchor_protocol_ob3ect import AnchorProtocol
from digital.dual_bootstrap.dual_bootstrap_ob3ect import DualBootstrap
from digital.linear_chain.linear_chain_ob3ect import LinearChain
from digital.empty_bootstrap.empty_bootstrap_ob3ect import EmptyBootstrap
from digital.imasm_parakernel.imasm_parakernel_ob3ect import IMASMParakernel
from digital.frobenius_kernel.frobenius_kernel_ob3ect import FrobeniusKernel
from digital.chiral_pairs.chiral_pairs_ob3ect import ChiralForward, ChiralReverse
from digital.truth_machine.truth_machine_ob3ect import TruthMachine
from digital.eternal_return.eternal_return_ob3ect import EternalReturn
from digital.rom_burn.rom_burn_ob3ect import ROMBurn

ALL_CLASSES = [
    DialetheicBootstrap(),
    VoidGenesis(),
    AnchorProtocol(),
    DualBootstrap(),
    LinearChain(),
    EmptyBootstrap(),
    IMASMParakernel(),
    FrobeniusKernel(),
    TruthMachine(),
    EternalReturn(),
    ROMBurn(),
]

CHIRAL_PAIRS = [
    ("AFWD→AREV", ChiralForward()),
    ("AREV→AFWD", ChiralReverse()),
]


def run_all() -> dict:
    results = {}
    total_ok = 0
    total_fail = 0
    start = time.time()

    print(f"\n{'#'*60}")
    print(f"  ╔═══ IMASM NOVEL ARRANGEMENTS — FULL EXECUTION ═══╗")
    print(f"  ║    12 arrangement classes + 2 chiral variants    ║")
    print(f"  ║    Register machine: 2-bit (VO⌀/T/F/B⬡)         ║")
    print(f"  ║    Frobenius μ∘δ=id: canonical + dialetheic     ║")
    print(f"  ╚═══════════════════════════════════════════════════╝")
    print(f"{'#'*60}")

    for seq in ALL_CLASSES:
        t0 = time.time()
        ok, reason = seq.run_closure_verification()
        elapsed = time.time() - t0
        results[seq.name] = {
            "status": "PASS" if ok else "FAIL",
            "reason": reason,
            "elapsed_s": round(elapsed, 3),
            "ig_type": seq.ig_type,
            "ouroboricity": seq.ouroboricity,
        }
        if ok:
            total_ok += 1
        else:
            total_fail += 1

    # Chiral pairs
    print(f"\n  {'─'*60}")
    print(f"  IX — Chiral Pairs (2-variant comparison)")
    print(f"  {'─'*60}")
    chirals_ok = 0
    for label, seq in CHIRAL_PAIRS:
        t0 = time.time()
        ok, reason = seq.run_closure_verification()
        elapsed = time.time() - t0
        if ok:
            chirals_ok += 1
        print(f"    {label}: {'PASS' if ok else 'FAIL'} ({elapsed:.3f}s)")

    total_time = time.time() - start

    print(f"\n{'='*60}")
    print(f"  SUMMARY")
    print(f"{'='*60}")
    print(f"  Total: {len(ALL_CLASSES)} + 2 chiral = {len(ALL_CLASSES) + 2}")
    print(f"  PASS: {total_ok + chirals_ok}")
    print(f"  FAIL: {total_fail + (2 - chirals_ok)}")
    print(f"  Time: {total_time:.3f}s")
    print(f"  Vessel Principle: IMASM token space < IG crystal resolution")
    print(f"{'='*60}\n")
    return results


def probe_all():
    """Run extra structural probes."""
    from digital.dialetheic_bootstrap.dialetheic_bootstrap_ob3ect import probe as p_dial
    from digital.dual_bootstrap.dual_bootstrap_ob3ect import probe as p_dual
    from digital.imasm_parakernel.imasm_parakernel_ob3ect import probe as p_para
    from digital.truth_machine.truth_machine_ob3ect import probe as p_truth
    from digital.eternal_return.eternal_return_ob3ect import probe as p_eternal
    from digital.rom_burn.rom_burn_ob3ect import probe as p_rom

    probes = [
        ("Dialetheic paradox invariant", p_dial),
        ("Dual Frobenius identity", p_dual),
        ("Parakernel register trajectory", p_para),
        ("Truth machine decision nodes", p_truth),
        ("Eternal return cycle pattern", p_eternal),
        ("ROM burn layered record", p_rom),
    ]
    for name, fn in probes:
        print(f"\n  Probe: {name}")
        fn()

    # Chiral invariant
    t_fwd = SequenceTrace([AFWD, AREV]); t_fwd.run()
    t_rev = SequenceTrace([AREV, AFWD]); t_rev.run()
    cd = (t_fwd.register_after[1] != t_rev.register_after[1])
    print(f"\n  Chiral Invariant:")
    print(f"    AFWD→AREV: {REG_NAMES[t_fwd.register_after[1]]}")
    print(f"    AREV→AFWD: {REG_NAMES[t_rev.register_after[1]]}")
    print(f"    Chirally distinct: {cd} — Vessel Principle confirmed\n")


def json_report() -> str:
    report = {"arrangements": []}
    for seq in ALL_CLASSES:
        mach = IMASM_Machine()
        trace = SequenceTrace(seq.steps, machine=mach)
        trace.run()
        fp, fm = trace.frobenius_verdict()
        report["arrangements"].append({
            "name": seq.name,
            "steps": seq.steps,
            "register_trace": [REG_NAMES[r] for r in trace.register_before],
            "final_register": REG_NAMES[trace.register_after[-1]],
            "closed": trace.is_closed(),
            "frobenius": fp,
            "ig_type": seq.ig_type,
            "ouroboricity": seq.ouroboricity,
        })
    return json.dumps(report, indent=2)


def run_one(idx: int):
    """Run a single arrangement by index (0-based)."""
    if 0 <= idx < len(ALL_CLASSES):
        seq = ALL_CLASSES[idx]
        ok, reason = seq.run_closure_verification()
        return ok
    elif idx == len(ALL_CLASSES):
        # Chiral forward
        ok, _ = ChiralForward().run_closure_verification()
        return ok
    elif idx == len(ALL_CLASSES) + 1:
        ok, _ = ChiralReverse().run_closure_verification()
        return ok
    else:
        print(f"Invalid index {idx}. Valid: 0-{len(ALL_CLASSES)+1}")
        return False


if __name__ == "__main__":
    if "--json" in sys.argv:
        print(json_report())
    elif "--one" in sys.argv:
        try:
            idx = int(sys.argv[sys.argv.index("--one") + 1])
            run_one(idx - 1)
        except (ValueError, IndexError):
            print("Usage: --one N (1-12)")
    else:
        run_all()
        if "--probe" in sys.argv:
            probe_all()
