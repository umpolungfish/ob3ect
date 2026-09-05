#!/usr/bin/env python3
"""Terminal logical-circuit diagram for an ob3ect word.

Renders the port-level wire graph of a glyph word as ASCII, with the edge
weights (Belnap register deltas) made explicit, the same weights the SVG
diagram carries. Give it a glyph word or the path to an ob3ect JSON.

  circuit_ascii.py "⊢∈≻⊤≺⊥∋⋈⊞⊡⊣"
  circuit_ascii.py digital/baryon_asymmetry/baryon_asymmetry_ob3ect.json
"""
import json
import sys
from pathlib import Path

IMSCRIB = Path(__file__).resolve().parent.parent / "IMSCRIBr"
if str(IMSCRIB) not in sys.path:
    sys.path.insert(0, str(IMSCRIB))

from tokens import Token
from wiring import imscr_wiring
from symbolic_diagram import render_wiring_ascii

# Canonical glyph -> Token. IFIX is written ⊡ in ob3ect words (◻ in some fonts).
GLYPH = {
    "⊢": Token.VINIT, "⊣": Token.TANCH, "≻": Token.AFWD, "≺": Token.AREV,
    "⋈": Token.CLINK, "⊙": Token.IMSCRIB, "∈": Token.FSPLIT, "∋": Token.FFUSE,
    "⊤": Token.EVALT, "⊥": Token.EVALF, "⊞": Token.ENGAGR, "⊡": Token.IFIX,
    "◻": Token.IFIX,
}


def parse_word(word: str):
    toks = []
    for ch in word:
        if ch.isspace():
            continue
        t = GLYPH.get(ch)
        if t is None:
            raise ValueError(f"not one of the twelve marks: {ch!r}")
        toks.append(t)
    return toks


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    arg = sys.argv[1]
    name = ""
    p = Path(arg)
    if p.exists() and p.suffix == ".json":
        d = json.loads(p.read_text())
        word = d.get("glyph_word") or d.get("word") or ""
        name = d.get("name", p.stem.replace("_ob3ect", ""))
        if not word:
            print(f"{arg}: no glyph_word field")
            return 1
    else:
        word = arg
    toks = parse_word(word)
    graph = imscr_wiring(toks)
    print(render_wiring_ascii(graph, name))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
