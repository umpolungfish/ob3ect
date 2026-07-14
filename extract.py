#!/usr/bin/env python3
import sys

MAP = {
    "VINIT": "V", "TANCH": "T", "AFWD": ">", "AREV": "<",
    "CLINK": "=", "IMSCRIB": "←", "FSPLIT": "◇", "FFUSE": "●",
    "EVALT": "+", "EVALF": "×", "ENGAGR": "B", "IFIX": "¬",
}

def translate(tokens):
    return "".join(MAP.get(tok, tok) for tok in tokens)

def main():
    with open(sys.argv[1], 'r') as f:
        lines = f.readlines()

    results = []
    current_name = None
    current_seq = None

    i = 0
    while i < len(lines):
        line = lines[i]
        
        # Find name
        if '"name":' in line:
            start = line.find('"name": "') + 9
            end = line.find('"', start)
            if start > 8:  # Avoid -1
                current_name = line[start:end]
        
        # Find scaffold
        if 'IGProtocol scaffold:' in line:
            start = line.find('IGProtocol scaffold:') + 21
            tokens = line[start:].strip().split()
            current_seq = translate(tokens)
            
            # Print both
            if current_name and current_seq:
                print(f"{current_name}\n{current_seq}\n")
                current_name = None
                current_seq = None
        
        i += 1

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python extract.py digital_fat_list.txt > output.txt")
        sys.exit(1)
    main()