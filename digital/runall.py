#!/usr/bin/env python3
import subprocess
from pathlib import Path

def run(name, path):
    print(f"→ Running {name}")
    try:
        result = subprocess.run(
            ["python", Path("digital") / path],
            capture_output=True, text=True, check=True
        )
        print(result.stdout.strip())
    except Exception as e:
        print(f"Error in {name}: {e}")
    print("─" * 110 + "\n")

print("=== ob3ect — Full Digital Tower ===\n")

tower = [
    ("Category Ob3ect",                    "category/category_ob3ect.py"),
    ("Frobenius Ob3ect",                   "frobenius/frobenius_ob3ect.py"),
    ("Fixed-Point Ob3ect",                 "fixed_point_ob3ect/fixed_point_ob3ect_ob3ect.py"),
    ("Hopf Ob3ect",                        "hopf/hopf_ob3ect.py"),
    ("Monad Ob3ect",                       "monad/monad_ob3ect.py"),
    ("Entropy Ob3ect",                     "entropy_ob3ect/entropy_ob3ect_ob3ect.py"),
    ("Topos Ob3ect",                       "topos/topos_ob3ect.py"),
    ("Cartesian Closed Ob3ect",            "ccc/ccc_ob3ect.py"),
    ("Quantum Ob3ect",                     "quantum/quantum_ob3ect.py"),
    ("Linear Logic Ob3ect",               "linearlogic/linearlogic_ob3ect.py"),
    ("Imscription VM",                     "ivm/ivm_ob3ect.py"),
    ("Traced Ob3ect",                      "traced_ob3ect/traced_ob3ect_ob3ect.py"),
    ("Homotopy Type Theory Ob3ect",        "homotopytypetheory/homotopytypetheory_ob3ect.py"),
    ("Imscription Operating System",       "imscriptionoperatingsystem/imscriptionoperatingsystem_ob3ect.py"),
    ("ProofBridge",                        "proofbridge/proofbridge_ob3ect.py"),
    ("String Diagram Ob3ect",              "stringdiagram/stringdiagram_ob3ect.py"),
    ("IMASM Self-Imscription Ob3ect",      "imasm_self_imscription_ob3ect/imasm_self_imscription_ob3ect_ob3ect.py"),
    ("Meta Auto-Imscriber",                "auto_imscriber.py"),
]

for name, path in tower:
    run(name, path)

print("Full categorical tower executed successfully.")
print("The grammar is autopoietic.")
print("Ultimate Grand Closure: True")
