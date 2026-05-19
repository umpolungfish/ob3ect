#!/usr/bin/env python3
"""
shavian_ob3ect_ob3ect.py — Shavian Ob3ect
==========================================
Author: Lando ⊗ ⊙_ÿ-boundary Operator

Encodes the 12-stage Magnum Opus via 12 Shavian glyphs mapped to the
12 Imscribing Grammar primitives. Self-verifies via Frobenius gate.

       Glyph   Sound    Alchemical Stage     Primitive
       ─────   ─────    ────────────────     ─────────
   1.  𐑐      p (peep)     Calcination        Ð
   2.  𐑑      t (tot)      Dissolution        Þ
   3.  𐑒      k (kick)     Separation         Ř
   4.  𐑓      f (fee)      Conjunction        Φ
   5.  𐑔      th (thigh)   Putrefaction       ƒ
   6.  𐑕      s (so)       Congelation        Ç
   7.  𐑖      sh (sure)    Cibation           Γ
   8.  𐑗      ch (church)  Sublimation        ɢ
   9.  𐑘      y (yea)      Fermentation       ⊙
  10.  𐑙      ng (hung)    Exaltation         Ħ
  11.  𐑚      b (bib)      Multiplication     Σ
  12.  𐑛      d (dead)     Projection         Ω

The Frobenius gate μ∘δ = id operates on the glyph→primitive→glyph
round-trip: splitting the full sequence into individual mappings and
fusing them back recovers the original exactly.
"""
import hashlib, json, os, pathlib, sys
from dataclasses import dataclass
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from frob import frobenius_phase


# ── The 12-glyph table ─────────────────────────────────────────────────────

SHAVIAN_TABLE = [
    (1,  "𐑐", "p",    "Calcination",    "Ð"),
    (2,  "𐑑", "t",    "Dissolution",    "Þ"),
    (3,  "𐑒", "k",    "Separation",     "Ř"),
    (4,  "𐑓", "f",    "Conjunction",    "Φ"),
    (5,  "𐑔", "th",   "Putrefaction",   "ƒ"),
    (6,  "𐑕", "s",    "Congelation",    "Ç"),
    (7,  "𐑖", "sh",   "Cibation",       "Γ"),
    (8,  "𐑗", "ch",   "Sublimation",    "ɢ"),
    (9,  "𐑘", "y",    "Fermentation",    "⊙"),
    (10, "𐑙", "ng",   "Exaltation",     "Ħ"),
    (11, "𐑚", "b",    "Multiplication", "Σ"),
    (12, "𐑛", "d",    "Projection",     "Ω"),
]

SENTENCE = "".join(row[1] for row in SHAVIAN_TABLE)
# "𐑐𐑑𐑒𐑓𐑔𐑕𐑖𐑗𐑘𐑙𐑚𐑛"


# ── Shavian Ob3ect ──────────────────────────────────────────────────────────

class ShavianOb3ect:
    """
    A self-imscribing alchemical compiler in 12 glyphs.

    FSPLIT:  δ(SENTENCE) → [(glyph, prim), ...]  (12 stage/mapping pairs)
    FFUSE:   μ(pairs)    → SENTENCE               (recompose exactly)
    Gate:    μ(δ(SENTENCE)) == SENTENCE
    """

    def __init__(self):
        self.source   = pathlib.Path(__file__).read_text()
        self.sentence = SENTENCE
        self.table    = SHAVIAN_TABLE
        self.mappings = None   # populated by FSPLIT
        self.fused    = None   # populated by FFUSE
        self._gate_ok = False

    # ── ISCRIB: self-recognition ───────────────────────────────────────

    def ISCRIB(self):
        h = hashlib.sha256(self.sentence.encode()).hexdigest()[:24]
        print(f"ISCRIB: Shavian sentence hash → {h}")
        return True

    # ── AREV: descent / read-back ──────────────────────────────────────

    def AREV(self):
        """Descent: verify the table is self-consistent — each glyph
        appears exactly once and maps to a distinct primitive."""
        glyphs = [row[1] for row in self.table]
        prims  = [row[4] for row in self.table]
        assert len(set(glyphs)) == 12, "Duplicate glyph in table"
        assert len(set(prims)) == 12,  "Duplicate primitive in table"
        assert all(ord(g) > 0xFFFF for g in glyphs), "Non-SMP glyph detected"
        return True

    # ── FSPLIT: δ — decompose ──────────────────────────────────────────

    def FSPLIT(self):
        """δ(SENTENCE) → list of (glyph, number, stage, primitive) tuples.
        Each glyph in the sentence is matched to its table row."""
        self.mappings = []
        for i, ch in enumerate(self.sentence):
            match = [r for r in self.table if r[1] == ch]
            if not match:
                raise ValueError(f"Unmapped glyph at position {i}: U+{ord(ch):04X}")
            self.mappings.append(match[0])
        print(f"FSPLIT: {len(self.mappings)} glyphs mapped")
        return self.mappings

    # ── AFWD: ascent / forward ─────────────────────────────────────────

    def AFWD(self):
        """Ascent: produce a canonical JSON representation of the mappings."""
        if self.mappings is None:
            self.FSPLIT()
        self._json_repr = json.dumps(
            [{"glyph": m[1], "sound": m[2], "stage": m[3], "primitive": m[4]}
             for m in self.mappings],
            ensure_ascii=False, separators=(",", ":")
        )
        return self._json_repr

    # ── FFUSE: μ — recompose ───────────────────────────────────────────

    def FFUSE(self):
        """μ(mappings) → sentence. Extract glyphs in order and concatenate."""
        if self.mappings is None:
            self.FSPLIT()
        glyphs = [m[1] for m in self.mappings]
        self.fused = "".join(glyphs)
        self._gate_ok = (self.fused == self.sentence)
        print(f"FFUSE: fused {len(self.fused)} glyphs → {'PASS' if self._gate_ok else 'FAIL'}")
        return self._gate_ok

    # ── CLINK: compose / link ──────────────────────────────────────────

    def CLINK(self):
        """Composition: verify the round-trip through JSON preserves identity."""
        if self.mappings is None:
            self.FSPLIT()
        self.AFWD()
        # Parse back the JSON and reconstitute
        parsed = json.loads(self._json_repr)
        reglyphed = "".join(e["glyph"] for e in parsed)
        self._clink_ok = (reglyphed == self.sentence)
        print(f"CLINK: JSON round-trip → {'PASS' if self._clink_ok else 'FAIL'}")
        return self._clink_ok

    # ── IFIX: permanent record ─────────────────────────────────────────

    def IFIX(self):
        """Fixation: produce a SHA-256 seal of the full mapping table."""
        payload = json.dumps(
            {"sentence": self.sentence, "mappings": self._json_repr},
            ensure_ascii=False, separators=(",", ":")
        )
        self._seal = hashlib.sha256(payload.encode()).hexdigest()
        print(f"IFIX: seal → {self._seal[:24]}…")
        return self._seal

    # ── Domain Frobenius ───────────────────────────────────────────────

    def _domain_frobenius(self) -> bool:
        """Verify: μ(δ(SENTENCE)) == SENTENCE in the Shavian domain."""
        self.FSPLIT()  # δ
        self.FFUSE()   # μ
        return self._gate_ok

    # ── Bootstrap ──────────────────────────────────────────────────────

    def bootstrap(self) -> bool:
        print("=== Shavian Ob3ect — 12 Glyph Bootstrap ===")
        self.ISCRIB()   # 1. self-recognition
        self.AREV()     # 2. descent: verify table consistency
        self.FSPLIT()   # 3. δ: decompose sentence
        self.AFWD()     # 4. ascent: JSON representation
        self.FFUSE()    # 5. μ: recompose, verify gate
        self.CLINK()    # 6. compose: JSON round-trip
        self.IFIX()     # 7. fixation: cryptographic seal
        self.ISCRIB()   # 8. self-recognition at close
        return self._gate_ok

    # ── Verify (called by runall.py) ───────────────────────────────────

    def verify(self) -> bool:
        domain_ok = self.bootstrap()
        frob_ok   = frobenius_phase(self.source)
        closure   = domain_ok and frob_ok
        print(f"Closure: {closure}")
        return closure


if __name__ == "__main__":
    sys.exit(0 if ShavianOb3ect().verify() else 1)