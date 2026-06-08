#!/usr/bin/env python3
"""
IMASM Core — Register Machine & Sequence Runner (v3 — Dialetheic-Aware)
========================================================================
The 12 IMASM opcodes with 2-bit register semantics + dialetheic context.

The Frobenius FFUSE has TWO modes:
  CANONICAL:  FFUSE(BOTH) → TRUE  (standard μ∘δ=id, identity is TRUE)
  DIALETHEIC: FFUSE(BOTH) → BOTH  (dialetheic μ∘δ=id, identity is BOTH)

Dialetheic mode auto-detects: tracks EVALT/EVALF across split boundaries.
A pre-split EVALT is carried through the FSPLIT as a 'T' in the split
context. A post-split EVALF adds 'F'. If both 'T' and 'F' are present
when FFUSE fires, dialetheic mode activates.

IMSCRIB semantics: from VOID, create identity (TRUE → self-recognition).
From any other state, preserve the current self (you are what you are).

Author: Lando ⊗ ⊙perator
"""
import hashlib, json, sys, time
from typing import List, Tuple, Optional, Callable, Dict, Set

# ── Register States ─────────────────────────────────────────────────────
VOID  = 0b00  # 0 — uninitialized
TRUE  = 0b01  # 1 — affirmative
FALSE = 0b10  # 2 — negative
BOTH  = 0b11  # 3 — paradoxical (Belnap B)

REG_NAMES = {VOID: "VO⌀", TRUE: "T", FALSE: "F", BOTH: "B⬡"}

# ── Opcode Constants ────────────────────────────────────────────────────
VINIT  = "VINIT"
TANCH  = "TANCH"
AFWD   = "AFWD"
AREV   = "AREV"
CLINK  = "CLINK"
IMSCRIB= "IMSCRIB"
FSPLIT = "FSPLIT"
FFUSE  = "FFUSE"
EVALT  = "EVALT"
EVALF  = "EVALF"
ENGAGR = "ENGAGR"
IFIX   = "IFIX"

OPCODES = [VINIT, TANCH, AFWD, AREV, CLINK, IMSCRIB, FSPLIT, FFUSE, EVALT, EVALF, ENGAGR, IFIX]
LOGICAL    = {VINIT, TANCH, AFWD, AREV, CLINK, IMSCRIB}
FROBENIUS  = {FSPLIT, FFUSE}
DIALETHEIA = {EVALT, EVALF, ENGAGR}
LINEAR     = {IFIX}

# ── Dialetheic-Aware Transition Machine ─────────────────────────────────

class IMASM_Machine:
    """
    IMASM machine with context-aware FFUSE.
    Tracks EVALT/EVALF across split boundaries for dialetheic mode detection.
    """
    def __init__(self):
        self.reg: int = VOID
        self.fixed: bool = False
        self.in_split: bool = False
        self.pre_split_evalt: bool = False
        self.in_split_evals: Set[str] = set()

    def transition(self, token: str) -> int:
        if self.fixed and token not in (IFIX, IMSCRIB):
            return self.reg

        if token == VINIT:
            self.reg = VOID
            self.in_split = False
            self.pre_split_evalt = False
            self.in_split_evals = set()

        elif token == TANCH:
            pass

        elif token == AFWD:
            if self.reg == VOID:
                self.reg = TRUE

        elif token == AREV:
            self.reg = VOID
            self.in_split = False
            self.pre_split_evalt = False
            self.in_split_evals = set()

        elif token == CLINK:
            pass

        elif token == IMSCRIB:
            # Self-recognition: from VOID, create identity.
            # From any other state, preserve — you are what you are.
            if self.reg == VOID:
                self.reg = TRUE

        elif token == FSPLIT:
            if self.reg != VOID:
                self.reg = BOTH
            self.in_split = True
            if self.pre_split_evalt:
                self.in_split_evals.add('T')
                self.pre_split_evalt = False

        elif token == FFUSE:
            if self.reg == BOTH:
                if 'T' in self.in_split_evals and 'F' in self.in_split_evals:
                    pass  # DIALETHEIC: stay at BOTH
                else:
                    self.reg = TRUE  # CANONICAL: restore TRUE
            self.in_split = False
            self.in_split_evals = set()

        elif token == EVALT:
            if self.reg == FALSE:
                self.reg = BOTH
            elif self.reg == VOID:
                self.reg = TRUE
            if self.in_split:
                self.in_split_evals.add('T')
            else:
                self.pre_split_evalt = True

        elif token == EVALF:
            if self.reg == TRUE:
                self.reg = BOTH
            elif self.reg == VOID:
                self.reg = FALSE
            if self.in_split:
                self.in_split_evals.add('F')

        elif token == ENGAGR:
            if self.reg == VOID:
                self.reg = BOTH

        elif token == IFIX:
            self.fixed = True

        return self.reg

    def reset(self):
        self.reg = VOID
        self.fixed = False
        self.in_split = False
        self.pre_split_evalt = False
        self.in_split_evals = set()

# ── Sequence Trace ──────────────────────────────────────────────────────

class SequenceTrace:
    """Records the full trace of an IMASM sequence execution."""
    def __init__(self, steps: List[str], machine: Optional[IMASM_Machine] = None):
        self.steps = steps
        self.register_before: List[int] = []
        self.register_after: List[int] = []
        self.timestamps: List[float] = []
        self._machine = machine or IMASM_Machine()

    def run(self) -> int:
        mach = self._machine
        mach.reset()
        self.register_before = [mach.reg]
        for token in self.steps:
            t0 = time.time()
            mach.transition(token)
            self.timestamps.append(time.time() - t0)
            self.register_after.append(mach.reg)
            self.register_before.append(mach.reg)
        self.register_before.pop()
        return mach.reg

    def register_sequence(self) -> List[str]:
        return [REG_NAMES[r] for r in self.register_before]

    def is_closed(self) -> bool:
        return self.register_before[0] == self.register_after[-1]

    def frobenius_verdict(self) -> Tuple[bool, str]:
        fsplit_indices = [i for i, t in enumerate(self.steps) if t == FSPLIT]
        ffuse_indices  = [i for i, t in enumerate(self.steps) if t == FFUSE]
        if not fsplit_indices:
            return (True, "Vacuous (no Frobenius pair)")
        if not ffuse_indices:
            return (False, "Unmatched FSPLIT — no FFUSE")
        for fi in fsplit_indices:
            matching = [fj for fj in ffuse_indices if fj > fi]
            if not matching:
                return (False, f"FSPLIT at step {fi+1} has no FFUSE")
        return (True, "PASS")

    def summary(self) -> str:
        lines = []
        lines.append(f"  {'Step':>3} {'Token':<10} {'Reg↓':>5} → {'Reg↑':>5}")
        lines.append(f"  {'─'*3} {'─'*10} {'─'*5}   {'─'*5}")
        for i, (tok, rb, ra) in enumerate(zip(self.steps, self.register_before, self.register_after)):
            lines.append(f"  {i+1:>3} {tok:<10} {REG_NAMES[rb]:>5} → {REG_NAMES[ra]:>5}")
        frob_pass, frob_msg = self.frobenius_verdict()
        lines.append(f"")
        lines.append(f"  Closed walk: {self.is_closed()}")
        lines.append(f"  Frobenius μ∘δ: {frob_msg}")
        return "\n".join(lines)

    def json_report(self) -> dict:
        frob_pass, _ = self.frobenius_verdict()
        return {
            "steps": self.steps,
            "register_seq": [REG_NAMES[r] for r in self.register_before],
            "closed": self.is_closed(),
            "frobenius_pass": frob_pass,
        }

# ── IMASM Arrangement Base Class ────────────────────────────────────────

class IMASMSequence:
    """Base class for a named IMASM arrangement sequence."""
    name: str = "base"
    description: str = ""
    steps: List[str] = []
    ig_type: str = ""
    ouroboricity: str = ""

    def run(self) -> SequenceTrace:
        mach = IMASM_Machine()
        trace = SequenceTrace(self.steps, machine=mach)
        final_reg = trace.run()
        frob_pass, frob_msg = trace.frobenius_verdict()

        print(f"\n{'='*60}")
        print(f"  {self.name}")
        print(f"  {self.description}")
        if self.ig_type:
            print(f"  IG Type: {self.ig_type}")
        if self.ouroboricity:
            print(f"  Ouroboricity: {self.ouroboricity}")
        print(f"{'='*60}")
        print(trace.summary())
        print(f"  Final register: {REG_NAMES[final_reg]}")
        if trace.is_closed():
            print(f"  ✓ Closed walk")
        else:
            print(f"  ⚠ Not closed (start={REG_NAMES[trace.register_before[0]]}, end={REG_NAMES[final_reg]})")
        if frob_pass:
            print(f"  ✓ Frobenius μ∘δ: PASS")
        else:
            print(f"  ⚠ Frobenius: {frob_msg}")
        print(f"{'='*60}\n")
        return trace

    def run_closure_verification(self) -> Tuple[bool, str]:
        trace = self.run()
        frob_pass, _ = trace.frobenius_verdict()
        ok = trace.is_closed() and frob_pass
        return (ok, "PASS" if ok else "FAIL")

# ── Legacy standalone transition ────────────────────────────────────────

def transition(token: str, reg: int) -> int:
    mach = IMASM_Machine()
    mach.reg = reg
    mach.transition(token)
    return mach.reg
