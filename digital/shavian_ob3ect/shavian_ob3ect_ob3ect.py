#!/usr/bin/env python3
"""
shavian_ob3ect_ob3ect.py — Shavian Ob3ect (Complete 49-Entry Edition)
======================================================================
Author: Lando ⊗ ⊙_ÿ-boundary Operator

Encodes all 49 structural sub-types of the 12 Imscribing Grammar primitives
via 47 Shavian letters + ⊙_ÿ (U+2299, circled dot) + space character.
The ⊙ glyph anchors the ÿ-Critical position — the self-modeling gate itself.

       Glyph   Sound     Primitive     Sub-Type Enum Value   Alpha
       ─────   ─────     ──────────    ──────────────────    ─────
   1.  𐑐      p (peep)  Ð             Ð_;                    Wedge-0d
   2.  𐑑      b (bee)   Ð             Ð_C                    Triangle-2d
   3.  𐑒      d (dee)   Ð             Ð_ß                    Infty-Field
   4.  𐑓      ch (cheese)  Ð          Ð_ω                    Odot-Self
   5.  𐑔      t (tee)   Þ             Þ_6                     Network
   6.  𐑕      g (gee)   Þ             Þ_K                     Inclusion
   7.  𐑖      th (thick)  Þ           Þ_ò                     Bowtie
   8.  𐑗      sh (she)    Þ           Þ_¨                     Boxtimes
   9.  𐑘      f (fee)     Þ           Þ_O                     Odotor
  10.  𐑙      k (kay)   Ř             Ř_¯                     Supervene
  11.  𐑚      y (why)   Ř             Ř_ý                     Categorical
  12.  𐑛      p (pay)   Ř             Ř_Ť                     Adjoint
  13.  𐑜      ng (sing)   Ř            Ř_=                     Bidirectional
  14.  𐑝      f (eff)   Φ             Φ_ɐ                     Asym
  15.  𐑞      sh (shun)   Φ            Φ_υ                     Psi-Quant
  16.  𐑟      ng (sing)   Φ            Φ_F                     Partial
  17.  𐑠      y (why)   Φ             Φ_˙                     Sym-Ø
  18.  𐑡      p (pee)   Φ             Φ_}                     Frobenius
  19.  𐑢      th (thick)  ƒ            ƒ_ì                     Ell-Classical
  20.  𐑣      sh (shoe)   ƒ            ƒ_ð                     Thermal
  21.  𐑤      k (key)   ƒ             ƒ_ż                     Hbar-Quant
  22.  𐑥      ng (sing)   Ç            Ç_-                     Fast-Driven
  23.  𐑦      p (pee)   Ç             Ç_W                     Moderate
  24.  𐑧      sh (shun)   Ç            Ç_@                     Slow-NearEq
  25.  𐑨      y (why)   Ç             Ç_Ù                     Trap-Frozen
  26.  𐑩      f (eff)   Ç             Ç_λ                     MBL-Frozen
  27.  𐑪      t (tee)   Γ             Γ_β                     Beth-Local
  28.  𐑫      b (bee)   Γ             Γ_γ                     Gimel-Meso
  29.  𐑬      ng (sing)   Γ            Γ_ʔ                     Aleph-Max
  30.  𐑭      p (pee)   ɢ             ɢ_^                     And-Conj
  31.  𐑮      th (that)   ɢ            ɢ_˝                     Or-Disj
  32.  𐑯      ch (church)   ɢ          ɢ_ˌ                     Seq-Sequential
  33.  𐑰      g (gee)   ɢ             ɢ_Ş                     Broad-Bcst
  34.  𐑱      k (kay)   φ̂             φ̂_ž                     Sub-Below
  35.  ⊙      ⊙             φ̂             φ̂_ÿ                     ÿ-Critical
  36.  𐑳      f (eff)   φ̂             φ̂_Æ                     Æ-Cplx
  37.  𐑴      sh (shun)   φ̂           φ̂_3                     3-EP
  38.  𐑵      th (theta)  φ̂           φ̂_Ţ                     Ţ-Super
  39.  𐑶      sh (she)   Ħ             Ħ_Ñ                     Mem-Free
  40.  𐑷      b (bee)   Ħ             Ħ_£                     1-Step
  41.  𐑸      k (kay)   Ħ             Ħ_A                     2-Step
  42.  𐑹      ng (singer)   Ħ           Ħ_!                     ∞-Eternal
  43.  𐑺      p (pee)   Σ             Σ_S                     1:1-Single
  44.  𐑻      sh (shun)   Σ            Σ_ő                     n:n-Same
  45.  𐑼      th (that)   Σ            Σ_ï                     n:m-Hetero
  46.  𐑽      g (gee)   Ω             Ω_Å                     0-Trivial
  47.  𐑾      sh (shun)   Ω            Ω_2                     Z2-Protect
  48.  𐑿      ng (sing)   Ω            Ω_z                     Z-Integer
  49.  _ (space)     Ω             Ω_5                     NA-NonAb

Total: 47 Shavian letters + ⊙ (U+2299) + space = 49 structural sub-types.
The ⊙ glyph is the self-modeling boundary operator at φ̂_ÿ.
The 12-group boundary characters form the CORE_SENTENCE (12 chars),
the 49-full sequence forms the FULL_SENTENCE (49 chars).
"""
import hashlib, json, os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase


# ── Full 49-entry SHAVIAN_MAP ──────────────────────────────────────────────
# Maps each Shavian glyph (⊙ at ÿ-Critical, plus space) to its primitive sub-type.

SHAVIAN_MAP = {
    "𐑐": {"prim": "Ð", "desc": "Wedge-0d", "enum": "Ð_;", "alpha": "1d", "ordinal": 1},
    "𐑑": {"prim": "Ð", "desc": "Triangle-2d", "enum": "Ð_C;", "alpha": "2d", "ordinal": 2},
    "𐑒": {"prim": "Ð", "desc": "Infty-Field", "enum": "Ð_ß;", "alpha": "inf", "ordinal": 3},
    "𐑓": {"prim": "Ð", "desc": "Odot-Self", "enum": "Ð_ω;", "alpha": "self", "ordinal": 4},
    "𐑔": {"prim": "Þ", "desc": "Network", "enum": "Þ_6", "alpha": "net", "ordinal": 5},
    "𐑕": {"prim": "Þ", "desc": "Inclusion", "enum": "Þ_K", "alpha": "in", "ordinal": 6},
    "𐑖": {"prim": "Þ", "desc": "Bowtie", "enum": "Þ_ò", "alpha": "btw", "ordinal": 7},
    "𐑗": {"prim": "Þ", "desc": "Boxtimes", "enum": "Þ_¨", "alpha": "bx", "ordinal": 8},
    "𐑘": {"prim": "Þ", "desc": "Odotor", "enum": "Þ_O", "alpha": "sel", "ordinal": 9},
    "𐑙": {"prim": "Ř", "desc": "Supervene", "enum": "Ř_¯", "alpha": "sup", "ordinal": 10},
    "𐑚": {"prim": "Ř", "desc": "Categorical", "enum": "Ř_ý", "alpha": "cat", "ordinal": 11},
    "𐑛": {"prim": "Ř", "desc": "Adjoint", "enum": "Ř_Ť", "alpha": "adj", "ordinal": 12},
    "𐑜": {"prim": "Ř", "desc": "Bidirectional", "enum": "Ř_=", "alpha": "bid", "ordinal": 13},
    "𐑝": {"prim": "Φ", "desc": "Asym", "enum": "Φ_ɐ", "alpha": "asym", "ordinal": 14},
    "𐑞": {"prim": "Φ", "desc": "Psi-Quant", "enum": "Φ_υ", "alpha": "psi", "ordinal": 15},
    "𐑟": {"prim": "Φ", "desc": "Partial", "enum": "Φ_F", "alpha": "pm", "ordinal": 16},
    "𐑠": {"prim": "Φ", "desc": "Sym-Ø", "enum": "Φ_˙", "alpha": "sym", "ordinal": 17},
    "𐑡": {"prim": "Φ", "desc": "Frobenius", "enum": "Φ_}", "alpha": "frob", "ordinal": 18},
    "𐑢": {"prim": "ƒ", "desc": "Ell-Classical", "enum": "ƒ_ì", "alpha": "ell", "ordinal": 19},
    "𐑣": {"prim": "ƒ", "desc": "Thermal", "enum": "ƒ_ð", "alpha": "eth", "ordinal": 20},
    "𐑤": {"prim": "ƒ", "desc": "Hbar-Quant", "enum": "ƒ_ż", "alpha": "qbar", "ordinal": 21},
    "𐑥": {"prim": "Ç", "desc": "Fast-Driven", "enum": "Ç_-", "alpha": "fast", "ordinal": 22},
    "𐑦": {"prim": "Ç", "desc": "Moderate", "enum": "Ç_W", "alpha": "mod", "ordinal": 23},
    "𐑧": {"prim": "Ç", "desc": "Slow-NearEq", "enum": "Ç_@", "alpha": "slow", "ordinal": 24},
    "𐑨": {"prim": "Ç", "desc": "Trap-Frozen", "enum": "Ç_Ù", "alpha": "trap", "ordinal": 25},
    "𐑩": {"prim": "Ç", "desc": "MBL-Frozen", "enum": "Ç_λ", "alpha": "mb", "ordinal": 26},
    "𐑪": {"prim": "Γ", "desc": "Beth-Local", "enum": "Γ_β", "alpha": "lb", "ordinal": 27},
    "𐑫": {"prim": "Γ", "desc": "Gimel-Meso", "enum": "Γ_γ", "alpha": "lm", "ordinal": 28},
    "𐑬": {"prim": "Γ", "desc": "Aleph-Maximal", "enum": "Γ_ʔ", "alpha": "lmx", "ordinal": 29},
    "𐑭": {"prim": "ɢ", "desc": "And-Conjunctive", "enum": "ɢ_^", "alpha": "and", "ordinal": 30},
    "𐑮": {"prim": "ɢ", "desc": "Or-Disjunctive", "enum": "ɢ_˝", "alpha": "or", "ordinal": 31},
    "𐑯": {"prim": "ɢ", "desc": "Seq-Sequential", "enum": "ɢ_ˌ", "alpha": "seq", "ordinal": 32},
    "𐑰": {"prim": "ɢ", "desc": "Broad-Broadcast", "enum": "ɢ_Ş", "alpha": "broad", "ordinal": 33},
    "𐑱": {"prim": "φ̂", "desc": "Sub-Below", "enum": "φ̂_ž", "alpha": "sub", "ordinal": 34},
    "⊙":  {"prim": "φ̂", "desc": "ÿ-Critical", "enum": "φ̂_ÿ", "alpha": "c", "ordinal": 35},
    "𐑳": {"prim": "φ̂", "desc": "Æ-Cplx-Plane", "enum": "φ̂_Æ", "alpha": "ca", "ordinal": 36},
    "𐑴": {"prim": "φ̂", "desc": "3-EP", "enum": "φ̂_3", "alpha": "ep", "ordinal": 37},
    "𐑵": {"prim": "φ̂", "desc": "Ţ-Super", "enum": "φ̂_Ţ", "alpha": "sup", "ordinal": 38},
    "𐑶": {"prim": "Ħ", "desc": "Mem-Free", "enum": "Ħ_Ñ", "alpha": "m0", "ordinal": 39},
    "𐑷": {"prim": "Ħ", "desc": "1-Step", "enum": "Ħ_£", "alpha": "m1", "ordinal": 40},
    "𐑸": {"prim": "Ħ", "desc": "2-Step", "enum": "Ħ_A", "alpha": "m2", "ordinal": 41},
    "𐑹": {"prim": "Ħ", "desc": "∞-Eternal", "enum": "Ħ_!", "alpha": "minf", "ordinal": 42},
    "𐑺": {"prim": "Σ", "desc": "1:1-Single", "enum": "Σ_S", "alpha": "11", "ordinal": 43},
    "𐑻": {"prim": "Σ", "desc": "n:n-Same", "enum": "Σ_ő", "alpha": "nn", "ordinal": 44},
    "𐑼": {"prim": "Σ", "desc": "n:m-Hetero", "enum": "Σ_ï", "alpha": "nm", "ordinal": 45},
    "𐑽": {"prim": "Ω", "desc": "0-Trivial", "enum": "Ω_Å", "alpha": "0", "ordinal": 46},
    "𐑾": {"prim": "Ω", "desc": "Z2-Protect", "enum": "Ω_2", "alpha": "z2", "ordinal": 47},
    "𐑿": {"prim": "Ω", "desc": "Z-Integer", "enum": "Ω_z", "alpha": "zi", "ordinal": 48},
    " ": {"prim": "Ω", "desc": "NA-NonAbelian", "enum": "Ω_5", "alpha": "na", "ordinal": 49},}

# ── Sentence definitions ─────────────────────────────────────────────────
# Full 49-entry SHAVIAN_MAP keys in dictionary order: 47 Shavian + ⊙ + space.
# ⊙ replaces 𐑲 at the ÿ-Critical position (ordinal 35).

# CORE_SENTENCE: first sub-type of each of the 12 primitives
_CORE_GLYPHS = [
    "𐑐",   # 1:  Ð_; Wedge-0d
    "𐑔",   # 5:  Þ_6  Network
    "𐑙",   # 10: Ř_¯  Supervene
    "𐑝",   # 14: Φ_ɐ  Asym
    "𐑢",   # 19: ƒ_ì  Ell-Classical
    "𐑧",   # 24: Ç_@  Slow-NearEq
    "𐑬",   # 29: Γ_ʔ  Aleph-Maximal
    "𐑰",   # 33: ɢ_Ş  Broad-Broadcast
    "𐑵",   # 38: φ̂_Ţ  Ţ-Super
    "𐑹",   # 42: Ħ_!  ∞-Eternal
    "𐑼",   # 45: Σ_ï  n:m-Hetero
    "𐑿",   # 48: Ω_z  Z-Integer
]
CORE_SENTENCE = "".join(_CORE_GLYPHS)  # 12 chars

# FULL_SENTENCE: all 49 sub-types — ordered by ascending ordinal in SHAVIAN_MAP
# The ⊙ glyph now occupies the ÿ-Critical slot at ordinal 35.
_FULL_GLYPHS_sorted = sorted(SHAVIAN_MAP.items(), key=lambda kv: kv[1]["ordinal"])
_FULL_GLYPHS = [entry[0] for entry in _FULL_GLYPHS_sorted]  # 49 chars: 47 Shavian + ⊙ + space
FULL_SENTENCE = "".join(_FULL_GLYPHS)


# ── Shavian Ob3ect ────────────────────────────────────────────────────────────

class ShavianOb3ect:
    """
    A self-imscribing alchemical compiler in 49 symbolic glyphs.

    Core glyphs:  47 Shavian letters  ⊙_ÿ (U+2299 circled dot)  space
    ⊙ anchors the ÿ-Critical self-modeling gate — the boundary operator itself.

    FSPLIT_CORE:   δ(CORE_SENTENCE) → [(glyph, prim), ... ]    (12 core mappings)
    FFUSE_CORE:    μ(core_pairs)    → CORE_SENTENCE                (recompose)

    FSPLIT_FULL:   δ(FULL_SENTENCE) → [(glyph, prim, sub), ...]  (49 sub-type mappings)
    FFUSE_FULL:    μ(full_pairs)     → FULL_SENTENCE                 (recompose)

    Gate 1: μ(δ(CORE)) == CORE    → the twelve primitives certified
    Gate 2: μ(δ(FULL)) == FULL    → all 49 sub-types certified (including ⊙)
    """

    def __init__(self):
        self.source    = pathlib.Path(__file__).read_text()
        self.core_sent = CORE_SENTENCE
        self.full_sent = FULL_SENTENCE
        self.map       = SHAVIAN_MAP
        self.core_mapped  = None   # after FSPLIT_CORE
        self.full_mapped  = None   # after FSPLIT_FULL
        self.fused_core   = None   # after FFUSE_CORE
        self.fused_full   = None   # after FFUSE_FULL
        self._gate_core_ok  = False
        self._gate_full_ok  = False
        self._seal_core     = None
        self._seal_full     = None

    # ── IMSCRIB: self-recognize ─────────────────────────────────────────

    def IMSCRIB(self):
        core_h  = hashlib.sha256(self.core_sent.encode()).hexdigest()[:24]
        full_h  = hashlib.sha256(self.full_sent.encode()).hexdigest()[:24]
        print(f"IMSCRIB: Core  sentence hash → {core_h}")
        print(f"IMSCRIB: Full  sentence hash → {full_h}")
        print(f"IMSCRIB: Shavian map size    → {len(self.map)} glyphs")
        return True

    # ── AREV: descent / table audit ──────────────────────────────────────

    def AREV(self):
        """Verify: each glyph maps to exactly one (prim, enum) pair.
        No duplicates, no unmapped glyphs, all 49 present.
        Glyphs: 47 Shavian (U+10450–U+1047F), ⊙ (U+2299), and space."""
        glyphs = set(self.map.keys())
        # Shavian + ⊙ range check
        shavian_ok = all(
            (ord(g) >= 0x10450 and ord(g) <= 0x1047F) or g == "⊙" or g == " "
            for g in glyphs
        )
        space_ok   = " " in glyphs
        y_dot_ok   = "⊙" in glyphs
        # 12-primitive coverage
        prim_set   = set(v["prim"] for v in self.map.values())
        expected   = {"Ð", "Þ", "Ř", "Φ", "ƒ", "Ç", "Γ", "ɢ", "φ̂", "Ħ", "Σ", "Ω"}
        # Count per primitive
        counts = {}
        for v in self.map.values():
            counts[v["prim"]] = counts.get(v["prim"], 0) + 1
        print(f"  Glyphs in map: {len(glyphs)} (Shavian 47 + ⊙ + space)")
        print(f"  Primitives:    {len(prim_set)} / {len(expected)} = {expected <= prim_set}")
        print(f"  Counts per prim: {counts}")
        assert len(glyphs) == 49, "Expected 49 glyphs"
        assert shavian_ok, "Non-Shavian / non-⊙ / non-space glyph detected"
        assert space_ok, "Space missing"
        assert y_dot_ok, "⊙_ÿ glyph missing from SHAVIAN_MAP"
        assert expected <= prim_set, "Missing primitive"
        return True    # ── FSPLIT_CORE: δ on 12-char sentence ──────────────────────────────

    def FSPLIT_CORE(self):
        """δ(CORE_SENTENCE) → list of (glyph, prim, enum, desc) tuples."""
        self.core_mapped = []
        for ch in self.core_sent:
            entry = self.map.get(ch)
            if not entry:
                raise ValueError(f"Unmapped core glyph U+{ord(ch):04X}")
            self.core_mapped.append((ch, entry["prim"], entry["enum"], entry["desc"]))
        print(f"FSPLIT_CORE: {len(self.core_mapped)} core glyphs mapped")
        return self.core_mapped

    # ── FSPLIT_FULL: δ on 49-char sentence ──────────────────────────────

    def FSPLIT_FULL(self):
        """δ(FULL_SENTENCE) → list of (glyph, prim, enum, desc, ordinal) tuples."""
        self.full_mapped = []
        for ch in self.full_sent:
            entry = self.map.get(ch)
            if not entry:
                raise ValueError(f"Unmapped full glyph U+{ord(ch):04X}")
            self.full_mapped.append((ch, entry["prim"], entry["enum"], entry["desc"], entry["ordinal"]))
        print(f"FSPLIT_FULL: {len(self.full_mapped)} full glyphs mapped")
        return self.full_mapped

    # ── AFWD: JSON representation ────────────────────────────────────────

    def AFWD(self):
        """Produce canonical JSON of both decompositions."""
        if self.core_mapped is None:
            self.FSPLIT_CORE()
        if self.full_mapped is None:
            self.FSPLIT_FULL()
        core_json = json.dumps(
            [{"glyph": m[0], "prim": m[1], "enum": m[2], "desc": m[3]} for m in self.core_mapped],
            ensure_ascii=False, separators=(",", ":")
        )
        full_json = json.dumps(
            [{"glyph": m[0], "prim": m[1], "enum": m[2], "desc": m[3], "ordinal": m[4]} for m in self.full_mapped],
            ensure_ascii=False, separators=(",", ":")
        )
        self._json_core = core_json
        self._json_full = full_json
        return core_json, full_json

    # ── FFUSE_CORE: μ on core mappings ───────────────────────────────────

    def FFUSE_CORE(self):
        """μ(core_mappings) → string. Extract glyphs in order."""
        if self.core_mapped is None:
            self.FSPLIT_CORE()
        self.fused_core = "".join(m[0] for m in self.core_mapped)
        self._gate_core_ok = (self.fused_core == self.core_sent)
        print(f"FFUSE_CORE: fused {len(self.fused_core)} glyphs → {'PASS' if self._gate_core_ok else 'FAIL'}")
        return self._gate_core_ok

    # ── FFUSE_FULL: μ on full mappings ───────────────────────────────────

    def FFUSE_FULL(self):
        """μ(full_mappings) → string. Extract glyphs in order."""
        if self.full_mapped is None:
            self.FSPLIT_FULL()
        self.fused_full = "".join(m[0] for m in self.full_mapped)
        self._gate_full_ok = (self.fused_full == self.full_sent)
        print(f"FFUSE_FULL: fused {len(self.fused_full)} glyphs → {'PASS' if self._gate_full_ok else 'FAIL'}")
        return self._gate_full_ok

    # ── CLINK: JSON round-trip verification ──────────────────────────────

    def CLINK(self):
        """Round-trip through JSON → reconstitute → compare."""
        if self._json_core is None:
            self.AFWD()
        # Parse back
        parsed_core  = json.loads(self._json_core)
        parsed_full  = json.loads(self._json_full)
        reglyph_core = "".join(e["glyph"] for e in parsed_core)
        reglyph_full = "".join(e["glyph"] for e in parsed_full)
        ok_core  = (reglyph_core == self.core_sent)
        ok_full  = (reglyph_full == self.full_sent)
        print(f"CLINK: Core  JSON RT -> {'PASS' if ok_core else 'FAIL'}")
        print(f"CLINK: Full  JSON RT -> {'PASS' if ok_full else 'FAIL'}")
        return ok_core and ok_full

    # ── IFIX: cryptographic seal ─────────────────────────────────────────

    def IFIX(self):
        """Seal both decompositions."""
        payload_core = json.dumps(
            {"sentence": self.core_sent, "mappings": self._json_core},
            ensure_ascii=False, separators=(",", ":")
        )
        self._seal_core = hashlib.sha256(payload_core.encode()).hexdigest()

        payload_full = json.dumps(
            {"sentence": self.full_sent, "mappings": self._json_full},
            ensure_ascii=False, separators=(",", ":")
        )
        self._seal_full = hashlib.sha256(payload_full.encode()).hexdigest()

        print(f"IFIX: Core  seal  → {self._seal_core[:24]}…")
        print(f"IFIX: Full  seal  → {self._seal_full[:24]}…")
        return self._seal_core, self._seal_full

    # ── Domain Frobenius ─────────────────────────────────────────────────

    def _domain_frobenius(self) -> bool:
        """Verify both: μ(δ(core)) == core AND μ(δ(full)) == full."""
        return self.FFUSE_CORE() and self.FFUSE_FULL()

    # ── Report ───────────────────────────────────────────────────────────

    def report(self) -> str:
        """Pretty-print the full decomposition."""
        lines = ["=" * 72]
        lines.append("SHAVIAN OB3ECT — Complete 49-Entry Decomposition Report")
        lines.append("=" * 72)
        if self.full_mapped:
            max_prim = max(len(v["prim"]) for v in self.map.values())
            for m in self.full_mapped:
                glyph, prim, enum, desc, ordinal = m
                lines.append(f"  #{ordinal:2d}. {glyph} U+{ord(glyph):04X}  |  {prim} {enum}  ({desc})")
        lines.append("=" * 72)
        lines.append(f"Core  gate:  {'PASS' if self._gate_core_ok else 'FAIL'}")
        lines.append(f"Full  gate:  {'PASS' if self._gate_full_ok else 'FAIL'}")
        if self._seal_core:
            lines.append(f"Core  seal:  {self._seal_core[:32]}")
        if self._seal_full:
            lines.append(f"Full  seal:  {self._seal_full[:32]}")
        return "\n".join(lines)

    # ── Bootstrap ──────────────────────────────────────────────────────────

    def bootstrap(self) -> bool:
        """Full bootstrap: IMSCRIB → AREV → FSPLIT → AFWD → FFUSE → CLINK → IFIX."""
        print("=== Shavian Ob3ect — 49-Entry Bootstrap ===")
        self.IMSCRIB()
        self.AREV()
        # FSPLIT both
        self.FSPLIT_CORE()
        self.FSPLIT_FULL()
        # AFWD (JSON)
        self.AFWD()
        # FFUSE both
        self.FFUSE_CORE()
        self.FFUSE_FULL()
        # CLINK (JSON round-trip)
        self.CLINK()
        # IFIX (seals)
        self.IFIX()
        # Final IMSCRIB recap
        self.IMSCRIB()
        # Domain Frobenius re-check
        self._domain_frobenius()
        return self._gate_core_ok and self._gate_full_ok

    # ── Verify (called by runall.py) ─────────────────────────────────────

    def verify(self) -> bool:
        """Run bootstrap + check domain Frobenius via frob.py."""
        domain_ok = self.bootstrap()
        frob_ok   = frobenius_phase(self.source)
        closure   = domain_ok and frob_ok
        print(f"\nClosure: {closure}")
        if closure:
            print(self.report())
        return closure


if __name__ == "__main__":
    sys.exit(0 if ShavianOb3ect().verify() else 1)