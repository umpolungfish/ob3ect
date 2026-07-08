#!/usr/bin/env python3
"""
Token Composer — comprehensive token composition rules, patterns, and validation
for the 12 IMASM opcodes.

Covers:
  - All 12 canonical classes (I–XII) with descriptions
  - Token adjacency validity matrix (which tokens can follow which)
  - DAG validity (FSPLIT/FFUSE balance, branch constraints, stack depth)
  - Composition operations (concat, wrap, fork, fuse, cycle, dialetheize, fix, mirror)
  - Pattern language (named sub-patterns, compose from parts)
  - Structural fingerprint computation (matching IMSCRIBr classifier)
  - Bridge to IG primitives (how token composition affects 12-tuple)
  - Program validation and suggestion

Author: Lando⊗⊙perator
Date:   2026-07-09
"""
from enum import IntEnum
from typing import Tuple, List, Dict, Optional, Set, NamedTuple
from collections import Counter, deque

# ========================== 12 IMASM TOKENS ==============================

class Token(IntEnum):
    VINIT=0x0; TANCH=0x1; AFWD=0x2; AREV=0x3; CLINK=0x4
    IMSCRIB=0x5; FSPLIT=0x6; FFUSE=0x7; EVALT=0x8; EVALF=0x9
    ENGAGR=0xA; IFIX=0xB

    def name_str(self): return self.name
    def arity_in(self): return {Token.VINIT:0, Token.FFUSE:2}.get(self,1)
    def arity_out(self): return {Token.TANCH:0, Token.FSPLIT:2}.get(self,1)

class Family(IntEnum):
    LOGICAL=0; FROBENIUS=1; DIALETHEIA=2; LINEAR=3

TOKEN_FAMILY = {
    Token.VINIT:Family.LOGICAL, Token.TANCH:Family.LOGICAL,
    Token.AFWD:Family.LOGICAL, Token.AREV:Family.LOGICAL,
    Token.CLINK:Family.LOGICAL, Token.IMSCRIB:Family.LOGICAL,
    Token.FSPLIT:Family.FROBENIUS, Token.FFUSE:Family.FROBENIUS,
    Token.EVALT:Family.DIALETHEIA, Token.EVALF:Family.DIALETHEIA,
    Token.ENGAGR:Family.DIALETHEIA, Token.IFIX:Family.LINEAR,
}

FAMILY_TOKENS = {
    Family.LOGICAL: [Token.VINIT,Token.TANCH,Token.AFWD,Token.AREV,Token.CLINK,Token.IMSCRIB],
    Family.FROBENIUS: [Token.FSPLIT,Token.FFUSE],
    Family.DIALETHEIA: [Token.EVALT,Token.EVALF,Token.ENGAGR],
    Family.LINEAR: [Token.IFIX],
}

# Branch-constrained tokens: must appear between FSPLIT and FFUSE on specific branch
TOKEN_BRANCH = {Token.EVALT:'T', Token.EVALF:'F'}

# ========================== TOKEN ADJACENCY MATRIX ========================
# adjacency[from_token][to_token] = True if valid transition in linearized DAG

def _build_adjacency():
    """Build the 12x12 token adjacency validity matrix."""
    all_t = list(Token)
    adj = {t: {u: False for u in all_t} for t in all_t}
    
    # VINIT (source): can go to most things except terminal and fuse
    for t in all_t:
        if t not in (Token.TANCH, Token.FFUSE):
            adj[Token.VINIT][t] = True
    
    # TANCH (sink): wraps to source or self-imscription (cyclic breath)
    adj[Token.TANCH][Token.VINIT] = True
    adj[Token.TANCH][Token.IMSCRIB] = True
    adj[Token.TANCH][Token.AFWD] = True  # cyclic restart
    
    # AFWD, AREV, CLINK, IMSCRIB: can go to most things
    for src in (Token.AFWD, Token.AREV, Token.CLINK, Token.IMSCRIB):
        for dst in all_t:
            if dst != Token.TANCH:  # don't sink mid-program
                adj[src][dst] = True
        adj[src][Token.TANCH] = True  # but CAN end program at TANCH
    
    # FSPLIT (fork): must go to branch-valid tokens
    adj[Token.FSPLIT][Token.EVALT] = True
    adj[Token.FSPLIT][Token.EVALF] = True
    adj[Token.FSPLIT][Token.AFWD] = True
    adj[Token.FSPLIT][Token.AREV] = True
    adj[Token.FSPLIT][Token.CLINK] = True
    adj[Token.FSPLIT][Token.IMSCRIB] = True
    adj[Token.FSPLIT][Token.ENGAGR] = True
    adj[Token.FSPLIT][Token.IFIX] = True
    
    # FFUSE (fuse): can go to anything except another FFUSE without intervening FSPLIT
    for dst in all_t:
        adj[Token.FFUSE][dst] = True
    
    # EVALT, EVALF, ENGAGR: can go to most things except source
    for src in (Token.EVALT, Token.EVALF, Token.ENGAGR):
        for dst in all_t:
            if dst != Token.VINIT:
                adj[src][dst] = True
    
    # IFIX: can go anywhere (terminal-linear)
    for dst in all_t:
        adj[Token.IFIX][dst] = True
    
    return adj

ADJACENCY = _build_adjacency()

# ========================== 12 CANONICAL CLASSES ===========================

CANONICAL_PROGRAMS: Dict[str, Tuple[Token, ...]] = {
    "I_Dialetheic_Bootstrap":    (Token.IMSCRIB, Token.EVALT, Token.FSPLIT, Token.EVALF, Token.FFUSE, Token.ENGAGR, Token.IFIX, Token.IMSCRIB),
    "II_Void_Genesis":           (Token.VINIT, Token.TANCH, Token.AFWD, Token.FSPLIT, Token.CLINK, Token.FFUSE, Token.IFIX, Token.IMSCRIB),
    "III_Anchor_Protocol":       (Token.TANCH, Token.AREV, Token.VINIT, Token.AFWD, Token.TANCH, Token.CLINK, Token.IFIX, Token.IMSCRIB),
    "IV_Dual_Bootstrap":         (Token.IMSCRIB, Token.AFWD, Token.FFUSE, Token.FSPLIT, Token.AREV, Token.CLINK, Token.IFIX, Token.IMSCRIB),
    "V_Linear_Chain":            (Token.IFIX,) * 8,
    "VI_Empty_Bootstrap":        (Token.VINIT, Token.IMSCRIB) * 4,
    "VII_Parakernel":            (Token.EVALF, Token.AREV, Token.FSPLIT, Token.EVALT, Token.AFWD, Token.FFUSE, Token.ENGAGR, Token.IFIX),
    "VIII_Frobenius_Kernel":     (Token.VINIT, Token.FSPLIT, Token.FFUSE, Token.TANCH),
    "IX_Chiral_Pairs":           (Token.AFWD, Token.AREV) * 4,
    "X_Truth_Machine":           (Token.IMSCRIB, Token.FSPLIT, Token.EVALT, Token.IFIX, Token.IMSCRIB, Token.FSPLIT, Token.EVALF, Token.IFIX),
    "XI_Eternal_Return":         (Token.IMSCRIB, Token.AFWD, Token.AREV, Token.IMSCRIB, Token.AFWD, Token.AREV, Token.IMSCRIB, Token.AFWD),
    "XII_ROM_Burn":              (Token.EVALT, Token.IFIX, Token.EVALF, Token.IFIX, Token.ENGAGR, Token.IFIX, Token.IMSCRIB, Token.IFIX),
}

# Descriptions of each canonical class
CANONICAL_DESCRIPTIONS = {
    "I_Dialetheic_Bootstrap":    "IMSCRIB→EVALT→FSPLIT→EVALF→FFUSE→ENGAGR→IFIX→IMSCRIB — Full dialetheic cycle: self-imscribe, evaluate true, fork, evaluate false, fuse, engage paradox, fix, re-imscribe. Contains Frobenius pair + complete Dialetheia.",
    "II_Void_Genesis":           "VINIT→TANCH→AFWD→FSPLIT→CLINK→FFUSE→IFIX→IMSCRIB — Genesis from void: initialize, sink, forward into fork, compose, fuse, fix, imscribe. The void becomes structure.",
    "III_Anchor_Protocol":       "TANCH→AREV→VINIT→AFWD→TANCH→CLINK→IFIX→IMSCRIB — Anchored protocol: sink, reverse, re-init, forward, sink again, compose, fix, imscribe. Double-anchored self-reference.",
    "IV_Dual_Bootstrap":         "IMSCRIB→AFWD→FFUSE→FSPLIT→AREV→CLINK→IFIX→IMSCRIB — Inverted Frobenius: fuse-first then split. Dual to the standard bootstrap. μ before δ.",
    "V_Linear_Chain":            "IFIX×8 — Pure irreversible fixation. Structurally unique (coarse class size = 1). Terminal layer: nothing else possible.",
    "VI_Empty_Bootstrap":        "(VINIT→IMSCRIB)×4 — Alternating void and identity. Structurally unique (coarse class size = 1). The minimal self-referential oscillation.",
    "VII_Parakernel":            "EVALF→AREV→FSPLIT→EVALT→AFWD→FFUSE→ENGAGR→IFIX — Paraconsistent kernel: evaluate false, reverse, fork, evaluate true, forward, fuse, engage, fix. False-lead with dialetheic resolution.",
    "VIII_Frobenius_Kernel":     "VINIT→FSPLIT→FFUSE→TANCH — Minimal Frobenius closure: init, split, fuse, sink. μ∘δ=id in 4 tokens. The kernel's kernel.",
    "IX_Chiral_Pairs":           "(AFWD→AREV)×4 — Forward-reverse oscillation. Structurally unique (coarse class size = 1). Pure morphism dance.",
    "X_Truth_Machine":           "IMSCRIB→FSPLIT→EVALT→IFIX→IMSCRIB→FSPLIT→EVALF→IFIX — Truth machine: imscribe, fork, eval-true, fix, re-imscribe, fork, eval-false, fix. NOTE: has FSPLIT but no FFUSE — open fork structure.",
    "XI_Eternal_Return":         "IMSCRIB→AFWD→AREV→IMSCRIB→AFWD→AREV→IMSCRIB→AFWD — Eternal return: imscribe, forward, reverse, repeat. Period-3 self-reference cycle.",
    "XII_ROM_Burn":              "EVALT→IFIX→EVALF→IFIX→ENGAGR→IFIX→IMSCRIB→IFIX — ROM burn: each dialetheia token followed by irreversible fixation. Terminal write-once structure.",
}

# ========================== NAMED SUB-PATTERNS =============================

NAMED_PATTERNS: Dict[str, Tuple[Token, ...]] = {
    "frobenius_pair":     (Token.FSPLIT, Token.FFUSE),
    "dialetheia_triad":   (Token.EVALT, Token.EVALF, Token.ENGAGR),
    "self_imscribe":      (Token.IMSCRIB,),
    "void_init":          (Token.VINIT, Token.TANCH),
    "forward":            (Token.AFWD,),
    "reverse":            (Token.AREV,),
    "compose":            (Token.CLINK,),
    "fix":                (Token.IFIX,),
    "t_branch":           (Token.FSPLIT, Token.EVALT, Token.FFUSE),
    "f_branch":           (Token.FSPLIT, Token.EVALF, Token.FFUSE),
    "paradox_branch":     (Token.FSPLIT, Token.ENGAGR, Token.FFUSE),
    "dual_branch":        (Token.FSPLIT, Token.EVALT, Token.EVALF, Token.FFUSE),
    "full_fork":          (Token.FSPLIT, Token.EVALT, Token.EVALF, Token.ENGAGR, Token.FFUSE),
    "bootstrap_atom":     (Token.IMSCRIB, Token.AFWD, Token.FSPLIT, Token.AREV, Token.FFUSE, Token.IFIX),
    "aqua_vitae":         (Token.VINIT, Token.AFWD, Token.IMSCRIB, Token.FSPLIT, Token.EVALT, Token.CLINK, Token.FFUSE, Token.IFIX, Token.FSPLIT, Token.ENGAGR, Token.AREV, Token.FFUSE, Token.CLINK, Token.TANCH),
}


# ========================== DAG VALIDATION =================================

class DAGValidity(NamedTuple):
    is_valid: bool
    errors: List[str]
    warnings: List[str]
    frobenius_order: int         # 0=none, 1=split→fuse, 2=fuse→split, 3=both
    dialetheia_complete: bool    # all 3 dialetheia present
    has_balanced_forks: bool     # every FSPLIT has matching FFUSE
    branch_violations: List[int] # positions where branch-constrained token is outside fork


def validate_dag(tokens: List[Token]) -> DAGValidity:
    """Validate a token sequence as a well-formed DAG."""
    errors = []
    warnings = []
    t = tuple(tokens)
    n = len(t)
    
    # Stack-depth: track FSPLIT/FFUSE balance
    depth = 0
    fork_depth_at_pos = []  # depth at each position for branch checking
    in_fork = False
    
    for i, tok in enumerate(t):
        fork_depth_at_pos.append(depth)
        if tok == Token.FSPLIT:
            depth += 1
            in_fork = True
        elif tok == Token.FFUSE:
            depth -= 1
            if depth < 0:
                errors.append(f"Position {i}: FFUSE without matching FSPLIT (stack underflow)")
                depth = 0
            if depth == 0:
                in_fork = False
    
    if depth > 0:
        errors.append(f"Unbalanced forks: {depth} FSPLIT(s) without matching FFUSE")
    elif depth < 0:
        errors.append(f"Unbalanced forks: {-depth} excess FFUSE(s)")
    
    has_balanced_forks = (depth == 0 and not any("underflow" in e for e in errors))
    
    # Branch violations: EVALT/EVALF must be inside a fork
    branch_violations = []
    for i, tok in enumerate(t):
        if tok in TOKEN_BRANCH:
            if fork_depth_at_pos[i] == 0:
                branch_violations.append(i)
                errors.append(f"Position {i}: {tok.name} appears outside of FSPLIT-FFUSE fork")
    
    # Frobenius order
    fsplit_pos = [i for i, tok in enumerate(t) if tok == Token.FSPLIT]
    ffuse_pos = [i for i, tok in enumerate(t) if tok == Token.FFUSE]
    if not fsplit_pos or not ffuse_pos:
        frob_order = 0
    else:
        has_split_first = min(fsplit_pos) < max(ffuse_pos)
        has_fuse_first = min(ffuse_pos) < max(fsplit_pos)
        if has_split_first and has_fuse_first:
            frob_order = 3
        elif min(fsplit_pos) < min(ffuse_pos):
            frob_order = 1
        else:
            frob_order = 2
    
    # Dialetheia completeness
    dial_complete = all(tok in t for tok in (Token.EVALT, Token.EVALF, Token.ENGAGR))
    if not dial_complete and any(tok in t for tok in (Token.EVALT, Token.EVALF, Token.ENGAGR)):
        missing = [tok.name for tok in (Token.EVALT, Token.EVALF, Token.ENGAGR) if tok not in t]
        warnings.append(f"Incomplete dialetheia: missing {missing}")
    
    # Adjacency warnings
    for i in range(n - 1):
        if not ADJACENCY.get(t[i], {}).get(t[i+1], True):
            warnings.append(f"Position {i}: non-canonical adjacency {t[i].name}→{t[i+1].name} (valid but not in reference patterns)")
    
    is_valid = len(errors) == 0
    
    return DAGValidity(
        is_valid=is_valid,
        errors=errors,
        warnings=warnings,
        frobenius_order=frob_order,
        dialetheia_complete=dial_complete,
        has_balanced_forks=has_balanced_forks,
        branch_violations=branch_violations,
    )

# ========================== COMPOSITION OPERATIONS =========================

def compose_concat(a: Tuple[Token, ...], b: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Linear concatenation: a then b."""
    return a + b

def compose_wrap(tokens: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Wrap in Frobenius fork: FSPLIT + tokens + FFUSE."""
    return (Token.FSPLIT,) + tokens + (Token.FFUSE,)

def compose_cycle(tokens: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Make self-referential: ensure start == end with IMSCRIB."""
    t = list(tokens)
    if len(t) == 0:
        return (Token.IMSCRIB,)
    if t[0] != t[-1]:
        t.append(t[0])
    return tuple(t)

def compose_dialetheize(tokens: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Inject the dialetheia triad (EVALT, EVALF, ENGAGR) wrapped in a fork."""
    triad = (Token.FSPLIT, Token.EVALT, Token.EVALF, Token.ENGAGR, Token.FFUSE)
    return tokens + triad

def compose_fix(tokens: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Append IFIX at the end."""
    return tokens + (Token.IFIX,)

def compose_mirror(tokens: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Reverse and append: tokens + reversed(tokens)."""
    return tokens + tuple(reversed(tokens))

def compose_alternate(a: Tuple[Token, ...], b: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Interleave tokens: a[0], b[0], a[1], b[1], ..."""
    result = []
    for i in range(max(len(a), len(b))):
        if i < len(a): result.append(a[i])
        if i < len(b): result.append(b[i])
    return tuple(result)

def compose_repeat(tokens: Tuple[Token, ...], n: int) -> Tuple[Token, ...]:
    """Repeat pattern n times."""
    return tokens * n

def compose_into(tokens: Tuple[Token, ...], max_len: int = 64) -> Tuple[Token, ...]:
    """Extend or trim to exactly max_len by repeating."""
    if len(tokens) >= max_len:
        return tokens[:max_len]
    reps = (max_len + len(tokens) - 1) // len(tokens)
    return (tokens * reps)[:max_len]

def compose_named(*names: str) -> Tuple[Token, ...]:
    """Compose from named sub-patterns."""
    result = []
    for name in names:
        if name in NAMED_PATTERNS:
            result.extend(NAMED_PATTERNS[name])
        elif name in CANONICAL_PROGRAMS:
            result.extend(CANONICAL_PROGRAMS[name])
        else:
            raise ValueError(f"Unknown pattern: {name}")
    return tuple(result)

def compose_from_str(s: str) -> Tuple[Token, ...]:
    """Parse a token string like 'IMSCRIB→AFWD→FSPLIT→AREV→FFUSE→IFIX'."""
    parts = [p.strip() for p in s.split("→")]
    result = []
    for p in parts:
        try:
            result.append(Token[p])
        except KeyError:
            raise ValueError(f"Unknown token: {p}")
    return tuple(result)

def compose_raw(*token_names: str) -> Tuple[Token, ...]:
    """Free-form composition: take raw token names and create a program.
    No validation, no canonical matching — pure creative assembly.
    Use this when you want to build a novel program not derived from any schema."""
    result = []
    for name in token_names:
        try:
            result.append(Token[name.strip()])
        except KeyError:
            raise ValueError(f"Unknown token: {name.strip()}. Valid: {[t.name for t in Token]}")
    return tuple(result)


def compose_bend(tokens: Tuple[Token, ...], operation: str, *args) -> Tuple[Token, ...]:
    """Bend/mutate a schema — take a pattern and reshape it.
    
    Operations:
      swap(i,j)  — swap tokens at positions i,j
      ins(pos,t) — insert token t at position pos
      drop(pos)   — remove token at position pos
      rot(n)      — rotate by n positions (positive=left, negative=right)
      rev         — reverse the entire sequence
      shuffle(pos_list) — reorder by position list
      dup(i)      — duplicate token at position i
      graft(i,j)  — move token at i to after position j
    """
    t = list(tokens)
    if operation == "swap" and len(args) >= 2:
        i, j = int(args[0]), int(args[1])
        t[i % len(t)], t[j % len(t)] = t[j % len(t)], t[i % len(t)]
    elif operation == "ins" and len(args) >= 2:
        pos, tok = int(args[0]), args[1]
        t.insert(pos % (len(t)+1), Token[tok.strip()])
    elif operation == "drop" and len(args) >= 1:
        pos = int(args[0])
        if len(t) > 1:
            t.pop(pos % len(t))
    elif operation == "rot" and len(args) >= 1:
        n = int(args[0])
        if n > 0:
            t = t[n:] + t[:n]
        elif n < 0:
            t = t[n:] + t[:n]
    elif operation == "rev":
        t.reverse()
    elif operation == "dup" and len(args) >= 1:
        pos = int(args[0])
        t.insert(pos % (len(t)+1), t[pos % len(t)])
    elif operation == "graft" and len(args) >= 2:
        i, j = int(args[0]), int(args[1])
        if i < len(t):
            tok = t.pop(i)
            t.insert(j % (len(t)+1), tok)
    elif operation == "shuffle" and args:
        positions = [int(a) for a in args]
        if sorted(positions) == list(range(len(t))):
            t = [t[p] for p in positions]
    return tuple(t)


def compose_splice(a: Tuple[Token, ...], b: Tuple[Token, ...], position: int = None) -> Tuple[Token, ...]:
    """Splice schema b into schema a at position (default: midpoint)."""
    if position is None:
        position = len(a) // 2
    return a[:position] + b + a[position:]


def compose_interleave(*schemas: Tuple[Token, ...]) -> Tuple[Token, ...]:
    """Weave multiple schemas together: a[0], b[0], c[0], a[1], b[1], c[1], ..."""
    result = []
    max_len = max(len(s) for s in schemas)
    for i in range(max_len):
        for s in schemas:
            if i < len(s):
                result.append(s[i])
    return tuple(result)


def compose_schema(name_or_tokens, *mutations) -> Tuple[Token, ...]:
    """Start from a named schema or raw token list and optionally apply mutations.
    
    Examples:
      compose_schema("bootstrap_atom")                        — use schema as-is
      compose_schema("frobenius_pair", "rev")                 — reversed frobenius
      compose_schema("IMSCRIB,AFWD,FSPLIT,AREV,FFUSE,IFIX")  — raw token names
      compose_schema("bootstrap_atom", "rot:3", "dup:2")     — rotated then duplicated
      compose_schema("dialetheia_triad", "ins:0:VINIT")       — insert VINIT at start
    """
    # Resolve the base
    spec = name_or_tokens.strip()
    if spec in NAMED_PATTERNS:
        tokens = NAMED_PATTERNS[spec]
    elif spec in CANONICAL_PROGRAMS:
        tokens = CANONICAL_PROGRAMS[spec]
    elif "," in spec or "→" in spec:
        # Raw token names
        if "→" in spec:
            tokens = compose_from_str(spec)
        else:
            tokens = compose_raw(*[t.strip() for t in spec.split(",")])
    else:
        raise ValueError(f"Unknown schema: {spec}")
    
    # Apply mutations in order
    for mut in mutations:
        parts = mut.split(":")
        op = parts[0].strip()
        args = parts[1:] if len(parts) > 1 else []
        tokens = compose_bend(tokens, op, *args)
    
    return tokens


# All composition operations
COMPOSERS = {
    "concat": compose_concat,
    "wrap": compose_wrap,
    "cycle": compose_cycle,
    "dialetheize": compose_dialetheize,
    "fix": compose_fix,
    "mirror": compose_mirror,
    "alternate": compose_alternate,
    "repeat": compose_repeat,
    "named": compose_named,
    "from_str": compose_from_str,
    "raw": compose_raw,
    "free": compose_raw,
    "bend": compose_bend,
    "splice": compose_splice,
    "interleave": compose_interleave,
    "schema": compose_schema,
}

# ========================== STRUCTURAL FINGERPRINT =========================

class TokenFingerprint(NamedTuple):
    """Structural fingerprint of a token arrangement (matches IMSCRIBr classifier)."""
    length: int
    sig_L: int; sig_F: int; sig_D: int; sig_X: int
    start_token: int; end_token: int
    self_ref: bool
    frobenius_order: int
    dialetheia_complete: bool
    period: int
    token_mask: int
    token_diversity: int
    tokens: Tuple[int, ...]

    def coarse_key(self) -> str:
        return (f"{self.length}|{self.sig_L},{self.sig_F},{self.sig_D},{self.sig_X}|"
                f"{self.start_token}|{self.end_token}|{int(self.self_ref)}|"
                f"{self.frobenius_order}|{int(self.dialetheia_complete)}|"
                f"{self.period}|{self.token_diversity}")

    def description(self) -> str:
        parts = [f"sig=({self.sig_L},{self.sig_F},{self.sig_D},{self.sig_X})",
                 f"start={Token(self.start_token).name}", f"end={Token(self.end_token).name}"]
        if self.self_ref: parts.append("self-ref")
        if self.frobenius_order == 1: parts.append("Frob:split→fuse")
        elif self.frobenius_order == 2: parts.append("Frob:fuse→split(INVERTED)")
        elif self.frobenius_order == 3: parts.append("Frob:multiple")
        if self.dialetheia_complete: parts.append("Dialetheia:complete")
        if self.period < self.length: parts.append(f"period={self.period}")
        parts.append(f"diversity={self.token_diversity}/12")
        return " | ".join(parts)


def compute_fingerprint(tokens: Tuple[Token, ...]) -> TokenFingerprint:
    """Compute structural fingerprint for a token sequence."""
    arr = tuple(int(t) for t in tokens)
    n = len(arr)
    
    sig = Counter(TOKEN_FAMILY[t] for t in tokens)
    sig_L = sig.get(Family.LOGICAL, 0)
    sig_F = sig.get(Family.FROBENIUS, 0)
    sig_D = sig.get(Family.DIALETHEIA, 0)
    sig_X = sig.get(Family.LINEAR, 0)
    
    start_tok = int(tokens[0]) if n > 0 else 0
    end_tok = int(tokens[-1]) if n > 0 else 0
    self_ref = (start_tok == end_tok)
    
    token_mask = 0
    for t in arr:
        token_mask |= (1 << t)
    token_diversity = bin(token_mask).count('1')
    
    # Frobenius order
    fsplit_pos = [i for i, t in enumerate(arr) if t == Token.FSPLIT]
    ffuse_pos = [i for i, t in enumerate(arr) if t == Token.FFUSE]
    if not fsplit_pos or not ffuse_pos:
        frob_order = 0
    else:
        has_split_first = min(fsplit_pos) < max(ffuse_pos)
        has_fuse_first = min(ffuse_pos) < max(fsplit_pos)
        if has_split_first and has_fuse_first:
            frob_order = 3
        elif min(fsplit_pos) < min(ffuse_pos):
            frob_order = 1
        else:
            frob_order = 2
    
    dial_complete = all(t in arr for t in (int(Token.EVALT), int(Token.EVALF), int(Token.ENGAGR)))
    
    # Minimal period
    period = n
    for p in range(1, n + 1):
        if n % p == 0 and all(arr[i] == arr[i - p] for i in range(p, n)):
            period = p
            break
    
    return TokenFingerprint(
        length=n, sig_L=sig_L, sig_F=sig_F, sig_D=sig_D, sig_X=sig_X,
        start_token=start_tok, end_token=end_tok,
        self_ref=self_ref, frobenius_order=frob_order,
        dialetheia_complete=dial_complete, period=period,
        token_mask=token_mask, token_diversity=token_diversity,
        tokens=arr,
    )


def match_canonical(tokens: Tuple[Token, ...]) -> Optional[str]:
    """Check if token sequence exactly matches a canonical class."""
    for name, canon in CANONICAL_PROGRAMS.items():
        if tokens == canon:
            return name
    return None


def nearest_canonical(tokens: Tuple[Token, ...]) -> List[Tuple[str, int]]:
    """Find nearest canonical classes by Hamming distance."""
    results = []
    t = tuple(tokens)
    for name, canon in CANONICAL_PROGRAMS.items():
        # Pad shorter to same length for comparison
        max_len = max(len(t), len(canon))
        a = list(t) + [Token.IFIX] * (max_len - len(t))
        b = list(canon) + [Token.IFIX] * (max_len - len(canon))
        dist = sum(1 for i in range(max_len) if a[i] != b[i])
        results.append((name, dist))
    results.sort(key=lambda x: x[1])
    return results

# ========================== BRIDGE TO IG PRIMITIVES ========================
# How token composition patterns affect the 12 IG primitives.

# Each canonical class has an associated IG primitive shift profile.
# These are the known mappings from canonical programs to their
# structural type signatures (when the program is the kernel of a system).

CANONICAL_TO_TIER = {
    "I_Dialetheic_Bootstrap":    "O_∞",   # Full dialetheic cycle → self-modeling
    "II_Void_Genesis":           "O_2†",  # Genesis from void → boundary of O_2
    "III_Anchor_Protocol":       "O_2",   # Anchored protocol → O_2
    "IV_Dual_Bootstrap":         "O_∞",   # Inverted Frobenius → dual self-modeling
    "V_Linear_Chain":            "O_0",   # Pure IFIX → no structure
    "VI_Empty_Bootstrap":        "O_1",   # Void↔identity oscillation → O_1
    "VII_Parakernel":            "O_∞",   # Paraconsistent kernel → self-modeling
    "VIII_Frobenius_Kernel":     "O_2",   # Minimal μ∘δ=id → O_2
    "IX_Chiral_Pairs":           "O_1",   # Pure morphism dance → O_1
    "X_Truth_Machine":           "O_2",   # Truth machine → O_2
    "XI_Eternal_Return":         "O_2†",  # Eternal return → O_2 boundary
    "XII_ROM_Burn":              "O_0",   # ROM burn → terminal O_0
}

# Token-to-primitive influence: which primitives each token family affects
FAMILY_PRIMITIVE_INFLUENCE = {
    Family.LOGICAL:    ["D", "T", "R"],        # Logical tokens affect dimensionality, topology, coupling
    Family.FROBENIUS:  ["P", "F", "Gm"],       # Frobenius tokens affect parity, fidelity, composition
    Family.DIALETHEIA: ["Phi", "K", "H"],      # Dialetheia tokens affect criticality, kinetics, chirality
    Family.LINEAR:     ["G", "S", "W"],        # Linear tokens affect cardinality, stoichiometry, winding
}

# Known IG primitive tuples for key programs (verified against catalog)
PROGRAM_IG_TUPLES = {
    "agent_loop": {
        'D': '𐑦', 'T': '𐑸', 'R': '𐑾', 'P': '𐑹', 'F': '𐑐', 'K': '𐑧',
        'G': '𐑔', 'Gm': '𐑠', 'Ph': '⊙', 'H': '𐑖', 'S': '𐑙', 'W': '𐑭',
    },
    "bootstrap_loop": {
        'D': '𐑦', 'T': '𐑸', 'R': '𐑾', 'P': '𐑹', 'F': '𐑐', 'K': '𐑧',
        'G': '𐑔', 'Gm': '𐑠', 'Ph': '⊙', 'H': '𐑖', 'S': '𐑙', 'W': '𐑭',
    },
}

# ========================== COMPOSITION SUGGESTER ===========================

def suggest_compositions(target_tier: str = "O_∞", 
                         require_frobenius: bool = True,
                         require_dialetheia: bool = True,
                         max_len: int = 14) -> List[Tuple[str, Tuple[Token, ...]]]:
    """Suggest programs that satisfy given constraints."""
    suggestions = []
    
    for name, tokens in CANONICAL_PROGRAMS.items():
        tier = CANONICAL_TO_TIER.get(name, "?")
        fp = compute_fingerprint(tokens)
        
        # Filter
        if target_tier != "any" and tier != target_tier:
            continue
        if require_frobenius and fp.frobenius_order == 0:
            continue
        if require_dialetheia and not fp.dialetheia_complete:
            continue
        
        suggestions.append((name, tokens))
    
    # Also include named sub-patterns as building blocks
    for name, tokens in NAMED_PATTERNS.items():
        fp = compute_fingerprint(tokens)
        suggestions.append((f"pattern:{name}", tokens))
    
    # Trim to max_len
    suggestions.sort(key=lambda x: len(x[1]))
    return [(n, t[:max_len]) for n, t in suggestions if len(t) <= max_len]


def all_composition_rules() -> str:
    """Return a comprehensive reference of all token composition rules."""
    lines = []
    lines.append("=" * 70)
    lines.append("TOKEN COMPOSITION RULES — Comprehensive Reference")
    lines.append("=" * 70)
    lines.append("")
    lines.append("12 IMASM Tokens (4 families) — any token can follow any token:")
    lines.append("  LOGICAL (6):    VINIT, TANCH, AFWD, AREV, CLINK, IMSCRIB")
    lines.append("  FROBENIUS (2):  FSPLIT (δ), FFUSE (μ)  — μ∘δ=id pair")
    lines.append("  DIALETHEIA (3): EVALT, EVALF, ENGAGR   — Belnap FOUR gates")
    lines.append("  LINEAR (1):     IFIX                     — irreversible fixation")
    lines.append("")
    lines.append("CRITICAL: These are SCHEMAS, not constraints. The 12 canonical classes and")
    lines.append("15 named sub-patterns are starting points — you can freely compose, bend,")
    lines.append("splice, interleave, mutate, invert, or create entirely novel programs.")
    lines.append("The adjacency matrix tracks which transitions appear in reference patterns;")
    lines.append("non-canonical transitions are valid and encouraged when the task calls for it.")
    lines.append("")
    lines.append("--- DAG Validity Rules ---")
    lines.append("  R1: FSPLIT must be matched by FFUSE (stack balance)")
    lines.append("  R2: EVALT/EVALF must appear between FSPLIT and FFUSE")
    lines.append("  R3: FFUSE cannot appear before any FSPLIT (at same depth)")
    lines.append("  R4: TANCH at root depth wraps to program start (cyclic)")
    lines.append("")
    lines.append("--- Composition Operations ---")
    lines.append("  concat(a, b)       — linear concatenation")
    lines.append("  wrap(tokens)        — FSPLIT + tokens + FFUSE")
    lines.append("  cycle(tokens)       — ensure start == end (self-referential)")
    lines.append("  dialetheize(tokens) — inject full dialetheia triad in fork")
    lines.append("  fix(tokens)         — append IFIX")
    lines.append("  mirror(tokens)      — tokens + reversed(tokens)")
    lines.append("  alternate(a, b)     — interleave")
    lines.append("  repeat(tokens, n)   — repeat n times")
    lines.append("  named(*patterns)    — compose from named sub-patterns")
    lines.append("")
    lines.append("--- Named Sub-Patterns ---")
    for name, tokens in NAMED_PATTERNS.items():
        lines.append(f"  {name:20s} ({len(tokens):2d}): {'→'.join(t.name for t in tokens)}")
    lines.append("")
    lines.append("--- 12 Canonical Classes ---")
    for name in sorted(CANONICAL_PROGRAMS.keys()):
        tokens = CANONICAL_PROGRAMS[name]
        tier = CANONICAL_TO_TIER.get(name, "?")
        fp = compute_fingerprint(tokens)
        lines.append(f"  {name:30s} [{tier:4s}] ({len(tokens):2d}t, frob={fp.frobenius_order}, dial={fp.dialetheia_complete})")
        lines.append(f"    {'→'.join(t.name for t in tokens)}")
        lines.append(f"    {CANONICAL_DESCRIPTIONS[name]}")
        lines.append("")
    
    return "\n".join(lines)

# ========================== TOKEN COMPOSER CLASS ============================

class TokenComposer:
    """Unified interface for token composition, validation, and introspection.
    
    This is the module the agent uses to:
      - Validate token sequences
      - Compose new programs from patterns
      - Find canonical matches
      - Compute structural fingerprints
      - Get composition rule reference
    """
    
    def __init__(self):
        self._cache = {}
    
    def validate(self, tokens: List[Token]) -> DAGValidity:
        """Validate a token sequence."""
        return validate_dag(tokens)
    
    def fingerprint(self, tokens: Tuple[Token, ...]) -> TokenFingerprint:
        """Compute structural fingerprint."""
        return compute_fingerprint(tokens)
    
    def compose(self, operation: str, *args, **kwargs) -> Tuple[Token, ...]:
        """Apply a composition operation by name."""
        if operation not in COMPOSERS:
            raise ValueError(f"Unknown operation: {operation}. Available: {list(COMPOSERS.keys())}")
        return COMPOSERS[operation](*args, **kwargs)
    
    def canonical(self, name: str) -> Optional[Tuple[Token, ...]]:
        """Get a canonical program by name."""
        return CANONICAL_PROGRAMS.get(name)
    
    def match(self, tokens: Tuple[Token, ...]) -> Optional[str]:
        """Check exact canonical match."""
        return match_canonical(tokens)
    
    def nearest(self, tokens: Tuple[Token, ...], k: int = 3) -> List[Tuple[str, int]]:
        """Find k nearest canonical classes."""
        return nearest_canonical(tokens)[:k]
    
    def suggest(self, target_tier: str = "O_∞", **kwargs) -> List[Tuple[str, Tuple[Token, ...]]]:
        """Suggest programs satisfying constraints."""
        return suggest_compositions(target_tier=target_tier, **kwargs)
    
    def reference(self) -> str:
        """Full composition rule reference."""
        return all_composition_rules()
    
    def list_canonical(self) -> List[str]:
        """List all canonical class names."""
        return sorted(CANONICAL_PROGRAMS.keys())
    
    def list_patterns(self) -> List[str]:
        """List all named sub-patterns."""
        return sorted(NAMED_PATTERNS.keys())
    
    def list_operations(self) -> List[str]:
        """List all composition operations."""
        return sorted(COMPOSERS.keys())
    
    def is_valid_adjacency(self, a: Token, b: Token) -> bool:
        """Check if token b can follow token a."""
        return ADJACENCY.get(a, {}).get(b, False)
    
    def valid_successors(self, token: Token) -> List[Token]:
        """List all valid successors for a token."""
        return [t for t, valid in ADJACENCY.get(token, {}).items() if valid]
    
    def program_str(self, tokens: Tuple[Token, ...]) -> str:
        """Pretty-print a program as token chain."""
        return " → ".join(t.name for t in tokens)
    
    def parse(self, s: str) -> Tuple[Token, ...]:
        """Parse a string like 'IMSCRIB→AFWD→FSPLIT→AREV→FFUSE→IFIX'."""
        return compose_from_str(s)
    
    def to_indices(self, tokens: Tuple[Token, ...]) -> List[int]:
        """Convert tokens to integer indices."""
        return [int(t) for t in tokens]
    
    def from_indices(self, indices: List[int]) -> Tuple[Token, ...]:
        """Convert integer indices to tokens."""
        return tuple(Token(i) for i in indices)


# ========================== TEST / CLI ======================================

if __name__ == "__main__":
    tc = TokenComposer()
    print(tc.reference())
    
    print("\n" + "=" * 70)
    print("VALIDATION TESTS")
    print("=" * 70)
    
    for name in sorted(CANONICAL_PROGRAMS.keys()):
        tokens = CANONICAL_PROGRAMS[name]
        v = tc.validate(list(tokens))
        fp = tc.fingerprint(tokens)
        status = "✓" if v.is_valid else "✗"
        print(f"  {status} {name:30s} valid={v.is_valid} frob={v.frobenius_order} dial={v.dialetheia_complete} fp={fp.coarse_key()}")
        if v.errors:
            for e in v.errors:
                print(f"      ERROR: {e}")
    
    print("\n" + "=" * 70)
    print("COMPOSITION TESTS")
    print("=" * 70)
    
    # Test composition operations
    a = tc.canonical("VIII_Frobenius_Kernel")
    b = tc.canonical("VI_Empty_Bootstrap")
    c = tc.compose("concat", a, b)
    print(f"  concat(VIII, VI): {tc.program_str(c)}")
    v = tc.validate(list(c))
    print(f"    valid={v.is_valid} frob={v.frobenius_order}")
    
    d = tc.compose("wrap", a)
    print(f"  wrap(VIII): {tc.program_str(d)}")
    
    e = tc.compose("dialetheize", a)
    print(f"  dialetheize(VIII): {tc.program_str(e)}")
    v2 = tc.validate(list(e))
    print(f"    valid={v2.is_valid} dial={v2.dialetheia_complete}")
    
    # Nearest canonical
    custom = tc.parse("IMSCRIB→AFWD→FSPLIT→EVALT→AREV→FFUSE→ENGAGR→IFIX→IMSCRIB")
    print(f"\n  Custom: {tc.program_str(custom)}")
    match = tc.match(custom)
    print(f"    Canonical match: {match}")
    nearest = tc.nearest(custom)
    for n, d in nearest:
        print(f"    Nearest: {n} (dist={d})")
    
    print("\n  All 12 canonical names:", tc.list_canonical())
    print("  All named patterns:", tc.list_patterns())
    print("  All composition ops:", tc.list_operations())
