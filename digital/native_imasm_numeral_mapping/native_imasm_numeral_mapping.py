#!/usr/bin/env python3
"""
Native IMASM-Numeral Encoder
=============================
Each numeral → UNIQUE IMASM morphism (glyph word).

The IMASM alphabet (12 morphisms) forms a closed algebraic system.
A numeral's encoding is its unique morphism in this system.

The canonical 14-glyph decoder (blueprint) is the REFERENCE mapping
system. This encoder produces the MORPHISM for each numeral.

Author: Lando⊗⊙perator
"""
import json
import argparse
import random
import math
from typing import List, Dict, Any, Optional
from pathlib import Path
from dataclasses import dataclass, field
from hashlib import sha256


# ── IMASM Glyph Alphabet (Phase 1 - 12 morphisms) ────────────────────────
GLYPH_VINIT   = "⊢"   # void_numeral
GLYPH_TANCH   = "⊣"   # topological_boundary
GLYPH_AFWD    = "≻"   # increment_magnitude
GLYPH_AREV    = "≺"   # decrement_magnitude
GLYPH_CLINK   = "⋈"   # digit_composition
GLYPH_FSPLIT  = "∈"   # parity_branch
GLYPH_EVALT   = "⊤"   # even_parity
GLYPH_EVALF   = "⊥"   # odd_parity
GLYPH_ENGAGR  = "⊞"   # chiral_superposition
GLYPH_FFUSE   = "∋"   # stoichiometric_rejoin
GLYPH_IMSCRIB = "⊙"   # critical_state
GLYPH_IFIX    = "⊡"   # immutable_record

NAME_FROM_GLYPH = {
    GLYPH_VINIT:   "VINIT",    GLYPH_TANCH:   "TANCH",
    GLYPH_AFWD:    "AFWD",     GLYPH_AREV:    "AREV",
    GLYPH_CLINK:   "CLINK",    GLYPH_FSPLIT:  "FSPLIT",
    GLYPH_EVALT:   "EVALT",    GLYPH_EVALF:   "EVALF",
    GLYPH_ENGAGR:  "ENGAGR",   GLYPH_FFUSE:   "FFUSE",
    GLYPH_IMSCRIB: "IMSCRIB",  GLYPH_IFIX:    "IFIX",
}

WORK_MORPHISMS = {GLYPH_AFWD, GLYPH_AREV, GLYPH_CLINK, GLYPH_EVALT, GLYPH_EVALF, GLYPH_ENGAGR, GLYPH_IFIX}
STRUCTURAL = {GLYPH_VINIT, GLYPH_TANCH, GLYPH_FSPLIT, GLYPH_FFUSE, GLYPH_IMSCRIB}

CANONICAL_DECODER = "⊢⊣≻⋈∈⊤⊥⊞∋⊙≺⊡⋈⊣"


# ── SIXTEEN_3 Register Carrier ────────────────────────────────────────────
BASE = ('T', 'F', 't', 'f')
Reg = frozenset
EMPTY: Reg = frozenset()
FULL: Reg = frozenset(BASE)

def reg_name(r: Reg) -> str:
    if not r: return "N"
    if r == FULL: return "A"
    return "".join(b for b in BASE if b in r)

ALL_STATES = [
    EMPTY, frozenset({'T'}), frozenset({'F'}), frozenset({'t'}), frozenset({'f'}),
    frozenset({'T','F'}), frozenset({'T','t'}), frozenset({'T','f'}),
    frozenset({'F','t'}), frozenset({'F','f'}), frozenset({'t','f'}),
    frozenset({'T','F','t'}), frozenset({'T','F','f'}), frozenset({'T','t','f'}),
    frozenset({'F','t','f'}), FULL,
]


# ── Morphism Algebra ──────────────────────────────────────────────────────

class IMASMMachine:
    def __init__(self):
        self.reg: Reg = EMPTY
        self.in_split = False
        self.split_arms: Dict[str, Reg] = {}
        self.fixed = False
        self.history: List[Dict] = []
    
    def reset(self):
        self.reg = EMPTY
        self.in_split = False
        self.split_arms = {}
        self.fixed = False
        self.history = []
    
    def step(self, glyph: str) -> Reg:
        if self.fixed and glyph not in (GLYPH_IFIX, GLYPH_IMSCRIB):
            return self.reg
        reg_before = self.reg
        
        if glyph == GLYPH_VINIT:
            self.reg = EMPTY; self.in_split = False; self.split_arms = {}; self.fixed = False
        elif glyph == GLYPH_TANCH:
            pass
        elif glyph == GLYPH_AFWD:
            if self.reg == EMPTY:
                self.reg = frozenset({'T'})
            else:
                self.reg = self._advance_state(self.reg)
        elif glyph == GLYPH_AREV:
            self.reg = EMPTY; self.in_split = False; self.split_arms = {}
        elif glyph == GLYPH_CLINK:
            self.reg = self.reg | frozenset({'T'})
        elif glyph == GLYPH_FSPLIT:
            self.in_split = True
            self.split_arms = {"even": self.reg, "odd": self.reg}
            self.reg = self.reg | frozenset({'T', 'F'})
        elif glyph == GLYPH_EVALT:
            if self.in_split: self.split_arms["even"] |= frozenset({'T'})
            self.reg |= frozenset({'T'})
        elif glyph == GLYPH_EVALF:
            if self.in_split: self.split_arms["odd"] |= frozenset({'F'})
            self.reg |= frozenset({'F'})
        elif glyph == GLYPH_ENGAGR:
            if self.in_split:
                self.split_arms["even"] |= frozenset({'t'})
                self.split_arms["odd"] |= frozenset({'f'})
            self.reg |= frozenset({'t', 'f'})
        elif glyph == GLYPH_FFUSE:
            if self.in_split:
                self.reg = self.split_arms["even"] | self.split_arms["odd"]
                self.in_split = False; self.split_arms = {}
        elif glyph == GLYPH_IMSCRIB:
            if self.reg == EMPTY: self.reg = frozenset({'T'})
        elif glyph == GLYPH_IFIX:
            self.fixed = True
        
        self.history.append({"glyph": glyph, "opcode": NAME_FROM_GLYPH.get(glyph, "?"),
                            "reg_before": reg_name(reg_before), "reg_after": reg_name(self.reg)})
        return self.reg
    
    def _advance_state(self, reg: Reg) -> Reg:
        try:
            idx = ALL_STATES.index(reg)
            return ALL_STATES[(idx + 1) % len(ALL_STATES)]
        except ValueError:
            return reg | frozenset({'T'})
    
    def run(self, glyphs: List[str]) -> Dict:
        self.reset()
        trace = []
        for g in glyphs:
            self.step(g)
            trace.append(reg_name(self.reg))
        return {"final_register": reg_name(self.reg), "trace": trace, "history": self.history, "closed": self.reg == EMPTY}


# ── Numeral Encoder ───────────────────────────────────────────────────────

@dataclass
class NumeralMorphism:
    value: int
    glyphs: List[str]
    glyph_word: str
    register_trace: List[str]
    final_register: str
    hash: str
    
    def __str__(self):
        return f"{self.value:>4} → {self.glyph_word}"


# ── Factoring (Pollard's Rho for arbitrary large numbers) ──────────────────

def pollards_rho(n: int) -> int:
    if n % 2 == 0: return 2
    if n % 3 == 0: return 3
    
    # Use deterministic seeds and iteration limit for reproducibility
    # and to avoid infinite loops on large primes
    MAX_ITERATIONS = 100000
    MAX_RESTARTS = 10
    
    for restart in range(MAX_RESTARTS):
        c = (restart * 7 + 5) % (n - 1) + 1  # deterministic seeds
        f = lambda x: (pow(x, 2, n) + c) % n
        x, y, d = 2, 2, 1
        iterations = 0
        while d == 1 and iterations < MAX_ITERATIONS:
            x = f(x)
            y = f(f(y))
            d = math.gcd(abs(x - y), n)
            iterations += 1
        if d != 1 and d != n:
            return d
    
    # If Rho fails, try small factors up to a reasonable limit
    limit = min(1000000, int(math.isqrt(n)) + 1)
    for i in range(5, limit, 6):
        if n % i == 0: return i
        if n % (i + 2) == 0: return i + 2
    
    raise ValueError("No factor found")


def find_factors(n: int) -> tuple[int, int]:
    if n <= 1: return (1, n)
    if n % 2 == 0: return (2, n // 2)
    try:
        factor = pollards_rho(n)
        if factor != n and factor != 1:
            return (factor, n // factor)
    except:
        pass
    return (1, n)


def binary_to_int(bin_str: str) -> int:
    if not bin_str: return 0
    return int(bin_str, 2)


def int_to_bin(n: int, width: int = None) -> str:
    b = bin(n)[2:]
    if width and len(b) < width: b = b.zfill(width)
    return b


def encode_factors_to_body(p: int, q: int) -> str:
    bin_p = int_to_bin(p)
    bin_q = int_to_bin(q)
    max_len = max(len(bin_p), len(bin_q))
    bin_p = bin_p.zfill(max_len)
    bin_q = bin_q.zfill(max_len)
    body = []
    for pb, qb in zip(bin_p, bin_q):
        body.append(GAMMA[(int(pb), int(qb))])
    return "".join(body)


# ── γ Operator ──────────────────────────────────────────────────────────────

GAMMA = {
    (0, 0): "≻≻",  (0, 1): "≻⋈",  (1, 0): "⋈≻",  (1, 1): "⋈⋈",
}
GAMMA_REV = {v: k for k, v in GAMMA.items()}


# ── Numeral Encoder ───────────────────────────────────────────────────────

class NumeralEncoder:
    def __init__(self, value: int):
        self.value = value
        self.p, self.q = find_factors(abs(value))
        self.parity = "even" if value % 2 == 0 else "odd"
        self.is_negative = value < 0
    
    def encode(self) -> NumeralMorphism:
        glyphs = []
        trace = []
        machine = IMASMMachine()
        
        def emit(glyph: str):
            glyphs.append(glyph)
            machine.step(glyph)
            trace.append(reg_name(machine.reg))
        
        emit(GLYPH_VINIT)
        emit(GLYPH_TANCH)
        
        # Payload body: encode factors (p, q) via γ
        body = encode_factors_to_body(self.p, self.q)
        for g in body:
            emit(g)
        
        emit(GLYPH_FSPLIT)
        emit(GLYPH_EVALT if self.parity == "even" else GLYPH_EVALF)
        emit(GLYPH_ENGAGR)
        emit(GLYPH_FFUSE)
        emit(GLYPH_IMSCRIB)
        emit(GLYPH_AREV)
        emit(GLYPH_IFIX)
        emit(GLYPH_CLINK)
        emit(GLYPH_TANCH)
        
        fingerprint = sha256("".join(glyphs).encode()).hexdigest()[:16]
        
        return NumeralMorphism(
            value=self.value,
            glyphs=glyphs,
            glyph_word="".join(glyphs),
            register_trace=trace,
            final_register=reg_name(machine.reg),
            hash=fingerprint
        )


# ── Binary Analysis ───────────────────────────────────────────────────────

GLYPH_TO_BINARY = {
    GLYPH_VINIT: "0000", GLYPH_TANCH: "0001", GLYPH_AFWD: "0010",
    GLYPH_AREV: "0011", GLYPH_CLINK: "0100", GLYPH_FSPLIT: "0101",
    GLYPH_EVALT: "0110", GLYPH_EVALF: "0111", GLYPH_ENGAGR: "1000",
    GLYPH_FFUSE: "1001", GLYPH_IMSCRIB: "1010", GLYPH_IFIX: "1011",
}

GLYPH_TO_BIT = {
    GLYPH_AFWD: "1", GLYPH_AREV: "1", GLYPH_CLINK: "1", GLYPH_EVALT: "1",
    GLYPH_EVALF: "1", GLYPH_ENGAGR: "1", GLYPH_IFIX: "1",
    GLYPH_VINIT: "0", GLYPH_TANCH: "0", GLYPH_FSPLIT: "0",
    GLYPH_FFUSE: "0", GLYPH_IMSCRIB: "0",
}

def split_even_odd_positions(glyphs: List[str], skip_boundary: bool = True) -> tuple[List[str], List[str]]:
    start = 2 if skip_boundary and len(glyphs) >= 2 else 0
    return [glyphs[i] for i in range(start, len(glyphs), 2)], [glyphs[i] for i in range(start+1, len(glyphs), 2)]

def glyphs_to_binary(glyphs: List[str], mode: str = "class") -> str:
    if mode == "class": return "".join(GLYPH_TO_BIT.get(g, "0") for g in glyphs)
    elif mode == "index": return "".join(GLYPH_TO_BINARY.get(g, "0000") for g in glyphs)
    else: raise ValueError(f"Unknown mode: {mode}")

def analyze_morphism_binary(glyphs: List[str], skip_boundary: bool = True) -> Dict[str, Any]:
    even_glyphs, odd_glyphs = split_even_odd_positions(glyphs, skip_boundary)
    result = {
        "total_glyphs": len(glyphs), "skipped_boundary": skip_boundary,
        "even_position": {"glyphs": even_glyphs, "count": len(even_glyphs),
                         "binary_class": glyphs_to_binary(even_glyphs, "class"),
                         "binary_index": glyphs_to_binary(even_glyphs, "index")},
        "odd_position": {"glyphs": odd_glyphs, "count": len(odd_glyphs),
                        "binary_class": glyphs_to_binary(odd_glyphs, "class"),
                        "binary_index": glyphs_to_binary(odd_glyphs, "index")},
        "full_binary_class": glyphs_to_binary(glyphs[2:] if skip_boundary else glyphs, "class"),
        "full_binary_index": glyphs_to_binary(glyphs[2:] if skip_boundary else glyphs, "index"),
    }
    result["interleaved_class"] = "".join(e+o for e,o in zip(
        result["even_position"]["binary_class"], result["odd_position"]["binary_class"]+"0"))
    return result


# ── Payload Extraction Operator Λ ──────────────────────────────────────────

SUFFIX = "∈⊥⊞∋⊙≺⊡⋈⊣"
SUFFIX_ALT = "∈⊤⊞∋⊙≺⊡⋈⊣"
PREFIX = "⊢⊣"

def extract_payload_body(glyph_word: str) -> str:
    if not glyph_word.startswith(PREFIX):
        raise ValueError(f"Word must start with {PREFIX}")
    suffix = SUFFIX if glyph_word.endswith(SUFFIX) else (SUFFIX_ALT if glyph_word.endswith(SUFFIX_ALT) else None)
    if not suffix: raise ValueError(f"Word must end with {SUFFIX} or {SUFFIX_ALT}")
    return glyph_word[len(PREFIX):-len(suffix)]


def lambda_operator(W_N: str) -> tuple[str, str]:
    payload_glyphs = [g for g in W_N if g in ("≻", "⋈")]
    if not payload_glyphs: return "", ""
    
    bin_p, bin_q = [], []
    for i in range(0, len(payload_glyphs) - 1, 2):
        digram = payload_glyphs[i] + payload_glyphs[i+1]
        if digram in GAMMA_REV:
            p_bit, q_bit = GAMMA_REV[digram]
            bin_p.append(str(p_bit))
            bin_q.append(str(q_bit))
    return "".join(bin_p), "".join(bin_q)


def extract_payload(glyph_word: str) -> Dict[str, Any]:
    W_N = extract_payload_body(glyph_word)
    bin_p, bin_q = lambda_operator(W_N)
    p, q = binary_to_int(bin_p), binary_to_int(bin_q)
    
    gamma_reconstructed = ""
    for i in range(max(len(bin_p), len(bin_q))):
        p_bit = int(bin_p[i]) if i < len(bin_p) else 0
        q_bit = int(bin_q[i]) if i < len(bin_q) else 0
        gamma_reconstructed += GAMMA[(p_bit, q_bit)]
    
    body_filtered = "".join(g for g in W_N if g in ("≻", "⋈"))
    return {
        "full_word": glyph_word, "body_W_N": W_N, "body_length": len(W_N),
        "lambda_W_N": {"bin_p": bin_p, "bin_q": bin_q, "p": p, "q": q, "p_times_q": p*q},
        "gamma_reconstructed": gamma_reconstructed,
        "gamma_matches_body": gamma_reconstructed == body_filtered,
    }


def verify_morphism(glyphs: List[str]) -> Dict:
    machine = IMASMMachine()
    return machine.run(glyphs)


# ── CLI ───────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Native IMASM-Numeral Encoder: numeral → unique IMASM morphism")
    parser.add_argument("values", nargs="*", type=int, help="Numerals to encode")
    parser.add_argument("--range", type=str, help="Range (e.g., '0-20')")
    parser.add_argument("--verify", action="store_true", help="Verify through canonical decoder")
    parser.add_argument("--binary", action="store_true", help="Binary analysis")
    parser.add_argument("--binary-mode", choices=["class", "index", "both"], default="both")
    parser.add_argument("--payload", action="store_true", help="Extract factor payload Λ(W_N) → (p,q)")
    parser.add_argument("--json", action="store_true", help="JSON output")
    parser.add_argument("--blueprint", action="store_true", help="Show blueprint")
    args = parser.parse_args()
    
    if args.blueprint:
        bp = load_blueprint()
        print(f"\n{'='*60}\n  Blueprint: {bp['name']}\n  Canonical Decoder: {bp['glyph_word']}\n  Grounded Tuple: {bp['grounded_tuple']}\n  Lean Verified: {bp['lean_verified']} (tier: O₂dag)\n{'='*60}")
        return
    
    if args.payload:
        if args.range:
            start, end = map(int, args.range.split('-')); values = range(start, end+1)
        elif args.values: values = args.values
        else: values = [42]
        
        for v in values:
            encoder = NumeralEncoder(v)
            morphism = encoder.encode()
            payload_result = extract_payload(morphism.glyph_word)
            if args.binary: payload_result["binary_analysis"] = analyze_morphism_binary(morphism.glyphs)
            
            if args.json:
                print(json.dumps(payload_result, indent=2))
            else:
                print(f"N = {v}")
                print(f"  D(N) = {payload_result['full_word']}")
                print(f"  W_N  = {payload_result['body_W_N']} (len={payload_result['body_length']})")
                print(f"  Λ(W_N) = bin(p)={payload_result['lambda_W_N']['bin_p']}, bin(q)={payload_result['lambda_W_N']['bin_q']}")
                print(f"  p = {payload_result['lambda_W_N']['p']}, q = {payload_result['lambda_W_N']['q']}")
                print(f"  p × q = {payload_result['lambda_W_N']['p_times_q']} {'✓' if payload_result['lambda_W_N']['p_times_q'] == v else '✗'}")
                print(f"  γ-reconstructed = {payload_result['gamma_reconstructed']}")
                print(f"  γ matches body = {payload_result['gamma_matches_body']}")
                if args.binary:
                    ba = payload_result["binary_analysis"]
                    print(f"  even[{ba['even_position']['count']}]: class={ba['even_position']['binary_class'][:64]}...")
                    print(f"  odd [{ba['odd_position']['count']}]: class={ba['odd_position']['binary_class'][:64]}...")
                print()
        return
    
    if args.range:
        start, end = map(int, args.range.split('-')); values = range(start, end+1)
    elif args.values: values = args.values
    else: values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 42, 100, 256]
    
    results = []
    for v in values:
        encoder = NumeralEncoder(v)
        morphism = encoder.encode()
        result = {"numeral": v, "glyph_word": morphism.glyph_word, "glyph_count": len(morphism.glyphs),
                  "glyphs": [{"glyph": g, "opcode": NAME_FROM_GLYPH[g]} for g in morphism.glyphs],
                  "register_trace": morphism.register_trace, "final_register": morphism.final_register, "hash": morphism.hash}
        if args.verify: result["verification"] = verify_morphism(morphism.glyphs)
        if args.binary: result["binary_analysis"] = analyze_morphism_binary(morphism.glyphs)
        results.append(result)
        
        if not args.json:
            print(morphism)
            if args.verify:
                vr = result["verification"]
                print(f"    verify: final_reg={vr['final_register']} closed={vr['closed']} trace={vr['trace']}")
            if args.binary:
                ba = result["binary_analysis"]
                print(f"    even[{ba['even_position']['count']}]: class={ba['even_position']['binary_class'][:64]}...")
                print(f"    odd [{ba['odd_position']['count']}]: class={ba['odd_position']['binary_class'][:64]}...")
    
    if args.json:
        print(json.dumps({"canonical_decoder": CANONICAL_DECODER, "encodings": results}, indent=2))


def load_blueprint(path: Optional[str] = None) -> Dict:
    if path is None: path = Path(__file__).parent / "native_imasm_numeral_mapping_ob3ect.json"
    with open(path) as f: return json.load(f)


if __name__ == "__main__":
    main()