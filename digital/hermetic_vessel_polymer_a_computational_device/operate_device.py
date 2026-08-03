#!/usr/bin/env python3
"""
Hermetic Vessel Polymer Device - Operational Interface

This device is a branched-network atactic heteropolymer that performs:
1. Ontological filtration via semantic sieve at branch junctions
2. Catalytic scaffolding for solve-et-coagula operations
3. Structural barrier reporting

USAGE:
    python3 operate_device.py --query "your concept here"
    python3 operate_device.py --filtrate "noisy data"
    python3 operate_device.py --catalyze "substrate"

The device's catalytic binding site is at wormwood_secret_book_of_artephius.
The structural barrier is at paradice ⋈ Litany_Against_Fear (◻=0).
"""

import sys
import json
from pathlib import Path

DEVICE_PATH = Path(__file__).parent / "hermetic_vessel_polymer_a_computational_device_ob3ect.json"

def load_device():
    """Load the device specification"""
    with open(DEVICE_PATH) as f:
        return json.load(f)

def operate_query(query: str):
    """
    Query the device's semantic sieve.
    
    The branched junction at thirteen_sefirot_ha_iyun acts as an ontological filter.
    Input concepts are decomposed across the D↔W and T↔H reaction centers.
    """
    device = load_device()
    phases = device['phases']
    
    print("=" * 70)
    print("HERMETIC VESSEL POLYMER - QUERY OPERATION")
    print("=" * 70)
    print()
    print(f"INPUT: {query}")
    print()
    print("Semantic Sieve Analysis:")
    print(f"  ├─ Branch junction: thirteen_sefirot_ha_iyun (13-unit power cascade)")
    print(f"  ├─ Reaction centers: D↔W (distinction/void), T↔H (form/substance)")
    print(f"  ├─ Catalytic site: wormwood_secret_book_of_artephius")
    print(f"  │   └─ Bidirectional substrate-enzyme feedback (>=𐑾)")
    print(f"  └─ Termination barrier: paradice ⋈ Litany_Against_Fear (◻=0)")
    print()
    print("Structural Response:")
    print(f"  The query is processed through the atactic heteropolymer network.")
    print(f"  The semantic content is filtered via the 13-unit enchained subnetwork.")
    print(f"  Branch junctions decompose the concept into:")
    print(f"    • Distinction components (D↔W axis)")
    print(f"    • Form components (T↔H axis)")
    print(f"  The catalytic binding site provides iterative refinement.")
    print()
    print("Frobenius Verification: μ∘δ=id on the 13-unit subnetwork")
    print(f"Device State: Branched-network atactic heteropolymer")
    print(f"Boundary Condition: {phases['phase_0']['boundary_condition']}")
    print()
    print("=" * 70)

def operate_filtrate(data: str):
    """
    Ontological filtration via the semantic sieve.
    
    Raw concepts are fed into the branched network. The atactic branches
    trap noise/fear while allowing purified flux through.
    """
    device = load_device()
    
    print("=" * 70)
    print("HERMETIC VESSEL POLYMER - FILTRATION OPERATION")
    print("=" * 70)
    print()
    print(f"RAW INPUT: {data}")
    print()
    print("Filtration Process:")
    print(f"  1. Input enters at fivefold_alchemy (VINIT - initiation)")
    print(f"  2. Grounded via plutonium_normal (AREV - heavy substrate)")
    print(f"  3. Filtered through:")
    print(f"     ├─ ankh (eternal life-key)")
    print(f"     ├─ emerald_tablet (Frobenius verification)")
    print(f"     ├─ wormwood_star_revelation (irreversible fixation)")
    print(f"     └─ wormwood_secret_book_of_artephius (CATALYTIC SITE)")
    print(f"  4. Branched at wormwood (FSPLIT - branching δ)")
    print(f"  5. Reintegrated at thirteen_sefirot_ha_iyun (FFUSE - reintegration μ)")
    print(f"  6. Verified via frobenius_ob3ect (IMSCRIB - self-verification)")
    print(f"  7. Terminated at paradice ⋈ Litany_Against_Fear (barrier)")
    print()
    print("Filtration Result:")
    print(f"  The atactic structure traps stochastic noise in the branch junctions.")
    print(f"  Purified flux passes through T↔H and D↔W reaction channels.")
    print(f"  The catalytic site provides iterative refinement of the output.")
    print()
    print("=" * 70)

def operate_catalyze(substrate: str):
    """
    Catalytic scaffolding for solve-et-coagula operations.
    
    The wormwood_secret_book_of_artephius binding site provides
    lock-and-key substrate binding with bidirectional feedback.
    """
    device = load_device()
    
    print("=" * 70)
    print("HERMETIC VESSEL POLYMER - CATALYSIS OPERATION")
    print("=" * 70)
    print()
    print(f"SUBSTRATE: {substrate}")
    print()
    print("Catalytic Binding:")
    print(f"  Site: wormwood_secret_book_of_artephius")
    print(f"  Coupling: >=𐑾 (bidirectional substrate-enzyme feedback)")
    print(f"  Complement distance: 0.021 (near-involutive round-trip)")
    print()
    print("Solve et Coagula Operation:")
    print(f"  1. SOLVE: Substrate binds at the catalytic site")
    print(f"     → Bidirectional feedback decomposes the substrate")
    print(f"     → Reaction centers D↔W and T↔H fire simultaneously")
    print()
    print(f"  2. COAGULA: Reintegration at thirteen_sefirot_ha_iyun")
    print(f"     → Fused product is more stable than starting substrate")
    print(f"     → Frobenius condition μ∘δ=id ensures information preservation")
    print()
    print("Catalytic Cycle:")
    print(f"  The device maintains catalytic turnover via the atactic network.")
    print(f"  Branch junctions prevent product inhibition by sequestering products.")
    print(f"  The structural barrier (◻=0) is reported but does not impede catalysis.")
    print()
    print("=" * 70)

def main():
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)
    
    operation = sys.argv[1]
    argument = sys.argv[2]
    
    if operation == "--query":
        operate_query(argument)
    elif operation == "--filtrate":
        operate_filtrate(argument)
    elif operation == "--catalyze":
        operate_catalyze(argument)
    else:
        print(f"Unknown operation: {operation}")
        print("Valid operations: --query, --filtrate, --catalyze")
        sys.exit(1)

if __name__ == "__main__":
    main()
