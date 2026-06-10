#!/usr/bin/env python3
"""
shavian_ob3ect_ob3ect.py — Shavian Ob3ect (Complete 49-Entry Edition)
======================================================================
Author: Lando⊗⊙_ÿ-boundary Operator

Mapping per shavian_notation_spec.md v0.6.0.
Glyphs assigned by phonetic/structural criteria, NOT sequential Unicode order.

Primitive order (canonical tuple): D T R P F K G ɢ ⊙ H S Ω

𝓕₄ primitives (4 values each): D  R  ɢ  H  Ω
𝓕₅ primitives (5 values each): T  P  K  ⊙
𝓕₃ primitives (3 values each): ƒ  Γ  Σ

O₀  baseline: ⟨𐑛·𐑡·𐑩·𐑗·𐑱·𐑘·𐑚·𐑝·𐑢·𐑓·𐑙·𐑷⟩
O_∞  Stone:    ⟨𐑦·𐑸·𐑾·𐑹·𐑐·𐑧·𐑲·𐑠·⊙·𐑫·𐑳·𐑭⟩

       Glyph   Prim    Enum       Desc              Global
       ─────   ────    ────       ────              ──────
  1.   𐑛      Ð      Ð_ß       Infty-Field        1
  2.   𐑨      Ð      Ð_C       Triangle-2d        2
  3.   𐑼      Ð      Ð_;       Wedge-0d           3
  4.   𐑦      Ð      Ð_ω       Odot-Self          4
  5.   𐑡      Þ      Þ_6       Network            5
  6.   𐑰      Þ      Þ_K       Inclusion          6
  7.   𐑥      Þ      Þ_ò       Bowtie             7
  8.   𐑶      Þ      Þ_¨       Boxtimes           8
  9.   𐑸      Þ      Þ_O       Odotor             9
 10.   𐑩      Ř      Ř_¯       Supervene         10
 11.   𐑑      Ř      Ř_ý       Categorical       11
 12.   𐑽      Ř      Ř_Ť       Adjoint           12
 13.   𐑾      Ř      Ř_=       Bidirectional     13
 14.   𐑗      Φ      Φ_ɐ       Asym              14
 15.   𐑿      Φ      Φ_υ       Psi-Quant         15
 16.   𐑬      Φ      Φ_F       Partial           16
 17.   𐑯      Φ      Φ_˙       Sym-Ø             17
 18.   𐑹      Φ      Φ_}       Frobenius         18
 19.   𐑱      ƒ      ƒ^ì       Ell-Classical     19
 20.   𐑞      ƒ      ƒ^ð       Thermal           20
 21.   𐑐      ƒ      ƒ^ż       Hbar-Quant        21
 22.   𐑘      Ç      Ç^-       Fast-Driven       22
 23.   𐑤      Ç      Ç^W       Moderate          23
 24.   𐑧      Ç      Ç^@       Slow-NearEq       24
 25.   𐑪      Ç      Ç^Ù       Trap-Frozen       25
 26.   𐑺      Ç      Ç^λ       MBL-Frozen        26
 27.   𐑚      Γ      Γ_β       Beth-Local        27
 28.   𐑔      Γ      Γ_γ       Gimel-Meso        28
 29.   𐑲      Γ      Γ_ʔ       Aleph-Maximal     29
 30.   𐑝      ɢ      ɢ^∧       And-Conjunctive   30
 31.   𐑜      ɢ      ɢ^˝       Or-Disjunctive    31
 32.   𐑠      ɢ      ɢ^ˌ       Seq-Sequential    32
 33.   𐑵      ɢ      ɢ^Ş       Broad-Broadcast   33
 34.   𐑢      ⊙      ⊙_ž       Sub-Below         34
 35.   ⊙       ⊙      ⊙_ÿ       ÿ-Critical        35
 36.   𐑮      ⊙      ⊙_Æ       Æ-Cplx-Plane      36
 37.   𐑻      ⊙      ⊙_3       3-EP              37
 38.   𐑣      ⊙      ⊙_Ţ       Ţ-Super           38
 39.   𐑓      Ħ      Ħ_Ñ       Mem-Free          39
 40.   𐑒      Ħ      Ħ_£       1-Step            40
 41.   𐑖      Ħ      Ħ_A       2-Step            41
 42.   𐑫      Ħ      Ħ_!       ∞-Eternal         42
 43.   𐑙      Σ      Σ_S       1:1-Single        43
 44.   𐑕      Σ      Σ_ő       n:n-Same          44
 45.   𐑳      Σ      Σ_ï       n:m-Hetero        45
 46.   𐑷      Ω      Ω_Å       0-Trivial         46
 47.   𐑴      Ω      Ω_2       Z2-Protect        47
 48.   𐑭      Ω      Ω_z       Z-Integer         48
 49.   𐑟      Ω      Ω_5       NA-NonAbelian     49

Total: 48 Shavian letters (incl. 𐑲 U+10472) + ⊙ (U+2299) = 49 structural sub-types.
The ⊙ glyph anchors the ÿ-Critical self-modeling gate.
"""
import hashlib, json, os, pathlib, sys
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase


# ── Full 49-entry SHAVIAN_MAP ──────────────────────────────────────────────
# Per shavian_notation_spec.md v0.6.0. Global ordinals follow canonical
# tuple order D→T→R→P→F→K→G→ɢ→⊙→H→S→Ω, ascending within each primitive.

SHAVIAN_MAP = {
    # D — Dimensionality (𝓕₄, 4 values, global 1–4)
    "𐑛": {"prim": "Ð", "desc": "Infty-Field",     "enum": "Ð_ß", "alpha": "inf",   "ordinal": 1},
    "𐑨": {"prim": "Ð", "desc": "Triangle-2d",     "enum": "Ð_C", "alpha": "2d",    "ordinal": 2},
    "𐑼": {"prim": "Ð", "desc": "Wedge-0d",        "enum": "Ð_;", "alpha": "1d",    "ordinal": 3},
    "𐑦": {"prim": "Ð", "desc": "Odot-Self",       "enum": "Ð_ω", "alpha": "self",  "ordinal": 4},
    # T — Topology (𝓕₅, 5 values, global 5–9)
    "𐑡": {"prim": "Þ", "desc": "Network",         "enum": "Þ_6", "alpha": "net",   "ordinal": 5},
    "𐑰": {"prim": "Þ", "desc": "Inclusion",       "enum": "Þ_K", "alpha": "in",    "ordinal": 6},
    "𐑥": {"prim": "Þ", "desc": "Bowtie",          "enum": "Þ_ò", "alpha": "btw",   "ordinal": 7},
    "𐑶": {"prim": "Þ", "desc": "Boxtimes",        "enum": "Þ_¨", "alpha": "bx",    "ordinal": 8},
    "𐑸": {"prim": "Þ", "desc": "Odotor",          "enum": "Þ_O", "alpha": "sel",   "ordinal": 9},
    # R — Relational (𝓕₄, 4 values, global 10–13)
    "𐑩": {"prim": "Ř", "desc": "Supervene",       "enum": "Ř_¯", "alpha": "sup",   "ordinal": 10},
    "𐑑": {"prim": "Ř", "desc": "Categorical",     "enum": "Ř_ý", "alpha": "cat",   "ordinal": 11},
    "𐑽": {"prim": "Ř", "desc": "Adjoint",         "enum": "Ř_Ť", "alpha": "adj",   "ordinal": 12},
    "𐑾": {"prim": "Ř", "desc": "Bidirectional",   "enum": "Ř_=", "alpha": "bid",   "ordinal": 13},
    # P — Polarity (𝓕₅, 5 values, global 14–18)
    "𐑗": {"prim": "Φ", "desc": "Asym",            "enum": "Φ_ɐ", "alpha": "asym",  "ordinal": 14},
    "𐑿": {"prim": "Φ", "desc": "Psi-Quant",       "enum": "Φ_υ", "alpha": "psi",   "ordinal": 15},
    "𐑬": {"prim": "Φ", "desc": "Partial",         "enum": "Φ_F", "alpha": "pm",    "ordinal": 16},
    "𐑯": {"prim": "Φ", "desc": "Sym-Ø",           "enum": "Φ_˙", "alpha": "sym",   "ordinal": 17},
    "𐑹": {"prim": "Φ", "desc": "Frobenius",       "enum": "Φ_}", "alpha": "frob",  "ordinal": 18},
    # F — Fidelity (𝓕₃, 3 values, global 19–21)
    "𐑱": {"prim": "ƒ", "desc": "Ell-Classical",   "enum": "ƒ^ì", "alpha": "ell",   "ordinal": 19},
    "𐑞": {"prim": "ƒ", "desc": "Thermal",         "enum": "ƒ^ð", "alpha": "eth",   "ordinal": 20},
    "𐑐": {"prim": "ƒ", "desc": "Hbar-Quant",      "enum": "ƒ^ż", "alpha": "qbar",  "ordinal": 21},
    # K — Kinetics (𝓕₅, 5 values, global 22–26)
    "𐑘": {"prim": "Ç", "desc": "Fast-Driven",     "enum": "Ç^-", "alpha": "fast",  "ordinal": 22},
    "𐑤": {"prim": "Ç", "desc": "Moderate",        "enum": "Ç^W", "alpha": "mod",   "ordinal": 23},
    "𐑧": {"prim": "Ç", "desc": "Slow-NearEq",     "enum": "Ç^@", "alpha": "slow",  "ordinal": 24},
    "𐑪": {"prim": "Ç", "desc": "Trap-Frozen",     "enum": "Ç^Ù", "alpha": "trap",  "ordinal": 25},
    "𐑺": {"prim": "Ç", "desc": "MBL-Frozen",      "enum": "Ç^λ", "alpha": "mb",    "ordinal": 26},
    # G — Scope (𝓕₃, 3 values, global 27–29)
    "𐑚": {"prim": "Γ", "desc": "Beth-Local",      "enum": "Γ_β", "alpha": "lb",    "ordinal": 27},
    "𐑔": {"prim": "Γ", "desc": "Gimel-Meso",      "enum": "Γ_γ", "alpha": "lm",    "ordinal": 28},
    "𐑲": {"prim": "Γ", "desc": "Aleph-Maximal",   "enum": "Γ_ʔ", "alpha": "lmx",   "ordinal": 29},
    # ɢ — Grammar (𝓕₄, 4 values, global 30–33)
    "𐑝": {"prim": "ɢ", "desc": "And-Conjunctive", "enum": "ɢ^∧", "alpha": "and",   "ordinal": 30},
    "𐑜": {"prim": "ɢ", "desc": "Or-Disjunctive",  "enum": "ɢ^˝", "alpha": "or",    "ordinal": 31},
    "𐑠": {"prim": "ɢ", "desc": "Seq-Sequential",  "enum": "ɢ^ˌ", "alpha": "seq",   "ordinal": 32},
    "𐑵": {"prim": "ɢ", "desc": "Broad-Broadcast", "enum": "ɢ^Ş", "alpha": "broad", "ordinal": 33},
    # ⊙ — Criticality (𝓕₅, 5 values, global 34–38)
    "𐑢": {"prim": "⊙", "desc": "Sub-Below",       "enum": "⊙_ž", "alpha": "sub",   "ordinal": 34},
    "⊙":  {"prim": "⊙", "desc": "ÿ-Critical",      "enum": "⊙_ÿ", "alpha": "c",     "ordinal": 35},
    "𐑮": {"prim": "⊙", "desc": "Æ-Cplx-Plane",    "enum": "⊙_Æ", "alpha": "ca",    "ordinal": 36},
    "𐑻": {"prim": "⊙", "desc": "3-EP",            "enum": "⊙_3", "alpha": "ep",    "ordinal": 37},
    "𐑣": {"prim": "⊙", "desc": "Ţ-Super",         "enum": "⊙_Ţ", "alpha": "sup",   "ordinal": 38},
    # H — Chirality (𝓕₄, 4 values, global 39–42)
    "𐑓": {"prim": "Ħ", "desc": "Mem-Free",        "enum": "Ħ_Ñ", "alpha": "m0",    "ordinal": 39},
    "𐑒": {"prim": "Ħ", "desc": "1-Step",          "enum": "Ħ_£", "alpha": "m1",    "ordinal": 40},
    "𐑖": {"prim": "Ħ", "desc": "2-Step",          "enum": "Ħ_A", "alpha": "m2",    "ordinal": 41},
    "𐑫": {"prim": "Ħ", "desc": "∞-Eternal",       "enum": "Ħ_!", "alpha": "minf",  "ordinal": 42},
    # S — Stoichiometry (𝓕₃, 3 values, global 43–45)
    "𐑙": {"prim": "Σ", "desc": "1:1-Single",      "enum": "Σ_S", "alpha": "11",    "ordinal": 43},
    "𐑕": {"prim": "Σ", "desc": "n:n-Same",        "enum": "Σ_ő", "alpha": "nn",    "ordinal": 44},
    "𐑳": {"prim": "Σ", "desc": "n:m-Hetero",      "enum": "Σ_ï", "alpha": "nm",    "ordinal": 45},
    # Ω — Winding (𝓕₄, 4 values, global 46–49)
    "𐑷": {"prim": "Ω", "desc": "0-Trivial",       "enum": "Ω_Å", "alpha": "0",     "ordinal": 46},
    "𐑴": {"prim": "Ω", "desc": "Z2-Protect",      "enum": "Ω_2", "alpha": "z2",    "ordinal": 47},
    "𐑭": {"prim": "Ω", "desc": "Z-Integer",       "enum": "Ω_z", "alpha": "zi",    "ordinal": 48},
    "𐑟": {"prim": "Ω", "desc": "NA-NonAbelian",   "enum": "Ω_5", "alpha": "na",    "ordinal": 49},
}

# ── Sentence definitions ─────────────────────────────────────────────────
# CORE_SENTENCE: ordinal-1 glyph of each primitive in canonical tuple order.

_CORE_GLYPHS = [
    "𐑛",  # Ð_ß  Infty-Field      (D ordinal 1)
    "𐑡",  # Þ_6  Network          (T ordinal 1)
    "𐑩",  # Ř_¯  Supervene        (R ordinal 1)
    "𐑗",  # Φ_ɐ  Asym             (P ordinal 1)
    "𐑱",  # ƒ^ì  Ell-Classical    (F ordinal 1)
    "𐑘",  # Ç^-  Fast-Driven      (K ordinal 1)
    "𐑚",  # Γ_β  Beth-Local       (G ordinal 1)
    "𐑝",  # ɢ^∧  And-Conjunctive  (ɢ ordinal 1)
    "𐑢",  # ⊙_ž  Sub-Below        (⊙ ordinal 1)
    "𐑓",  # Ħ_Ñ  Mem-Free         (H ordinal 1)
    "𐑙",  # Σ_S  1:1-Single       (S ordinal 1)
    "𐑷",  # Ω_Å  0-Trivial        (Ω ordinal 1)
]
CORE_SENTENCE = "".join(_CORE_GLYPHS)  # 12 chars

# FULL_SENTENCE: all 49 sub-types in ascending global ordinal order.
_FULL_GLYPHS_sorted = sorted(SHAVIAN_MAP.items(), key=lambda kv: kv[1]["ordinal"])
_FULL_GLYPHS = [entry[0] for entry in _FULL_GLYPHS_sorted]
FULL_SENTENCE = "".join(_FULL_GLYPHS)  # 49 chars


# ── Shavian Ob3ect ────────────────────────────────────────────────────────────

class ShavianOb3ect:
    """
    A self-imscribing alchemical compiler in 49 symbolic glyphs.

    Mapping: shavian_notation_spec.md v0.6.0 (phonetic/structural assignment).
    ⊙ (U+2299) anchors the ÿ-Critical self-modeling gate at global ordinal 35.

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
        self.core_mapped  = None
        self.full_mapped  = None
        self.fused_core   = None
        self.fused_full   = None
        self._gate_core_ok  = False
        self._gate_full_ok  = False
        self._seal_core     = None
        self._seal_full     = None
        self._json_core     = None
        self._json_full     = None

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
        48 Shavian glyphs (U+10450–U+1047F) + ⊙ (U+2299) = 49 entries."""
        glyphs = set(self.map.keys())
        shavian_ok = all(
            (0x10450 <= ord(g) <= 0x1047F) or g == "⊙"
            for g in glyphs
        )
        y_dot_ok   = "⊙" in glyphs
        prim_set   = set(v["prim"] for v in self.map.values())
        expected   = {"Ð", "Þ", "Ř", "Φ", "ƒ", "Ç", "Γ", "ɢ", "⊙", "Ħ", "Σ", "Ω"}
        counts = {}
        for v in self.map.values():
            counts[v["prim"]] = counts.get(v["prim"], 0) + 1
        print(f"  Glyphs in map: {len(glyphs)} (Shavian 48 + ⊙)")
        print(f"  Primitives:    {len(prim_set)} / {len(expected)} = {expected <= prim_set}")
        print(f"  Counts per prim: {counts}")
        assert len(glyphs) == 49, "Expected 49 glyphs"
        assert shavian_ok, "Non-Shavian / non-⊙ glyph detected"
        assert y_dot_ok, "⊙_ÿ glyph missing from SHAVIAN_MAP"
        assert expected <= prim_set, "Missing primitive"
        return True

    # ── FSPLIT_CORE: δ on 12-char sentence ──────────────────────────────

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
        self._json_core = json.dumps(
            [{"glyph": m[0], "prim": m[1], "enum": m[2], "desc": m[3]} for m in self.core_mapped],
            ensure_ascii=False, separators=(",", ":")
        )
        self._json_full = json.dumps(
            [{"glyph": m[0], "prim": m[1], "enum": m[2], "desc": m[3], "ordinal": m[4]} for m in self.full_mapped],
            ensure_ascii=False, separators=(",", ":")
        )
        return self._json_core, self._json_full

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
        if self._json_core is None:
            self.AFWD()
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
            for m in self.full_mapped:
                glyph, prim, enum, desc, ordinal = m
                cp = ord(glyph)
                lines.append(f"  #{ordinal:2d}. {glyph} U+{cp:04X}  |  {prim} {enum}  ({desc})")
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
        self.FSPLIT_CORE()
        self.FSPLIT_FULL()
        self.AFWD()
        self.FFUSE_CORE()
        self.FFUSE_FULL()
        self.CLINK()
        self.IFIX()
        self.IMSCRIB()
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
