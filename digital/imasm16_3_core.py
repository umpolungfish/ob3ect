#!/usr/bin/env python3
"""
IMASM-16_3 Core — Register Machine & Sequence Runner (SIXTEEN_3 trilattice)
=============================================================================
The 14 purely-symbolic IMASM-16_3 opcodes, extending the 12-opcode IMASM with
a third, orthogonal evaluation branch for the information axis, per the real
trilattice SIXTEEN_3: Shramko, Dunn & Takenaka, "The Trilattice of
Constructive Truth Values", J. Logic and Computation 11(6):761-788, 2001.

THE REAL CONSTRUCTION (§5 of the paper, verified against the source PDF, not
reconstructed from memory). The base set is FOUR initial truth values, not
two and not a product of two FOURs:

    I = {T, F, t, f}
      T — a sentence is constructively PROVEN
      F — a sentence is constructively REFUTED
      t — a sentence is (non-constructively) ACCEPTABLE
      f — a sentence is (non-constructively) REJECTABLE

SIXTEEN_3 is the full powerset P(I) — every subset of these four base values
is one of the 16 generalized truth values (N = {} = empty, A = {T,F,t,f} =
full). Three partial orderings are then defined on P(I) (Definition 5.2):

    x ≤_i y  ⟺  x ⊆ y                                            (information)
    x ≤_t y  ⟺  x∩{T,t} ⊆ y∩{T,t}  and  y∩{F,f} ⊆ x∩{F,f}         (truth)
    x ≤_c y  ⟺  x∩{T,F} ⊆ y∩{T,F}  and  y∩{t,f} ⊆ x∩{t,f}         (constructivity)

Verified against the paper's own worked example: T ∧ t = N under ≤_t (the
conjunction of two "truths" gives NOTHING, because neither conjunct is BOTH T
and t) — running the meet formula below on {T} and {t} reproduces exactly {}.

Register: a real 4-bit subset of {T, F, t, f} (16 states, matching the
paper's carrier exactly), not the three-independent-bits approximation this
file used before being corrected. Opcode → base-value mapping:

    EVALT sets T (constructive truth touched)
    EVALF sets F (constructive falsity touched)
    EVALI sets BOTH t and f (the acceptable/rejectable pair IS the
          information layer beyond classical T/F — "evaluating the
          information axis" engages both halves of it at once)
    TNEG  swaps T ↔ F   (classical bilattice negation: inverts ≤_t,
          leaves ≤_i exactly unchanged — swapping two bits preserves
          |x|, hence preserves the subset/information order, which is
          the defining property of negation the paper requires)
    INEG  swaps t ↔ f   (the same negation, applied to the acceptable/
          rejectable pair instead of the proven/refuted pair)

No opcode uses a Latin letter, so a trilattice verdict (T, N, B, F) can never
be confused with a graph node — this module and the classic 12-opcode
`imasm_core.py` are siblings, not a replacement: FSPLIT3/FFUSE3 are new
opcodes alongside (not instead of) FSPLIT/FFUSE, keeping the 12-opcode tower
and its Lean scaffold generator untouched.

Author: Lando⊗⊙perator
"""
import time
from typing import List, Tuple, Optional, Set, Dict, FrozenSet

# ── The base set and the 16-element carrier ─────────────────────────────
BASE = ('T', 'F', 't', 'f')   # display order for names, matches the paper's own
Reg = FrozenSet[str]          # a register value is a subset of BASE

EMPTY: Reg = frozenset()
FULL: Reg = frozenset(BASE)


def reg_name(r: Reg) -> str:
    if not r:
        return "N"
    if r == FULL:
        return "A"
    return "".join(b for b in BASE if b in r)


def reg_from_name(name: str) -> Reg:
    if name in ("N", "∅", ""):
        return EMPTY
    if name == "A":
        return FULL
    return frozenset(name)


# ── The three orderings (Definition 5.2) ────────────────────────────────

def leq_i(x: Reg, y: Reg) -> bool:
    """Information order: x ≤_i y ⟺ x ⊆ y."""
    return x <= y


def leq_t(x: Reg, y: Reg) -> bool:
    """Truth order: positive part (T,t) grows, negative part (F,f) shrinks."""
    x_tt, y_tt = x & {'T', 't'}, y & {'T', 't'}
    x_ff, y_ff = x & {'F', 'f'}, y & {'F', 'f'}
    return x_tt <= y_tt and y_ff <= x_ff


def leq_c(x: Reg, y: Reg) -> bool:
    """Constructivity order: constructive part (T,F) grows, non-constructive
    part (t,f) shrinks."""
    x_tf, y_tf = x & {'T', 'F'}, y & {'T', 'F'}
    x_tf2, y_tf2 = x & {'t', 'f'}, y & {'t', 'f'}
    return x_tf <= y_tf and y_tf2 <= x_tf2


# ── Meet/join under each ordering ────────────────────────────────────────
# ⊓/⊔ for ≤_i (plain intersection/union — the information order IS the
# subset order, so its lattice operations are the powerset's own).
# ∧/∨ for ≤_t. △/▽ for ≤_c. Positive part intersects for meet (union for
# join); negative part is the mirror (union for meet, intersects for join)
# — verified against the paper's own T∧t=N worked example.

def meet_i(x: Reg, y: Reg) -> Reg: return x & y
def join_i(x: Reg, y: Reg) -> Reg: return x | y

def meet_t(x: Reg, y: Reg) -> Reg:
    return ((x & {'T', 't'}) & (y & {'T', 't'})) | ((x & {'F', 'f'}) | (y & {'F', 'f'}))

def join_t(x: Reg, y: Reg) -> Reg:
    return ((x & {'T', 't'}) | (y & {'T', 't'})) | ((x & {'F', 'f'}) & (y & {'F', 'f'}))

def meet_c(x: Reg, y: Reg) -> Reg:
    return ((x & {'T', 'F'}) & (y & {'T', 'F'})) | ((x & {'t', 'f'}) | (y & {'t', 'f'}))

def join_c(x: Reg, y: Reg) -> Reg:
    return ((x & {'T', 'F'}) | (y & {'T', 'F'})) | ((x & {'t', 'f'}) & (y & {'t', 'f'}))

# Sanity check against the paper's own worked example (§5, p. 776-777):
# "T ∧ t = N" — the conjunction of two truths gives nothing.
assert meet_t(frozenset('T'), frozenset('t')) == EMPTY, "meet_t formula does not match the paper's T∧t=N example"


# ── Opcode constants (glyph is the wire form; name is for humans/logs) ──
# In catalog order — the same ordering IG_catalog.json gives its columns. ⊙
# stands at slot nine, Criticality: IMSCRIB is ⊙ because imscribing is
# inclosure, a boundary drawn around its own centre, and a critical point is
# where a system turns on itself.
VINIT   = "VINIT"    # ⊢  0→1  source boundary
TANCH   = "TANCH"    # ⊣  1→1  sink boundary
AFWD    = "AFWD"     # >  1→1  forward morphism, WORK
AREV    = "AREV"     # <  1→1  reverse morphism, WORK
CLINK   = "CLINK"    # ⋈  1→1  composition / relational link, WORK
EVALT   = "EVALT"    # ⊤  1→1  evaluates the True axis (≤_t), WORK
FSPLIT3 = "FSPLIT3"  # ∈  1→3  3-way split: T, F, I arms
FFUSE3  = "FFUSE3"   # ∋  3→1  3-way fuse: merges T, F, I arms
IMSCRIB = "IMSCRIB"  # ⊙  1→1  identity / neutral self-reference
EVALF   = "EVALF"    # ⊥  1→1  evaluates the False axis (≤_t), WORK
EVALI   = "EVALI"    # ⊞  1→1  evaluates the Information axis (≤_i), WORK
IFIX    = "IFIX"     # ⊡  1→1  irreversible commit, WORK

OPCODES = [VINIT, TANCH, AFWD, AREV, CLINK, EVALT, FSPLIT3, FFUSE3,
           IMSCRIB, EVALF, EVALI, IFIX]

GLYPH = {
    VINIT: "⊢", TANCH: "⊣", AFWD: "≻", AREV: "≺", CLINK: "⋈", EVALT: "⊤",
    FSPLIT3: "∈", FFUSE3: "∋", IMSCRIB: "⊙", EVALF: "⊥", EVALI: "⊞",
    IFIX: "⊡",
}

# THE set is twelve. Only these glyphs are tokens. The old marks ◇ ● = + × ¬ ~ ≁
# do NOT parse — no alias, no shim; a word containing one reads it as nothing,
# exactly as a stray letter does. A retired form that still loads is how legacy
# notation survives a purge, so there is none. TNEG and INEG were never a
# thirteenth and fourteenth opcode: the two-layer swaps they named are internal
# to AREV `<`, which is the whole reverse morphism, and ⊡ IFIX replaced the rest.
NAME_FROM_GLYPH = {v: k for k, v in GLYPH.items()}

LOGICAL   = {VINIT, TANCH, AFWD, AREV, CLINK, IMSCRIB}
TRILATIC  = {FSPLIT3, FFUSE3}
EVAL      = {EVALT, EVALF, EVALI}
LINEAR    = {IFIX}
WORK_OPS  = {AFWD, AREV, CLINK, EVALT, EVALF, EVALI, IFIX}
NO_WORK   = {VINIT, TANCH, IMSCRIB, FSPLIT3, FFUSE3}

assert set(OPCODES) == WORK_OPS | NO_WORK
assert len(OPCODES) == 12


# ─── Cyclic FSPLIT3/FFUSE3 pairing ───────────────────────────────────────────
# A word is a loop. ROTAT is the cyclic shift (Weyl–Heisenberg X), so any
# readout that pairs split with fuse must pair around the cycle; pairing over
# the linearized list makes every region that the cut passes through look
# dangling, and turns rotation-invariant structure into spurious phase.

def _cyclic_pairs(steps):
    """Pair FSPLIT3→FFUSE3 over the word read as a loop.

    Returns (pairs, unmatched_splits, unmatched_fuses) as indices into `steps`;
    each pair is (si, fj) with the region running FORWARD around the cycle from
    si to fj. Splits and fuses go unmatched only on a true count imbalance,
    which no rotation can repair.
    """
    n = len(steps)
    split_idx = [i for i, t in enumerate(steps) if t == FSPLIT3]
    fuse_idx  = [i for i, t in enumerate(steps) if t == FFUSE3]
    if not split_idx and not fuse_idx:
        return [], [], []
    if len(split_idx) != len(fuse_idx):
        return [], split_idx, fuse_idx
    # Balanced counts: by the cycle lemma some rotation beginning at a split
    # pairs every region without underflow. Read from there.
    for start in split_idx:
        stack, pairs = [], []
        for off in range(n):
            i = (start + off) % n
            if steps[i] == FSPLIT3:
                stack.append(i)
            elif steps[i] == FFUSE3:
                if not stack:
                    break
                pairs.append((stack.pop(), i))
        else:
            if not stack:
                return pairs, [], []
    return [], split_idx, fuse_idx


def _cyclic_interior(steps, si, fj):
    """Tokens strictly inside the region, walking forward around the cycle."""
    n = len(steps)
    return [steps[(si + 1 + j) % n] for j in range((fj - si - 1) % n)]


class IMASM16_3_Machine:
    """
    Trilattice-aware register machine over the real 16-element carrier P({T,F,t,f}).
    FSPLIT3 opens a 3-way fork context that tracks which base values were
    touched across its three arms (T-arm via EVALT, F-arm via EVALF, I-arm
    via EVALI — which touches both t and f); FFUSE3 closes it by folding
    those touches back into the single register.
    """
    def __init__(self):
        self.reg: Reg = EMPTY
        self.fixed = False
        # Fork state is a STACK, not a flag. FSPLIT3 pushes a frame, FFUSE3 pops
        # one and folds its touches into the register AND into the enclosing
        # frame, so nested regions compose: an inner apex is a refinement of the
        # outer one, and μ∘δ=id at each level composes to μ∘δ=id overall.
        self.split_stack: List[Set[str]] = []

    @property
    def in_split(self) -> bool:
        """True while at least one fork frame is open."""
        return bool(self.split_stack)

    @property
    def split_depth(self) -> int:
        return len(self.split_stack)

    @property
    def split_touched(self) -> Set[str]:
        """Touches accumulated in the innermost open frame."""
        return set(self.split_stack[-1]) if self.split_stack else set()

    def reg_name(self) -> str:
        return reg_name(self.reg)

    def _touch(self, values: Set[str]) -> None:
        self.reg = self.reg | frozenset(values)
        if self.split_stack:
            self.split_stack[-1] |= set(values)

    def transition(self, token: str) -> Reg:
        if self.fixed and token not in (IFIX, IMSCRIB):
            return self.reg

        if token == VINIT:
            self.reg = EMPTY
            self.split_stack = []

        elif token == TANCH:
            pass

        elif token == AFWD:
            if not self.reg:
                self.reg = frozenset('T')

        elif token == AREV:
            # Reverse morphism: clears the register, but does NOT close the fork.
            # Only FSPLIT3 opens a split context and only FFUSE3 closes one; an
            # AREV between two arms is work on an arm, not a fuse. Resetting
            # in_split/split_touched here (the body was identical to VINIT's)
            # discarded every touch the arms had accumulated, so a ● downstream
            # folded an empty set and the arms reached the apex carrying nothing.
            self.reg = EMPTY

        elif token == CLINK:
            pass

        elif token == IMSCRIB:
            if not self.reg:
                self.reg = frozenset('T')

        elif token == FSPLIT3:
            self.split_stack.append(set())

        elif token == FFUSE3:
            if self.split_stack:
                closed = self.split_stack.pop()
                self.reg = self.reg | frozenset(closed)
                if self.split_stack:
                    # Fold the inner apex into the enclosing fork: the outer ●
                    # must see what its sub-regions reconnected.
                    self.split_stack[-1] |= closed

        elif token == EVALT:
            self._touch({'T'})

        elif token == EVALF:
            self._touch({'F'})

        elif token == EVALI:
            self._touch({'t', 'f'})

        elif token == IFIX:
            self.fixed = True

        return self.reg

    def reset(self):
        self.reg = EMPTY
        self.fixed = False
        self.split_stack = []


# ── Sequence trace ───────────────────────────────────────────────────────

class Sequence16_3Trace:
    """Records the full trace of an IMASM-16_3 sequence execution."""
    def __init__(self, steps: List[str], machine: Optional[IMASM16_3_Machine] = None):
        self.steps = steps
        self.register_before: List[Reg] = []
        self.register_after: List[Reg] = []
        self.timestamps: List[float] = []
        self._machine = machine or IMASM16_3_Machine()

    def run(self) -> Reg:
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
        return [reg_name(r) for r in self.register_before]

    def is_closed(self) -> bool:
        return self.register_before[0] == self.register_after[-1]

    def tri_ancestral_verdict(self) -> Tuple[str, str]:
        """
        T — every FSPLIT3 pairs with a FFUSE3 around the cycle, and at least one
            work opcode ran inside that region (a real transformation).
        N — split and fused, but no work opcode ran inside — identity only.
        B — a FSPLIT3 dangles with no FFUSE3 to pair with (a fork left open).
        F — a FFUSE3 has no FSPLIT3 to pair with (ill-typed).

        Pairing is CYCLIC. A word is a loop, and ROTAT is the cyclic shift, so a
        rotation that cuts through the interior of a region must not change the
        verdict. Pairing linearly makes it change: a FFUSE3 landing before its
        FSPLIT3 in the cut reads as ill-typed when the region is intact, and the
        readout becomes a function of where you started reading.
        """
        pairs, un_split, un_fuse = _cyclic_pairs(self.steps)

        if not pairs and not un_split and not un_fuse:
            return ("N", "No fork/fuse — void, never weighed alternatives")
        if len(un_fuse) > len(un_split):
            return ("F", f"FFUSE3 at step {un_fuse[0]+1} has no FSPLIT3 to pair — ill-typed")
        if un_split:
            return ("B", f"FSPLIT3 at step {un_split[0]+1} dangles — no matching FFUSE3")

        for si, fj in pairs:
            if any(t in WORK_OPS for t in _cyclic_interior(self.steps, si, fj)):
                return ("T", "Tri-ancestral reconnection over a transformed object — closes")
        return ("N", "Split/fused with no work on any arm — μ∘δ=id verifies nothing")

    def summary(self) -> str:
        lines = []
        lines.append(f"  {'Step':>3} {'Glyph':^5} {'Token':<9} {'Reg↓':>5} → {'Reg↑':>5}")
        lines.append(f"  {'─'*3} {'─'*5} {'─'*9} {'─'*5}   {'─'*5}")
        for i, (tok, rb, ra) in enumerate(zip(self.steps, self.register_before, self.register_after)):
            lines.append(f"  {i+1:>3} {GLYPH.get(tok,'?'):^5} {tok:<9} "
                          f"{reg_name(rb):>5} → {reg_name(ra):>5}")
        verdict, msg = self.tri_ancestral_verdict()
        lines.append("")
        lines.append(f"  Closed walk: {self.is_closed()}")
        lines.append(f"  Tri-ancestral verdict: {verdict} — {msg}")
        return "\n".join(lines)

    def json_report(self) -> dict:
        verdict, msg = self.tri_ancestral_verdict()
        # The word REPORTED is the word WALKED. This used to strip every VINIT
        # and TANCH out of the interior and re-wrap the remainder in ⊢…⊣, which
        # is a second construction of an object that already exists: a sequence
        # carrying an interior ⊣ came back one glyph shorter than the table
        # printed beside it, and the two disagreed with nothing to say which was
        # the word.
        glyph_word = "".join(GLYPH.get(t, "?") for t in self.steps)
        return {
            "steps": self.steps,
            "glyph_word": glyph_word,
            "register_seq": [reg_name(r) for r in self.register_before],
            "closed": self.is_closed(),
            "verdict": verdict,
            "verdict_reading": msg,
        }


# ── Sequence base class ──────────────────────────────────────────────────

class IMASM16_3Sequence:
    """Base class for a named IMASM-16_3 arrangement sequence."""
    name: str = "base"
    description: str = ""
    steps: List[str] = []

    def run(self) -> Sequence16_3Trace:
        mach = IMASM16_3_Machine()
        trace = Sequence16_3Trace(self.steps, machine=mach)
        final_reg = trace.run()
        verdict, msg = trace.tri_ancestral_verdict()

        print(f"\n{'='*64}")
        print(f"  {self.name}")
        print(f"  {self.description}")
        interior = [GLYPH.get(t,'?') for t in self.steps if t not in (VINIT, TANCH)]
        print(f"  Word: ⊢{''.join(interior)}⊣")
        print(f"{'='*64}")
        print(trace.summary())
        print(f"  Final register: {reg_name(final_reg)}")
        print(f"  {'✓' if trace.is_closed() else '⚠'} Closed walk: {trace.is_closed()}")
        print(f"  Verdict: {verdict} — {msg}")
        print(f"{'='*64}\n")
        return trace


def parse_glyph_word(word: str) -> List[str]:
    """⊢>∈⊤⊥⊞∋⊡⊣  →  [VINIT, AFWD, FSPLIT3, EVALT, EVALF, EVALI, FFUSE3, IFIX, TANCH]"""
    return [NAME_FROM_GLYPH[ch] for ch in word if ch in NAME_FROM_GLYPH]


if __name__ == "__main__":
    # The example word from the spec: split → work T/F/I → con-negate → fuse → commit
    example = IMASM16_3Sequence()
    example.name = "Example: split, evaluate T/F/I, con-negate, fuse, commit"
    example.description = "⊢>∈+×⊞≁∋¬⊣"
    example.steps = parse_glyph_word("⊢>∈+×⊞≁∋¬⊣")
    example.run()

    neutral = IMASM16_3Sequence()
    neutral.name = "Neutral inflation under ⊙"
    neutral.description = "⊢∈⊙⊙⊙∋⊣ — valid, fully closed identity program"
    neutral.steps = parse_glyph_word("⊢∈⊙⊙⊙∋⊣")
    neutral.run()

    print("Sanity check — the paper's own worked example, T ∧ t = N (§5, p.776-777):")
    print(f"  meet_t({{T}}, {{t}}) = {reg_name(meet_t(frozenset('T'), frozenset('t')))}")
    print("\nThe 16-element carrier, by level (Table 1 of the paper):")
    from itertools import combinations
    by_level: Dict[int, List[Reg]] = {}
    for k in range(5):
        by_level[k] = [frozenset(c) for c in combinations(BASE, k)]
    for k, regs in by_level.items():
        print(f"  Level {k+1} ({len(regs)}): {', '.join(reg_name(r) for r in regs)}")
