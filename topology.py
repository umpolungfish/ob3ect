"""
Ob3ect Topology Analysis
========================
Analyzes the structural topology of an IMASM opcode sequence produced by the
ob3ect pipeline. Detects and classifies:

  - Nesting depth (FSPLIT/FFUSE pairs nested inside each other)
  - Open forks (unmatched FSPLITs that branch without ever rejoining)
  - Cross-branch routing (FSPLIT.F wire routes to a non-matched FFUSE)
  - Branch weight asymmetry (T-branch vs F-branch opcode density)
  - Empty branches (FSPLIT immediately followed by FFUSE)
  - Topology class: flat_chain | nested | open_fork_dag | webbed | mixed

This module bridges the ob3ect pipeline with the IMSCRIBr wiring graph
infrastructure, making topology metadata a first-class part of every artifact.

Author: Lando\u2297\u2299perator
"""
from __future__ import annotations

import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List, Optional, Tuple

# ── Token import (from IMSCRIBr) ──────────────────────────────────────────────

_IMSCRIBR_PATH = str(Path(__file__).resolve().parents[1] / "IMSCRIBr")
if _IMSCRIBR_PATH not in sys.path:
    sys.path.insert(0, _IMSCRIBR_PATH)

try:
    from tokens import Token
    from wiring import match_pairs, WiredGraph, Wire, imscr_wiring
except ImportError:
    # Fallback: define Token locally for standalone use
    from enum import Enum

    class Token(Enum):
        VINIT = "VINIT"; TANCH = "TANCH"; AFWD = "AFWD"; AREV = "AREV"
        CLINK = "CLINK"; IMSCRIB = "IMSCRIB"; FSPLIT = "FSPLIT"; FFUSE = "FFUSE"
        EVALT = "EVALT"; EVALF = "EVALF"; ENGAGR = "ENGAGR"; IFIX = "IFIX"

    def match_pairs(tokens):
        stack, pairs = [], []
        for i, t in enumerate(tokens):
            if t == Token.FSPLIT:
                stack.append(i)
            elif t == Token.FFUSE and stack:
                pairs.append((stack.pop(), i))
        return pairs

    class Wire:
        def __init__(self, s, sp, d, dp):
            self.src_node, self.src_port = s, sp
            self.dst_node, self.dst_port = d, dp

    @dataclass
    class WiredGraph:
        tokens: tuple
        wires: list
        name: str = ""
        description: str = ""
        def has_cross_branch(self): return False
        def cross_branch_wires(self): return []

    def imscr_wiring(tokens):
        return WiredGraph(tokens=tokens, wires=[], name="", description="")


# ── TopologyReport ────────────────────────────────────────────────────────────

@dataclass
class TopologyReport:
    """Structural topology metadata for an IMASM opcode sequence."""

    # Classification
    topology_class: str = "flat_chain"
    # "flat_chain"     — depth-0 linear pipeline, all FSPLIT/FFUSE matched sequentially
    # "nested"         — at least one nested FSPLIT/FFUSE pair (depth >= 1)
    # "open_fork_dag"  — unmatched FSPLITs present, branches diverge permanently
    # "webbed"         — cross-branch routing present (FSPLIT.F to non-matched FFUSE)
    # "mixed"           — combination of nesting + open forks + cross-branch

    # Quantitative metrics
    nesting_depth: int = 0          # maximum nesting depth
    total_pairs: int = 0            # matched FSPLIT/FFUSE pairs
    open_forks: int = 0             # unmatched FSPLITs
    cross_branches: int = 0         # cross-branch wires
    empty_branches: int = 0         # FSPLIT immediately followed by FFUSE (or trivial)
    sequence_length: int = 0        # total opcode count

    # Branch weight asymmetry
    t_branch_ops: int = 0           # opcodes in T-branches across all pairs
    f_branch_ops: int = 0           # opcodes in F-branches across all pairs
    branch_ratio: float = 1.0       # max(t,f)/min(t,f); 1.0 = balanced

    # Fork/fuse details
    fork_positions: List[int] = field(default_factory=list)     # FSPLIT indices
    fuse_positions: List[int] = field(default_factory=list)     # FFUSE indices
    pair_list: List[Tuple[int, int]] = field(default_factory=list)  # (fsplit_idx, ffuse_idx)

    # Semantic modifiers (derived)
    has_cascading_ifix: bool = False  # consecutive IFIX→IFIX chains
    max_ifix_cascade: int = 0         # longest IFIX→IFIX chain
    has_negation_first: bool = False  # EVALF before EVALT in a pair block
    has_dual_fixation: bool = False   # IFIX in both T and F branches of same pair

    def summary(self) -> str:
        lines = [
            f"Topology: {self.topology_class}",
            f"  nesting_depth={self.nesting_depth}  pairs={self.total_pairs}  "
            f"open_forks={self.open_forks}  cross_branches={self.cross_branches}",
            f"  empty_branches={self.empty_branches}  seq_len={self.sequence_length}",
            f"  T_ops={self.t_branch_ops}  F_ops={self.f_branch_ops}  "
            f"ratio={self.branch_ratio:.2f}",
            f"  cascading_ifix={self.has_cascading_ifix} (max={self.max_ifix_cascade})  "
            f"negation_first={self.has_negation_first}  "
            f"dual_fixation={self.has_dual_fixation}",
        ]
        return "\n".join(lines)

    def to_dict(self) -> dict:
        return {
            "topology_class": self.topology_class,
            "nesting_depth": self.nesting_depth,
            "total_pairs": self.total_pairs,
            "open_forks": self.open_forks,
            "cross_branches": self.cross_branches,
            "empty_branches": self.empty_branches,
            "sequence_length": self.sequence_length,
            "t_branch_ops": self.t_branch_ops,
            "f_branch_ops": self.f_branch_ops,
            "branch_ratio": round(self.branch_ratio, 3),
            "fork_positions": self.fork_positions,
            "fuse_positions": self.fuse_positions,
            "pair_list": [list(p) for p in self.pair_list],
            "has_cascading_ifix": self.has_cascading_ifix,
            "max_ifix_cascade": self.max_ifix_cascade,
            "has_negation_first": self.has_negation_first,
            "has_dual_fixation": self.has_dual_fixation,
        }

# ── Analysis function ─────────────────────────────────────────────────────────

def _token_from_str(name: str) -> Optional[Token]:
    """Convert an opcode string to a Token enum member."""
    try:
        return Token[name]
    except (KeyError, AttributeError):
        return None


def analyze_topology(opcodes: List[str]) -> TopologyReport:
    """
    Analyze the structural topology of an IMASM opcode sequence.

    Args:
        opcodes: List of opcode strings (e.g. ["VINIT", "FSPLIT", "EVALT", ...])

    Returns:
        TopologyReport with full topology metadata.
    """
    report = TopologyReport()
    report.sequence_length = len(opcodes)

    # Convert strings to Token enums
    tokens = []
    for oc in opcodes:
        t = _token_from_str(oc)
        if t is None:
            # Unknown opcode — skip this position
            continue
        tokens.append(t)

    if not tokens:
        return report

    n = len(tokens)

    # ── Matched pairs ──────────────────────────────────────────────────────
    pairs = match_pairs(tuple(tokens))
    report.pair_list = pairs
    report.total_pairs = len(pairs)
    report.fork_positions = [i for i, t in enumerate(tokens) if t == Token.FSPLIT]
    report.fuse_positions = [i for i, t in enumerate(tokens) if t == Token.FFUSE]

    # ── Open forks: FSPLITs without matching FFUSE ──────────────────────────
    matched_fsplitts = {fs for fs, _ in pairs}
    report.open_forks = len(report.fork_positions) - len(matched_fsplitts)

    # ── Nesting depth ────────────────────────────────────────────────────────
    depth = 0
    max_depth = 0
    for t in tokens:
        if t == Token.FSPLIT:
            depth += 1
            max_depth = max(max_depth, depth)
        elif t == Token.FFUSE:
            depth = max(0, depth - 1)
    # A single non-nested pair has max_depth=1 (tokens inside are at depth 1).
    # True nesting (pair inside pair) requires max_depth >= 2.
    # nesting_depth counts how many levels of nesting exist beyond the base pair.
    report.nesting_depth = max(0, max_depth - 1)

    # ── Nesting array (depth at each position) ───────────────────────────────
    nesting = [0] * n
    d = 0
    for i, t in enumerate(tokens):
        if t == Token.FSPLIT:
            d += 1
            nesting[i] = d
        elif t == Token.FFUSE:
            nesting[i] = d
            d = max(0, d - 1)
        else:
            nesting[i] = d

    # ── Fork nodes set (positions that are FSPLIT or FFUSE) ──────────────────
    fork_nodes = set(report.fork_positions) | set(report.fuse_positions)

    # ── Empty branches: FSPLIT immediately followed by FFUSE (or trivial gap) ─
    empty_count = 0
    for fs, ff in pairs:
        # Check if T or F branch is empty
        own_d = nesting[fs]
        block = [i for i in range(fs + 1, ff)
                 if i not in fork_nodes and nesting[i] == own_d]
        if len(block) == 0:
            empty_count += 1  # both branches empty
        else:
            # Check if one branch is empty (no EVALT or no EVALF)
            block_tokens = [tokens[i] for i in block]
            has_evalt = Token.EVALT in block_tokens
            has_evalf = Token.EVALF in block_tokens
            # An empty branch = no anchor in that branch
            # But this is approximate — a branch could have ops without an anchor
            # We count a branch as empty if there are zero ops assigned to it
            # For now, count pair as having empty branch if block has < 2 tokens
            if len(block) < 2:
                empty_count += 1
    report.empty_branches = empty_count

    # ── Branch weight: T-branch vs F-branch ops ──────────────────────────────
    # For each pair, assign tokens to T or F branch based on anchor position
    t_total = 0
    f_total = 0
    for fs, ff in pairs:
        own_d = nesting[fs]
        block = [i for i in range(fs + 1, ff)
                 if i not in fork_nodes and nesting[i] == own_d]
        blk = [tokens[i] for i in block]

        # Find anchor positions
        t_anchor = None
        f_anchor = None
        for j, t in enumerate(blk):
            if t == Token.EVALT and t_anchor is None:
                t_anchor = j
            elif t == Token.EVALF and f_anchor is None:
                f_anchor = j

        # Assign tokens to branches
        if t_anchor is not None and f_anchor is not None:
            if t_anchor < f_anchor:
                # EVALT before EVALF: T-branch = [t_anchor..f_anchor-1], F-branch = [f_anchor..]
                t_total += f_anchor - t_anchor
                f_total += len(blk) - f_anchor
            else:
                # EVALF before EVALF: negation-first
                f_total += t_anchor - f_anchor
                t_total += len(blk) - t_anchor
        elif t_anchor is not None:
            t_total += len(blk)
        elif f_anchor is not None:
            f_total += len(blk)
        else:
            # No anchors — assign to T by default (polarity rule fallback)
            t_total += len(blk)

    report.t_branch_ops = t_total
    report.f_branch_ops = f_total
    if t_total > 0 and f_total > 0:
        report.branch_ratio = max(t_total, f_total) / min(t_total, f_total)
    elif t_total == 0 and f_total == 0:
        report.branch_ratio = 1.0
    else:
        report.branch_ratio = float(max(t_total, f_total))

    # ── Cross-branch routing ───────────────────────────────────────────────
    try:
        graph = imscr_wiring(tuple(tokens))
        report.cross_branches = len(graph.cross_branch_wires())
    except Exception:
        pass

    # ── Cascading IFIX ───────────────────────────────────────────────────────
    max_cascade = 0
    current_cascade = 0
    has_cascade = False
    for t in tokens:
        if t == Token.IFIX:
            current_cascade += 1
            max_cascade = max(max_cascade, current_cascade)
            if current_cascade >= 2:
                has_cascade = True
        else:
            current_cascade = 0
    report.has_cascading_ifix = has_cascade
    report.max_ifix_cascade = max_cascade

    # ── Negation-first: EVALF before EVALT in any pair block ─────────────────
    for fs, ff in pairs:
        own_d = nesting[fs]
        block = [tokens[i] for i in range(fs + 1, ff)
                 if i not in fork_nodes and nesting[i] == own_d]
        t_pos = None
        f_pos = None
        for j, t in enumerate(block):
            if t == Token.EVALT and t_pos is None:
                t_pos = j
            elif t == Token.EVALF and f_pos is None:
                f_pos = j
        if t_pos is not None and f_pos is not None and f_pos < t_pos:
            report.has_negation_first = True
            break

    # ── Dual fixation: IFIX in both T and F branches of same pair ────────────
    for fs, ff in pairs:
        own_d = nesting[fs]
        blk = [tokens[i] for i in range(fs + 1, ff)
               if i not in fork_nodes and nesting[i] == own_d]

        t_anchor = None
        f_anchor = None
        for j, t in enumerate(blk):
            if t == Token.EVALT and t_anchor is None:
                t_anchor = j
            elif t == Token.EVALF and f_anchor is None:
                f_anchor = j

        t_has_ifix = False
        f_has_ifix = False
        if t_anchor is not None and f_anchor is not None:
            if t_anchor < f_anchor:
                t_has_ifix = Token.IFIX in blk[t_anchor:f_anchor]
                f_has_ifix = Token.IFIX in blk[f_anchor:]
            else:
                f_has_ifix = Token.IFIX in blk[f_anchor:t_anchor]
                t_has_ifix = Token.IFIX in blk[t_anchor:]
        elif t_anchor is not None:
            t_has_ifix = Token.IFIX in blk[t_anchor:]
        elif f_anchor is not None:
            f_has_ifix = Token.IFIX in blk[f_anchor:]

        if t_has_ifix and f_has_ifix:
            report.has_dual_fixation = True
            break

    # ── Topology classification ─────────────────────────────────────────────
    has_nesting = report.nesting_depth > 0
    has_open = report.open_forks > 0
    has_cross = report.cross_branches > 0

    if has_nesting and has_open and has_cross:
        report.topology_class = "mixed"
    elif has_cross:
        report.topology_class = "webbed"
    elif has_open and has_nesting:
        report.topology_class = "mixed"  # nesting + open forks
    elif has_open:
        report.topology_class = "open_fork_dag"
    elif has_nesting:
        report.topology_class = "nested"
    else:
        report.topology_class = "flat_chain"

    return report


# ── Topology-enhanced system prompt fragment ─────────────────────────────

TOPOLOGY_PROMPT_FRAGMENT = """\

TOPOLOGICAL DIVERSITY — STRUCTURAL COMPOSITION GUIDANCE
=======================================================

The IMASM composition rules permit three powerful topological features that go
beyond simple flat chains. USE THESE WHEN THE DOMAIN REQUIRES THEM:

1. NESTING — FSPLIT/FFUSE pairs may nest inside each other.
   A decision point inside a branch can itself fork:
     FSPLIT EVALT [FSPLIT EVALT EVALF FFUSE] EVALF FFUSE
   The inner pair is resolved first (stack-matched). This models hierarchical
   decisions: "evaluate success, but within success there is a sub-decision
   with its own success/failure paths."

   When to use: the domain has decisions that contain sub-decisions. Examples:
   multi-stage proofs with lemmas, recipes with sub-recipes, recursive
   self-reference, hierarchical systems.

2. OPEN FORKS — FSPLITs that branch without a matching FFUSE.
   An open fork creates two permanently divergent paths. The T-branch continues
   the main flow; the F-branch starts an independent sub-genesis:
     FSPLIT EVALT AFWD ... VINIT AREV ...
   The F-branch never rejoins. This models branching DAGs where parallel
   evaluations are independent and never reabsorbed.

   When to use: the domain has independent parallel processes that don't
   recombine. Examples: multi-ingredient recipes, independent proof branches,
   parallel evaluations, divergent interpretations.

3. CROSS-BRANCH ROUTING — FSPLIT.F wire routes to a non-matched FFUSE.
   The F-output of one FSPLIT connects to the T or F input of a different
   FFUSE, creating an entangled/paradice topology:
     FSPLIT ... FFUSE(1) ... FSPLIT ... [FSPLIT.F → FFUSE(1)] ... FFUSE(2)
   This is the structural signature of entanglement: failure of one fork
   feeds into the resolution of another.

   When to use: the domain has genuinely entangled outcomes where failure in
   one branch affects resolution in another. Examples: quantum measurement,
   paradox resolution, dialetheic systems where contradictions propagate.

4. EMPTY BRANCHES — FSPLIT immediately followed by FFUSE.
   A fork that splits and immediately reconstitutes without doing anything in
   one or both branches. This is structurally valid and marks a vacuous
   evaluation: the fork structure is present but the branch content is empty.

   When to use: the domain has placeholder evaluations or the structural
   form matters more than the content of a particular branch.

GUIDANCE: Do NOT default to flat chains. If the domain has hierarchy, use
nesting. If it has independent parallel processes, use open forks. If it has
entangled outcomes, use cross-branch routing. The topology IS part of the
structural encoding — flat chains are just one option among many.
"""
