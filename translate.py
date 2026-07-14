import re
import sys

# Single-glyph mapping (from IMASM Quick Reference)
MAP = {
    "VINIT": "V",
    "TANCH": "T",
    "AFWD": ">",
    "AREV": "<",
    "CLINK": "=",
    "IMSCRIB": "←",
    "FSPLIT": "◇",
    "FFUSE": "●",
    "EVALT": "+",
    "EVALF": "×",
    "ENGAGR": "B",
    "IFIX": "¬",
}

def translate_scaffold(line):
    # Extract the scaffold part after "IGProtocol scaffold:"
    match = re.search(r"-- IGProtocol scaffold:\s*(.+)", line)
    if not match:
        return None
    tokens = match.group(1).strip().split()
    return "".join(MAP.get(tok, tok) for tok in tokens)

# Read from stdin or file
for line in sys.stdin:
    result = translate_scaffold(line)
    if result:
        print(result)