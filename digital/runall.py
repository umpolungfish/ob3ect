#!/usr/bin/env python3
import subprocess, sys
from pathlib import Path

DIGITAL = Path(__file__).parent.resolve()

def run(name, rel_path):
    print(f"→ {name}")
    script = DIGITAL / rel_path
    try:
        result = subprocess.run(
            [sys.executable, script],
            capture_output=True, text=True, timeout=30,
            cwd=DIGITAL
        )
        print(result.stdout.strip())
        if result.returncode != 0:
            print(f"  STDERR: {result.stderr.strip()[:200]}")
    except Exception as e:
        print(f"  ERROR: {e}")
    print("─" * 110 + "\n")

print("=== ob3ect — Full Digital Tower (29 layers) ===\n")

tower = [
    ("Category Ob3ect",               "category/category_ob3ect.py"),
    ("Frobenius Ob3ect",              "frobenius/frobenius_ob3ect.py"),
    ("Fixed-Point Ob3ect",            "fixed_point_ob3ect/fixed_point_ob3ect_ob3ect.py"),
    ("Hopf Ob3ect",                   "hopf/hopf_ob3ect.py"),
    ("Monad Ob3ect",                  "monad/monad_ob3ect.py"),
    ("Entropy Ob3ect",                "entropy_ob3ect/entropy_ob3ect_ob3ect.py"),
    ("Topos Ob3ect",                  "topos/topos_ob3ect.py"),
    ("Cartesian Closed Ob3ect",       "ccc/ccc_ob3ect.py"),
    ("Quantum Ob3ect",                "quantum/quantum_ob3ect.py"),
    ("Linear Logic Ob3ect",           "linearlogic/linearlogic_ob3ect.py"),
    ("Imscription VM",                "ivm/ivm_ob3ect.py"),
    ("Traced Ob3ect",                 "traced_ob3ect/traced_ob3ect_ob3ect.py"),
    ("Homotopy Type Theory Ob3ect",   "homotopytypetheory/homotopytypetheory_ob3ect.py"),
    ("Imscription Operating System",  "imscriptionoperatingsystem/imscriptionoperatingsystem_ob3ect.py"),
    ("ProofBridge",                   "proofbridge/proofbridge_ob3ect.py"),
    ("String Diagram Ob3ect",         "stringdiagram/stringdiagram_ob3ect.py"),
    ("IMASM Self-Imscription Ob3ect", "imasm_self_imscription_ob3ect/imasm_self_imscription_ob3ect_ob3ect.py"),
    ("Meta Auto-Imscriber",           "auto_imscriber.py"),
    ("Shavian Ob3ect",              "shavian_ob3ect/shavian_ob3ect_ob3ect.py"),
    ("Yoneda Ob3ect",                 "yoneda/yoneda_ob3ect.py"),
    ("Operad Ob3ect",                 "operad/operad_ob3ect.py"),
    ("Sheaf Ob3ect",                  "sheaf/sheaf_ob3ect.py"),
    ("Dagger Compact Ob3ect",         "daggercompact/daggercompact_ob3ect.py"),
    ("Galois Connection Ob3ect",      "galois/galois_ob3ect.py"),
    ("Stone Duality Ob3ect",          "stoneduality/stoneduality_ob3ect.py"),
    ("Presheaf Ob3ect",               "presheaf/presheaf_ob3ect.py"),
    ("Kan Extension Ob3ect",          "kanextension/kanextension_ob3ect.py"),
    ("Adjoint Functors Ob3ect",       "adjoint/adjoint_ob3ect.py"),
    ("Initial/Terminal Ob3ect",       "initialterminal/initialterminal_ob3ect.py"),
]

for name, path in tower:
    run(name, path)

print("Full categorical tower executed.")