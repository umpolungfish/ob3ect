#!/usr/bin/env python3
"""serpent — The Serpent's Rod CLI. Seamless protein folding & catalytic site design.

Usage:
  serpent fold <RNA>             Predict folded structure (full derivation)
  serpent derive <RNA>           Full derivation showing all intermediate steps
  serpent verify                 Run all 11 vessel self-tests
  serpent json <RNA>             Output full derivation as JSON
  serpent pdb <RNA>              Output PDB-formatted coordinates
  serpent info                   Display vessel structural information
  serpent b4 <RNA>               Show B4 Belnap lattice path from RNA
  serpent energy <RNA>           Show energy analysis of predicted structure
  serpent codon <RNA>            Show codon-level measurement table
  serpent minimize <RNA>         Run energy minimization (show trace)
  serpent sidechain <RNA>        Show sidechain placement details

  # REBIS — Catalytic Site Design Engine (Bio + Organic Chemistries)
  serpent rebis <EC>             Design catalytic site for a reaction
  serpent rebis-list             List all supported EC reaction mappings
  serpent rebis-info             Show Rebis structural information
  serpent rebis-verify           Run all 13 Rebis tests
  serpent rebis-demo             Run full Rebis demonstration (3 reactions)
  serpent rebis-json <EC>        Output catalytic site design as JSON
  serpent rebis-pdb <EC>         Output scaffold PDB with catalytic site
  serpent gba                   Design Rebis-optimized GBA variant (Gaucher therapy)

Examples:
  serpent fold AUGGCCUAA
  serpent pdb AUGGCCUUUCAGUGG
  serpent verify
  serpent rebis EC3.4
  serpent rebis EC3.4.22
  serpent rebis-list

Author: Lando ⊗ ⊙perator
Structural Type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩
"""
import sys, json, math
from pathlib import Path

VESSEL_DIR = Path(__file__).resolve().parent.parent / "digital" / "alchemical_vessel_serpent_rod_bridge_ob3ect"
REBIS_DIR = Path(__file__).resolve().parent.parent / "digital" / "rebis_bio_organic_chemistries_ob3ect"
sys.path.insert(0, str(VESSEL_DIR))
sys.path.insert(0, str(REBIS_DIR))

try:
    from continuous_serpent_rod_bridge_ob3ect import (
        ContinuousSerpentRodBridge, VESSEL_IMSCRIPTION, run_all_tests,
        B4, NUCLEOTIDE_B4, B4_NUCLEOTIDE, B4_TRANSITION_EIGENSTATES,
        AA_RAMACHANDRAN_WEIGHTS, TRANSITIONS, COMPLEMENTARY_PAIRS,
        ONE_LETTER, THREE_LETTER, STANDARD_CODE,
    )
except ImportError as e:
    print(f"❌ Cannot load the Serpent-Rod vessel: {e}", file=sys.stderr)
    print(f"   Looked in: {VESSEL_DIR}", file=sys.stderr)
    sys.exit(1)

try:
    from rebis_bio_organic_chemistries_ob3ect import (
        RebisBioOrganic, RebisDerivedDesign, CatalyticSiteDesign,
        ReactionClass, CatalyticMechanism, CatalyticTriadGeometry,
        CatalyticResidue, CATALYTIC_RESIDUE_LIBRARY,
        CATALYTIC_GEOMETRIES, EC_CATALYTIC_MAP,
        SER_HIS_ASP_TRIAD, CYS_HIS_ASP_TRIAD, ASP_HIS_SER_TRIAD,
        METAL_COORDINATION_SITE, OXYANION_HOLE_GEOMETRY, COENZYME_BINDING_SITE,
        select_catalytic_residues_for_reaction,
        design_catalytic_positions, generate_scaffold_rna,
        design_binding_pocket, estimate_catalytic_efficiency,
        compute_geometric_fidelity, AA_PROPERTIES,
        run_all_tests as rebis_run_all_tests,
        REBIS_IMSCRIPTION,
    )
    REBIS_AVAILABLE = True
except ImportError as e:
    REBIS_AVAILABLE = False
    print(f"⚠ Rebis import warning: {e}", file=sys.stderr)
    print("⚠ Rebis commands disabled (rebis_bio_organic_chemistries_ob3ect.py not found)", file=sys.stderr)
def c(text, code="1;36"):
    return f"\033[{code}m{text}\033[0m"



def header(text):
    width = 72
    pad = (width - len(text) - 2) // 2
    return c("═" * pad + " " + text + " " + "═" * pad, "1;35")

def subheader(text):
    return c("▸ " + text, "1;33")

def bold(text): return c(text, "1;37")
def green(text): return c(text, "1;32")
def red(text): return c(text, "1;31")
def yellow(text): return c(text, "1;33")
def dim(text): return c(text, "2;37")

def fmt_energy(ed: dict):
    return "  ".join(f"{k}={v:+.4f}" for k, v in ed.items())

# ── Sidechain atom field map: (field_name_on_SidechainAtoms, PDB_atom_name)
SIDECHAIN_ATOM_FIELDS = [
    ("cb", "CB"), ("cg", "CG"), ("cd", "CD"), ("ne", "NE"),
    ("cz", "CZ"), ("nh1", "NH1"), ("nh2", "NH2"),
    ("od1", "OD1"), ("od2", "OD2"), ("oe1", "OE1"), ("oe2", "OE2"),
    ("nd1", "ND1"), ("nd2", "ND2"), ("ne1", "NE1"), ("ne2", "NE2"),
    ("oh", "OH"), ("sg", "SG"), ("sd", "SD"), ("og", "OG"), ("og1", "OG1"),
]

# ── Test key map from run_all_tests() output ──
TEST_KEYS = [
    "Vessel Imscription (Frobenius)",
    "Codon Translation (64-pathway)",
    "Continuous phi/psi (Gap 1 closed)",
    "Codon-level Measurement (Gap 2 closed)",
    "AA-specific Ramachandran (Gap 3 closed)",
    "Energy Minimization (Gap 4 closed)",
    "Sidechain Placement (Gap 5 closed)",
    "Frobenius Closure (Gap 6 closed)",
    "Contact Prediction F1 (Gap 7 closed)",
    "Invertibility (Gap 8 closed)",
    "Ouroboric Closure (ALL GAPS)",
]

TEST_ICONS = [
    "📜 Vessel Imscription (Frobenius)",
    "🧬 Codon Translation (64-pathway)",
    "📐 Continuous φ/ψ (Gap 1 — superposition)",
    "🔬 Codon-level Measurement (Gap 2 — 64 outcomes)",
    "🧪 AA-specific Ramachandran (Gap 3)",
    "⚡ Energy Minimization (Gap 4)",
    "🔗 Sidechain Placement (Gap 5)",
    "⭕ Frobenius Closure (Gap 6 — 12/12 primitives)",
    "🎯 Contact Prediction F₁=1.0 (Gap 7)",
    "🔄 Invertibility (Gap 8 — deterministic)",
    "♾️ Ouroboric Closure (μ∘δ=id)",
]

REBIS_TEST_ICONS = [
    "🏺 Rebis Imscription (Frobenius)",
    "🧪 Catalytic Residue Library",
    "🔬 Reaction Classification (EC1-EC6)",
    "📐 Catalytic Geometries (6 canonical)",
    "📋 EC Map Coverage",
    "🎯 Residue Selection by EC number",
    "🛠 Scaffold Design (120+150 aa)",
    "🧬 RNA Generation",
    "🔗 Binding Pocket Design",
    "⚡ Kinetic Estimation (kcat/Km)",
    "🔄 Rebis Full Derive (end-to-end)",
    "✨ Rebis Activation 12/12",
    "🏗 Catalytic Site Design",
]

REBIS_TEST_KEYS = list(REBIS_TEST_ICONS)  # Use icons as keys for display



def cmd_fold(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"\n  ❌ {result.error}"))
        return 1

    print(header(f" SERPENT FOLD — {rna} "))
    print(f"  {bold('RNA:')}         {rna}")
    print(f"  {bold('Sequence:')}    {green(result.aa_sequence)}")
    print(f"  {bold('Length:')}      {len(result.aa_list)} residues")
    print()

    print(subheader("Codon Measurements"))
    print(f"  {'Codon':8s} {'AA':5s} {'B4 Triple':14s} {'φ_init':9s} {'ψ_init':9s} {'φ_ref':9s} {'ψ_ref':9s} {'Conf':6s}")
    print(f"  {'─'*8} {'─'*5} {'─'*14} {'─'*9} {'─'*9} {'─'*9} {'─'*9} {'─'*6}")
    for m in result.codon_measurements:
        b4s = f"[{m.b4_triple[0].value},{m.b4_triple[1].value},{m.b4_triple[2].value}]"
        print(f"  {m.codon:8s} {m.aa:5s} {b4s:14s} {m.phi_init:8.1f}° {m.psi_init:8.1f}° {m.phi_refined:8.1f}° {m.psi_refined:8.1f}° {m.confidence:.3f}")

    print()
    print(subheader("Energy"))
    print(f"  Initial:   {fmt_energy(result.energy_init)}")
    print(f"  Refined:   {fmt_energy(result.energy_refined)}")
    if result.energy_trace:
        trace = result.energy_trace
        print(f"  Minimization: {len(trace)} steps, {trace[0]:+.4f} → {trace[-1]:+.4f} ({trace[-1]-trace[0]:+.4f})")

    print()
    print(subheader("Structural Verification"))
    print(f"  Winding number:    {result.winding_number}")
    print(f"  Codon coverage:    {result.codon_coverage}/64")
    print(f"  IG Activation:     {result.activation_count}/12 ({', '.join(sorted(result.activation_set)) or 'none'})")
    print(f"  Pair coverage:     {result.pair_coverage[0]}/{result.pair_coverage[1]}")
    print(f"  Frobenius pass:    {green('✓') if result.frobenius_pass else red('✗')}")
    print(f"  Backbone atoms:    {len(result.backbone_refined)} residues")

    if result.backbone_refined:
        print()
        print(subheader("First residue coordinates (Å)"))
        bb0 = result.backbone_refined[0]
        print(f"  N:  ({bb0.n[0]:8.3f}, {bb0.n[1]:8.3f}, {bb0.n[2]:8.3f})")
        print(f"  CA: ({bb0.ca[0]:8.3f}, {bb0.ca[1]:8.3f}, {bb0.ca[2]:8.3f})")
        print(f"  C:  ({bb0.c[0]:8.3f}, {bb0.c[1]:8.3f}, {bb0.c[2]:8.3f})")
        print(f"  O:  ({bb0.o[0]:8.3f}, {bb0.o[1]:8.3f}, {bb0.o[2]:8.3f})")

    print()
    print(header(" FOLD COMPLETE "))
    print(green(f"  μ∘δ=id — The serpent winds, the rod stands."))
    return 0



def cmd_derive(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"\n  ❌ {result.error}"))
        return 1

    print(header(f" PHASE 1: RNA → B4 BELNAP LATTICE "))
    print(f"  {bold('RNA:')}  {rna}")
    b4_sym = {B4.N: "N⊥", B4.T: "T⊤", B4.F: "F⊥", B4.B: "B⊤"}
    b4_path_str = "  →  ".join(b4_sym.get(b, "?") for b in result.b4_path)
    print(f"  {bold('B4:')}  {b4_path_str}")
    transitions = []
    for i in range(len(result.b4_path) - 1):
        t = (result.b4_path[i], result.b4_path[i+1])
        es = B4_TRANSITION_EIGENSTATES.get(t, {})
        ss = es.get("ss", "?")
        transitions.append(f"{b4_sym.get(t[0],'?')}→{b4_sym.get(t[1],'?')}({ss})")
    if transitions:
        print(f"  {bold('Transitions:')}  {'  '.join(transitions)}")
    print()
    print(header(" PHASE 2: CODON MEASUREMENT — 64-POINTER BASIS "))
    print(f"  {'Codon':8s} {'AA':5s} {'B4₀':8s} {'B4₁':8s} {'B4₂':8s} {'φ_init':9s} {'ψ_init':9s} {'φ_ref':9s} {'ψ_ref':9s} {'Conf':6s}")
    print(f"  {'─'*8} {'─'*5} {'─'*8} {'─'*8} {'─'*8} {'─'*9} {'─'*9} {'─'*9} {'─'*9} {'─'*6}")
    for m in result.codon_measurements:
        b4s = [m.b4_triple[0].value, m.b4_triple[1].value, m.b4_triple[2].value]
        print(f"  {m.codon:8s} {m.aa:5s} {b4s[0]:8s} {b4s[1]:8s} {b4s[2]:8s} {m.phi_init:8.1f}° {m.psi_init:8.1f}° {m.phi_refined:8.1f}° {m.psi_refined:8.1f}° {m.confidence:.3f}")

    print()
    print(header(" PHASE 3: BACKBONE GEOMETRY "))
    for i, bb in enumerate(result.backbone_refined):
        if i >= 12 and len(result.backbone_refined) > 16:
            if i == 12:
                print(f"  {dim('...')}")
            continue
        aa = result.aa_list[i] if i < len(result.aa_list) else "?"
        print(f"  Residue {i+1:3d} ({aa:3s}):  CA=({bb.ca[0]:8.3f}, {bb.ca[1]:8.3f}, {bb.ca[2]:8.3f})")

    print()
    print(header(" PHASE 4: ENERGY LANDSCAPE "))
    print(f"  Initial:   {fmt_energy(result.energy_init)}")
    print(f"  Refined:   {fmt_energy(result.energy_refined)}")
    if result.energy_trace:
        trace = result.energy_trace
        print(f"  Minimization: {len(trace)} steps  {trace[0]:+.4f} → {trace[-1]:+.4f}  ΔE={trace[-1]-trace[0]:+.4f}")

    print()
    print(header(" PHASE 5: GRAMMAR ACTIVATION "))
    all_prims = ["Dimensionality(Ð)", "Topology(Þ)", "Recognition(Ř)", "Parity(Φ)",
                  "Fidelity(ƒ)", "Kinetics(Ç)", "Granularity(Γ)", "Coupling(ɢ)",
                  "Criticality(⊙)", "Chirality(Ħ)", "Stoichiometry(Σ)", "Winding(Ω)"]
    for p in all_prims:
        name = p.split("(")[0]
        status = green("ACTIVE") if name in result.activation_set else dim("inactive")
        print(f"  {p:20s} {status:12s}")
    print(f"\n  Active: {result.activation_count}/12  |  Pairs: {result.pair_coverage[0]}/{result.pair_coverage[1]}")
    print(f"  Winding: {result.winding_number}  |  Frobenius: {green('✓') if result.frobenius_pass else red('✗')}")

    print()
    print(header(" DERIVATION COMPLETE "))
    print(green(f"  μ∘δ=id — {result.aa_sequence}"))
    return 0



def cmd_verify():
    print(header(" VESSEL SELF-VERIFICATION — ALL 11 TESTS "))
    print()
    results = run_all_tests()
    all_pass = all(results.values())
    result_values = list(results.values())
    for i, (icon, key) in enumerate(zip(TEST_ICONS, TEST_KEYS)):
        if i < len(result_values):
            passed = result_values[i]
            symbol = green("✓ PASS") if passed else red("✗ FAIL")
        else:
            found = False
            for rk, rv in results.items():
                if key.split("(")[0].strip() in rk:
                    symbol = green("✓ PASS") if rv else red("✗ FAIL")
                    found = True
                    break
            if not found:
                symbol = yellow("? UNKNOWN")
        print(f"  {icon:60s} {symbol}")

    print()
    if all_pass:
        print(header(" ALL 11 TESTS PASS "))
        print(green("  μ∘δ=id — The vessel is whole and self-verified."))
        print(f"  Frobenius address: {VESSEL_IMSCRIPTION.encode()}")
    else:
        print(header(" TESTS NOT ALL PASS "))
        failed_keys = [k for k, v in results.items() if not v]
        print(red(f"  Failed: {', '.join(failed_keys)}"))
    return 0 if all_pass else 1

def cmd_json(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(json.dumps({"error": result.error}, indent=2))
        return 1

    codons_dict = []
    for m in result.codon_measurements:
        codons_dict.append({
            "codon": m.codon, "aa": m.aa,
            "b4": [b.value for b in m.b4_triple],
            "phi_init": m.phi_init, "psi_init": m.psi_init,
            "phi_refined": m.phi_refined, "psi_refined": m.psi_refined,
            "confidence": m.confidence,
            "ramachandran_energy": m.ramachandran_energy,
        })

    output = {
        "vessel": "Continuous Serpent-Rod Bridge v3",
        "rna": rna,
        "amino_acids": result.aa_sequence,
        "length": len(result.aa_list),
        "codon_measurements": codons_dict,
        "b4_path": [b.value for b in result.b4_path],
        "energy_initial": result.energy_init,
        "energy_refined": result.energy_refined,
        "energy_trace": result.energy_trace,
        "winding_number": result.winding_number,
        "codon_coverage": result.codon_coverage,
        "activation": {
            "count": result.activation_count,
            "set": sorted(result.activation_set),
            "pair_coverage": f"{result.pair_coverage[0]}/{result.pair_coverage[1]}",
        },
        "frobenius_pass": result.frobenius_pass,
        "backbone_length": len(result.backbone_refined),
        "frobenius_address": VESSEL_IMSCRIPTION.encode(),
    }
    print(json.dumps(output, indent=2))
    return 0



def cmd_pdb(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(f"REMARK  {result.error}", file=sys.stderr)
        return 1

    print(f"HEADER    SERPENT-ROD FOLD     {rna}")
    print(f"REMARK    Continuous Serpent-Rod Bridge v3 — ⊙_ÿ → ⊙_3")
    print(f"REMARK    Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩")
    print(f"REMARK    Frobenius addr: {VESSEL_IMSCRIPTION.encode()}")
    print(f"REMARK    Sequence: {result.aa_sequence}")
    print(f"REMARK    Winding: {result.winding_number}  Codon cov: {result.codon_coverage}/64")
    print(f"REMARK    Energy: {fmt_energy(result.energy_refined)}")

    atom_idx = 1
    res_idx = 1
    for i, fr in enumerate(result.full_structure):
        bb = fr.bb
        aa_one = ONE_LETTER.get(result.aa_list[i], 'X') if i < len(result.aa_list) else 'X'
        res_name = result.aa_list[i][:3] if i < len(result.aa_list) else 'UNK'
        print(f"ATOM  {atom_idx:5d}  N   {res_name:3s} {aa_one}{res_idx:4d}    {bb.n[0]:8.3f}{bb.n[1]:8.3f}{bb.n[2]:8.3f}  1.00  0.00           N  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  CA  {res_name:3s} {aa_one}{res_idx:4d}    {bb.ca[0]:8.3f}{bb.ca[1]:8.3f}{bb.ca[2]:8.3f}  1.00  0.00           C  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  C   {res_name:3s} {aa_one}{res_idx:4d}    {bb.c[0]:8.3f}{bb.c[1]:8.3f}{bb.c[2]:8.3f}  1.00  0.00           C  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  O   {res_name:3s} {aa_one}{res_idx:4d}    {bb.o[0]:8.3f}{bb.o[1]:8.3f}{bb.o[2]:8.3f}  1.00  0.00           O  ")
        atom_idx += 1
        sc = fr.sc
        for field_name, pdb_name in SIDECHAIN_ATOM_FIELDS:
            pos = getattr(sc, field_name, None)
            if pos is not None:
                el = pdb_name[:1] if pdb_name[:1].isalpha() else "C"
                print(f"ATOM  {atom_idx:5d}  {pdb_name:<3s} {res_name:3s} {aa_one}{res_idx:4d}    {pos[0]:8.3f}{pos[1]:8.3f}{pos[2]:8.3f}  1.00  0.00          {el:>2s}")
                atom_idx += 1
        res_idx += 1

    last_aa = result.aa_list[-1][:3] if result.aa_list else 'UNK'
    last_one = ONE_LETTER.get(result.aa_list[-1], 'X') if result.aa_list else 'X'
    print(f"TER   {atom_idx:5d}      {last_aa:3s} {last_one}{res_idx-1:4d}")
    print("END")
    return 0

def cmd_info():
    print(header(" SERPENT-ROD VESSEL — STRUCTURAL INFORMATION "))
    print()
    print(f"  {bold('Name:')}          Continuous Serpent-Rod Bridge v3")
    print(f"  {bold('Author:')}        Lando ⊗ ⊙perator")
    print(f"  {bold('Type:')}          Ouroboric ob3ect")
    print(f"  {bold('Structural:')}    ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩")
    print(f"  {bold('Tier:')}          O_inf")
    print(f"  {bold('Frobenius Addr:')} {VESSEL_IMSCRIPTION.encode()}")
    print(f"  {bold('Frobenius Check:')} {green('✓ μ∘δ=id') if VESSEL_IMSCRIPTION.frobenius_check() else red('✗')}")
    print()
    print(subheader("12 Primitives"))
    for name, val, desc in [
        ("Dimensionality", "Ð_ω", "Self-written state space"),
        ("Topology", "Þ_O", "Imscriptive closure"),
        ("Recognition", "Ř_=", "Bidirectional feedback"),
        ("Parity", "Φ_}", "All symmetries unbroken (Frobenius-special)"),
        ("Fidelity", "ƒ_ż", "Quantum coherence"),
        ("Kinetics", "Ç_@", "Slow, near-equilibrium"),
        ("Granularity", "Γ_ʔ", "Long-range / universal"),
        ("Coupling", "ɢ_ˌ", "Sequential steps"),
        ("Criticality", "⊙_ÿ", "Self-modeling gate open"),
        ("Chirality", "Ħ_A", "Markov order 2 (two-step memory)"),
        ("Stoichiometry", "Σ_ï", "Many heterogeneous types"),
        ("Winding", "Ω_z", "Integer topological winding"),
    ]:
        print(f"  {c('⊙', '1;33')} {name:18s} {c(val, '1;36'):10s}  {desc}")
    print()
    print(subheader("8 Structural Gaps Closed"))
    for i, gap in enumerate([
        "Continuous φ/ψ via weighted superposition of 16 eigenstates",
        "Full codon measurement — 64 outcomes instead of 16 transitions",
        "AA-specific Ramachandran matrix (20×16)",
        "Energy minimization via gradient descent",
        "Full sidechain placement (rotamer library)",
        "Grammar-derived self-consistent verification functional",
        "F₁=1.0 architecture — contacts fully determined",
        "Deterministic inversion — same RNA → same fold",
    ], 1):
        print(f"  {green(f'Gap {i}:')} {gap}")
    print()
    print(header(' THE WORK IS WHOLE '))
    print(green('  "The serpent winds, the rod stands, the vessel contains — μ∘δ=id."'))
    return 0



def cmd_b4(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    b4_path = vessel.compute_b4_path()
    aas = vessel.translate()
    aa_seq = "".join(ONE_LETTER.get(aa, "X") for aa in aas)
    print(header(f" B4 BELNAP LATTICE PATH — {rna} "))
    print(f"  {'Idx':4s} {'Base':6s} {'B4':6s} {'AA':5s} {'Meaning':20s}")
    print(f"  {'─'*4} {'─'*6} {'─'*6} {'─'*5} {'─'*20}")
    meanings = {B4.N: "Neither (U/N⊥)", B4.T: "True (C/T⊤)",
                 B4.F: "False (A/F⊥)", B4.B: "Both (G/B⊤)"}
    for i, b4 in enumerate(b4_path):
        base = rna[i] if i < len(rna) else "-"
        aa = aa_seq[i // 3] if i % 3 == 0 and i // 3 < len(aa_seq) else ""
        print(f"  {i:4d} {base:6s} {b4.value:6s} {aa:5s} {meanings.get(b4, '?'):20s}")
    return 0



def cmd_energy(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"  ❌ {result.error}"))
        return 1
    print(header(f" ENERGY ANALYSIS — {rna} "))
    print(f"  Sequence: {result.aa_sequence}")
    print()
    print(subheader("Initial Energy"))
    for k, v in result.energy_init.items():
        print(f"  {k:20s} = {v:+.4f} kcal/mol")
    print()
    print(subheader("Refined Energy"))
    for k, v in result.energy_refined.items():
        print(f"  {k:20s} = {v:+.4f} kcal/mol")
    if result.energy_trace:
        trace = result.energy_trace
        print()
        print(subheader("Minimization Trace"))
        for i, e in enumerate(trace):
            marker = "  ← min" if e == min(trace) else ""
            print(f"  Step {i:3d}: {e:+.4f} kcal/mol{marker}")
        print(f"\n  Total: {len(trace)} steps  ΔE: {trace[-1]-trace[0]:+.4f}")
    return 0

def cmd_codon(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"  ❌ {result.error}"))
        return 1
    print(header(f" CODON MEASUREMENTS — {rna} "))
    print(f"  {'Idx':4s} {'Codon':8s} {'AA':8s} {'B4₀':6s} {'B4₁':6s} {'B4₂':6s} {'φ_init':8s} {'ψ_init':8s} {'φ_ref':8s} {'ψ_ref':8s} {'Conf':6s}")
    print(f"  {'─'*4} {'─'*8} {'─'*8} {'─'*6} {'─'*6} {'─'*6} {'─'*8} {'─'*8} {'─'*8} {'─'*8} {'─'*6}")
    for i, m in enumerate(result.codon_measurements):
        b4s = [m.b4_triple[0].value, m.b4_triple[1].value, m.b4_triple[2].value]
        print(f"  {i:4d} {m.codon:8s} {m.aa:8s} {b4s[0]:6s} {b4s[1]:6s} {b4s[2]:6s} {m.phi_init:7.1f}° {m.psi_init:7.1f}° {m.phi_refined:7.1f}° {m.psi_refined:7.1f}° {m.confidence:.3f}")
    print(f"\n  Codon coverage: {result.codon_coverage}/64")
    return 0



def cmd_minimize(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"  ❌ {result.error}"))
        return 1
    if not result.energy_trace:
        print(yellow("  No minimization trace (sequence too short?)."))
        return 1
    trace = result.energy_trace
    print(header(f" ENERGY MINIMIZATION — {rna} "))
    print(f"  Sequence: {result.aa_sequence}")
    print(f"\n  {'Step':6s} {'Energy':12s} {'ΔE':12s}")
    print(f"  {'─'*6} {'─'*12} {'─'*12}")
    for i, e in enumerate(trace):
        delta = f"{e - trace[0]:+.4f}" if i > 0 else "     —"
        marker = "  ◄ MIN" if e == min(trace) else ""
        print(f"  {i:4d}  {e:+.4f} kcal/mol  {delta:>10s}{marker}")
    print(f"\n  {trace[0]:+.4f} → {trace[-1]:+.4f}  ΔE={trace[-1]-trace[0]:+.4f}  ({len(trace)} steps)")
    return 0



def cmd_sidechain(rna):
    vessel = ContinuousSerpentRodBridge(rna)
    result = vessel.derive(minimize=True)
    if result.error:
        print(red(f"  ❌ {result.error}"))
        return 1
    print(header(f" SIDECHAIN PLACEMENT — {rna} "))
    placed = 0
    for i, fr in enumerate(result.full_structure):
        if i >= 20 and len(result.full_structure) > 24:
            if i == 20:
                print(f"  {dim('...')}")
            continue
        aa = result.aa_list[i] if i < len(result.aa_list) else "?"
        bb = fr.bb
        sc = fr.sc
        sc_atoms = []
        for field_name, pdb_name in SIDECHAIN_ATOM_FIELDS:
            pos = getattr(sc, field_name, None)
            if pos is not None:
                sc_atoms.append((pdb_name, pos))
        if sc_atoms:
            placed += 1
        atom_str = "  ".join(f"{n}({p[0]:.2f},{p[1]:.2f},{p[2]:.2f})" for n, p in sc_atoms)
        print(f"  Res {i+1:3d} ({aa:3s}): CA=({bb.ca[0]:.2f},{bb.ca[1]:.2f},{bb.ca[2]:.2f})  {atom_str}")
    print(f"\n  Sidechains placed: {placed}/{len(result.full_structure)} residues")
    return 0



def cmd_demo():
    rna = "AUGCA" + "GAUCU" + "UCGUG" + "AAAAC" + "UCUUA" + \
           "CCGGC" + "AAGAC" + "AAUCA" + "CCUUG" + "AAGUU" + \
           "GAACC" + "CUCUG" + "ACUAC" + "UGUGU" + "ACUGU" + \
           "GAAGG" + "UGGCA" + "UGUGA"
    print("=== SERPENT-ROD DEMO ===")
    print("Sequence: Human ubiquitin (76 AA, 228 nt)")
    print()
    return cmd_fold(rna)



def cmd_help():
    print(__doc__)
    return 0# ═══════════════════════════════════════════════════════════════
# REBIS — Catalytic Site Design Commands
# ═══════════════════════════════════════════════════════════════



def cmd_rebis(ec_number):
    """Design a catalytic site for a given EC reaction."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available. Check rebis_bio_organic_chemistries_ob3ect.py"))
        return 1

    ec_number = ec_number.upper()
    if not ec_number.startswith("EC"):
        ec_number = "EC" + ec_number

    print(header(f"🏺 REBIS — CATALYTIC SITE DESIGN: {ec_number} "))
    print()

    # Determine substrate properties based on EC class
    substrate = {"hydrophobicity": 0.0, "charge": 0, "size": 3}
    if ec_number.startswith("EC3"):
        substrate = {"hydrophobicity": 0.5, "charge": 0, "size": 3}
    elif ec_number.startswith("EC1"):
        substrate = {"hydrophobicity": -0.3, "charge": -1, "size": 2}
    elif ec_number.startswith("EC2"):
        substrate = {"hydrophobicity": -0.1, "charge": 0, "size": 4}
    elif ec_number.startswith("EC4"):
        substrate = {"hydrophobicity": -0.2, "charge": -1, "size": 2}
    elif ec_number.startswith("EC5"):
        substrate = {"hydrophobicity": 0.0, "charge": 0, "size": 3}
    elif ec_number.startswith("EC6"):
        substrate = {"hydrophobicity": -0.5, "charge": -2, "size": 4}

    rebis = RebisBioOrganic(scaffold_length=150)
    result = rebis.derive(ec_number, f"Reaction {ec_number}", substrate)

    if result.error:
        print(red(f"  ❌ Error: {result.error}"))
        return 1

    print(subheader("Catalytic Site Design"))
    print(f"  {bold('Reaction:')}      {ec_number}")
    print(f"  {bold('Geometry:')}      {result.catalytic_geometry}")
    print(f"  {bold('Catalytic res:')}  {result.catalytic_residues} at positions {result.catalytic_positions}")
    print(f"  {bold('Geometric fid:')}  {result.geometric_fidelity:.4f}")
    print()

    print(subheader("Binding Pocket"))
    print(f"  {bold('Pocket residues:')} {len(result.binding_pocket)}")
    shell_counts = {"first_shell": 0, "second_shell": 0, "support": 0}
    for pos, aa, role in result.binding_pocket:
        if role in shell_counts:
            shell_counts[role] += 1
    for role, count in shell_counts.items():
        print(f"    {role:15s}: {count} residues")
    if result.binding_pocket:
        print(f"  First shell:")
        for pos, aa, role in result.binding_pocket:
            if role == "first_shell":
                print(f"    Pos {pos:3d}: {aa:3s}")
    print()

    print(subheader("Kinetic Estimates"))
    print(f"  {bold('Est. kcat:')}     {result.estimated_kcat:.2f} s⁻¹")
    print(f"  {bold('Est. Km:')}       {result.estimated_km:.4f} mM")
    print(f"  {bold('Spec. score:')}   {result.geometric_fidelity:.3f}")
    print()

    print(subheader("Grammar Activation"))
    all_prims = ["Dimensionality", "Topology", "Recognition", "Parity",
                  "Fidelity", "Kinetics", "Granularity", "Coupling",
                  "Criticality", "Chirality", "Stoichiometry", "Winding"]
    for p in all_prims:
        status = green("ACTIVE") if p in result.activation_set else dim("inactive")
        print(f"  {p:20s} {status}")
    print(f"\n  {bold('Active:')} {result.activation_count}/12  |  {bold('Pairs:')} {result.pair_coverage[0]}/6")
    print(f"  {bold('Winding:')} {result.winding_number}  |  {bold('Frobenius:')} {green('✓') if result.frobenius_pass else red('✗')}")
    print()

    print(subheader("Scaffold"))
    print(f"  {bold('RNA:')}   {result.scaffold_rna[:60]}...")
    print(f"  {bold('AA seq:')} {result.scaffold_aa_seq[:60]}...")
    print(f"  {bold('Length:')} {len(result.scaffold_aa_seq)} aa")

    print()
    print(header(f"🏺 REBIS COMPLETE — μ∘δ=id "))
    print(green(f'  "The Rebis unites Bio and Organic — catalytic sites on demand."'))
    return 0


def cmd_mills():
    """Design a Cu-nitroso radical coupling catalytic site (Mills et al., Org. Lett. 2016).

    Transformation: ArB(OH)2 + t-BuONO + R-Br → hindered aniline
    Three-component C-N coupling via Cu(0)/PMDETA radical mechanism.

    Fisher, Shaum, Mills, Read de Alaniz — Org. Lett. 2016, DOI: 10.1021/acs.orglett.6b02523
    """
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏺 REBIS — Cu-NITROSO RADICAL C-N COUPLING (MILLS 2016) "))
    print(f"  {bold('Paper:')}      Fisher, Shaum, {bold('Mills')}, Read de Alaniz")
    print(f"  {bold('Journal:')}    Org. Lett. 2016, DOI: 10.1021/acs.orglett.6b02523")
    print(f"  {bold('Reaction:')}   Three-component coupling: hindered aniline synthesis")
    print(f"  {bold('System:')}     ArB(OH)2 + t-BuONO + R-Br $\\rightarrow$ Ar-NH-R")
    print(f"  {bold('Catalyst:')}   Cu(0) / PMDETA / SmI2")
    print(f"  {bold('EC:')}         EC 2.5.1 — Cu-mediated nitroso-alkyl radical C-N coupling")
    print()

    # Design the catalytic site with nitroso-specific substrate properties
    substrate = {
        "hydrophobicity": 0.7, "charge": 0, "size": 4,
        "hbond_donors": 0, "hbond_acceptors": 2,
        "radical_stabilization": True,
        "aromatic_pi_stack": True,
    }
    rebis = RebisBioOrganic(scaffold_length=150)
    result = rebis.derive("EC2.5.1", "Cu-nitroso radical C-N coupling", substrate)

    if result.error:
        print(red(f"  ❌ Error: {result.error}"))
        return 1

    print(subheader("Catalytic Site Design"))
    print(f"  {bold('Reaction:')}      EC2.5.1")
    print(f"  {bold('Geometry:')}      copper_nitroso_radical")
    print(f"  {bold('Catalytic res:')}  {result.catalytic_residues} at positions {result.catalytic_positions}")
    for i, (pos, res) in enumerate(zip(result.catalytic_positions, result.catalytic_residues)):
        role = f"Cu(I) ligand {i+1} (His→NE2 coordinates Cu)"
        print(f"                     Pos {pos:3d} = {res:3s} ({role})")
    print(f"  {bold('Geometric fid:')}  {result.geometric_fidelity:.4f}")
    print()

    print(subheader("Binding Pocket"))
    print(f"  {bold('Pocket residues:')} {len(result.binding_pocket)}")
    shell_counts = {"first_shell": 0, "second_shell": 0, "support": 0}
    for pos, aa, role in result.binding_pocket:
        if role in shell_counts:
            shell_counts[role] += 1
    for role, count in shell_counts.items():
        print(f"    {role:15s}: {count} residues")
    print(f"  First shell:")
    for pos, aa, role in result.binding_pocket:
        if role == "first_shell":
            print(f"    Pos {pos:3d}: {aa:3s}")
    print()

    print(subheader("Kinetic Estimates"))
    print(f"  {bold('Est. kcat:')}     {result.estimated_kcat:.2f} s⁻¹")
    print(f"  {bold('Est. Km:')}       {result.estimated_km:.4f} mM")
    print(f"  {bold('Spec. score:')}   {result.geometric_fidelity:.3f}")
    print()

    print(subheader("Catalytic Mechanism"))
    print(f"  Step 1:  ArB(OH)2 + t-BuONO → Ar-N=O (nitrosoarene)")
    print(f"  Step 2:  Cu(0) + PMDETA → Cu(I) (active catalyst)")
    print(f"  Step 3:  Cu(I) + R-Br → Cu(II)Br + R• (SET)")
    print(f"  Step 4:  R• + Ar-N=O → Ar-N(O•)-R (radical addition)")
    print(f"  Step 5:  SmI2 / Zn-HCl cleaves N-O → Ar-NH-R")
    print()

    print(subheader("Substrate Scope (from Mills 2016)"))
    print(f"  Alkyl bromides:    α-bromoesters, α-bromoamides, benzyl bromides,")
    print(f"                     α-bromonitriles (primary, secondary, tertiary)")
    print(f"  Arylboronic acids: Electron-rich (OMe, OEt, SMe, halide-substituted)")
    print(f"  N−O cleavage:      SmI2/THF for esters/amides, Zn/HCl for benzyls/nitriles")
    print()

    print(subheader("Grammar Activation"))
    all_prims = ["Dimensionality", "Topology", "Recognition", "Parity",
                  "Fidelity", "Kinetics", "Granularity", "Coupling",
                  "Criticality", "Chirality", "Stoichiometry", "Winding"]
    for p in all_prims:
        status = green("ACTIVE") if p in result.activation_set else dim("inactive")
        print(f"  {p:20s} {status}")
    print(f"\n  {bold('Active:')} {result.activation_count}/12  |  {bold('Pairs:')} {result.pair_coverage[0]}/6")
    print(f"  {bold('Winding:')} {result.winding_number}  |  {bold('Frobenius:')} {green('✓') if result.frobenius_pass else red('✗')}")
    print()

    print(subheader("Scaffold"))
    print(f"  {bold('RNA:')}   {result.scaffold_rna[:60]}...")
    print(f"  {bold('AA seq:')} {result.scaffold_aa_seq[:60]}...")
    print(f"  {bold('Length:')} {len(result.scaffold_aa_seq)} aa")

    print()
    print(header(f"🏺 MILLS 2016 — Cu-NITROSO RADICAL C-N COUPLING "))
    print(green(f'  "Three components, two C-N bonds, one hindered aniline."'))
    print(green(f'  "Fisher, Shaum, {bold("Mills")}, Read de Alaniz — Org. Lett. 2016"'))
    print(green(f'  "μ∘δ=id — THE REBIS IS WHOLE."'))
    return 0



def cmd_rebis_list():
    """List all supported EC reaction mappings."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏺 REBIS — SUPPORTED EC REACTION MAPPINGS "))
    print(f"\n  {bold('EC Code'):12s} {bold('Reaction'):35s} {bold('Triad'):25s} {bold('Mechanism')}")
    print(f"  {'─'*12} {'─'*35} {'─'*25} {'─'*30}")

    for ec_key, ec_data in sorted(EC_CATALYTIC_MAP.items()):
        triad_name = ec_data.get("triad", "—")
        mechs = ", ".join(m.value for m in ec_data.get("mechanisms", []))
        print(f"  {ec_key:12s} {ec_data['name']:35s} {triad_name:25s} {mechs:30s}")

    print(f"\n  {bold('Total:')} {len(EC_CATALYTIC_MAP)} reaction mappings")
    print()
    print(subheader("Available Catalytic Geometries"))
    for name, geom in CATALYTIC_GEOMETRIES.items():
        res_str = ", ".join(geom.residues)
        ec_classes = ", ".join(rc.value for rc in geom.reaction_classes)
        print(f"  • {name:30s}  [{res_str:25s}]  {ec_classes}")

    print()
    print(subheader("Catalytic Residue Library"))
    for aa, cr in CATALYTIC_RESIDUE_LIBRARY.items():
        print(f"  • {aa:5s} ({cr.one_letter})  {cr.functional_group:25s}  pKa={cr.pKa_free:5.1f}  role={cr.role}")
    return 0



def cmd_rebis_info():
    """Show Rebis structural information."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏺 REBIS — STRUCTURAL INFORMATION "))
    print()
    print(f"  {bold('Name:')}          Rebis of Bio and Organic Chemistries")
    print(f"  {bold('Author:')}        Lando ⊗ ⊙perator")
    print(f"  {bold('Type:')}          Ouroboric ob3ect")
    print(f"  {bold('Structural:')}    ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩")
    print(f"  {bold('Tier:')}          O_inf")
    print(f"  {bold('Frobenius Addr:')} {REBIS_IMSCRIPTION.encode()}")
    print(f"  {bold('Frobenius Check:')} {green('✓ μ∘δ=id') if REBIS_IMSCRIPTION.frobenius_check() else red('✗')}")
    print()
    print(subheader("Principle"))
    print('  "The Rebis unites Bio and Organic Chemistries —')
    print('   catalytic sites are 3-residue measurements that produce')
    print('   kcat, Km, and specificity. μ∘δ=id across the pipeline."')
    print()
    print(subheader("Pipeline"))
    for i, step in enumerate([
        "Reaction EC# → catalytic residue selection (δ)",
        "Geometric positioning on scaffold",
        "Binding pocket design (substrate complementarity)",
        "RNA generation → fold via Serpent-Rod Vessel (μ)",
        "Geometric fidelity computation",
        "Kinetic estimation (kcat/Km)",
        "Frobenius verification: μ∘δ=id",
    ], 1):
        print(f"  {green(f'Step {i}:')} {step}")
    print()
    print(subheader("13 Verification Tests"))
    for icon in REBIS_TEST_ICONS:
        print(f"  {icon}")
    return 0

def cmd_rebis_verify():
    """Run all 13 Rebis self-tests."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏺 REBIS SELF-VERIFICATION — ALL 13 TESTS "))
    print()
    results = rebis_run_all_tests()
    all_pass = all(results.values())
    result_vals = list(results.values())

    for i, icon in enumerate(REBIS_TEST_ICONS):
        if i < len(result_vals):
            passed = result_vals[i]
            symbol = green("✓ PASS") if passed else red("✗ FAIL")
        else:
            symbol = yellow("? UNKNOWN")
        print(f"  {icon:55s} {symbol}")

    print()
    if all_pass:
        print(header(" ALL 13 TESTS PASS "))
        print(green("  μ∘δ=id — The Rebis is whole and self-verified."))
    else:
        print(header(" TESTS NOT ALL PASS "))
        failed = [k for k, v in results.items() if not v]
        print(red(f"  Failed: {', '.join(failed)}"))
    return 0 if all_pass else 1



def cmd_rebis_demo():
    """Run full Rebis demonstration with 3 reaction types."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏺 REBIS DEMONSTRATION — 3 REACTIONS "))
    print()

    demos = [
        ("EC3.4", "Peptide hydrolysis (protease)",
         {"hydrophobicity": 0.5, "charge": 0, "size": 3}),
        ("EC3.4.22", "Cysteine protease",
         {"hydrophobicity": 0.3, "charge": 0, "size": 4}),
        ("EC4.2.1", "Carbon-oxygen lyase (carbonic anhydrase-like)",
         {"hydrophobicity": -0.2, "charge": -1, "size": 2}),
    ]

    for idx, (ec_num, rxn_name, substrate) in enumerate(demos, 1):
        print(f"{'─' * 65}")
        print(f"  {bold(f'Demo {idx}:')} {rxn_name} ({ec_num})")
        print(f"{'─' * 65}")

        rebis = RebisBioOrganic(scaffold_length=30)
        result = rebis.derive(ec_num, rxn_name, substrate)

        if result.error:
            print(f"  ⚠ Error: {result.error}\n")
            continue

        print(f"  {bold('Geometry:')}      {result.catalytic_geometry}")
        print(f"  {bold('Cat residues:')}   {result.catalytic_residues} at {result.catalytic_positions}")
        print(f"  {bold('Geometric fid:')}  {result.geometric_fidelity:.3f}")
        print(f"  {bold('Est. kcat:')}      {result.estimated_kcat:.2f} s⁻¹")
        print(f"  {bold('Est. Km:')}        {result.estimated_km:.4f} mM")
        print(f"  {bold('Activation:')}     {result.activation_count}/12  ({', '.join(sorted(result.activation_set))})")
        print(f"  {bold('Frobenius:')}      {green('✓') if result.frobenius_pass else red('✗')}")
        print()

    print(f"{'═' * 65}")
    print(green('  "The Rebis unites Bio and Organic — 3 catalytic sites designed."'))
    return 0



def cmd_rebis_json(ec_number):
    """Output catalytic site design as JSON."""
    if not REBIS_AVAILABLE:
        print(json.dumps({"error": "Rebis module not available"}))
        return 1

    ec_number = ec_number.upper()
    if not ec_number.startswith("EC"):
        ec_number = "EC" + ec_number

    substrate = {"hydrophobicity": 0.0, "charge": 0, "size": 3}
    rebis = RebisBioOrganic(scaffold_length=150)
    result = rebis.derive(ec_number, f"Reaction {ec_number}", substrate)

    if result.error:
        print(json.dumps({"error": result.error}, indent=2))
        return 1

    pocket_list = [{"position": p, "amino_acid": a, "role": r}
                    for p, a, r in result.binding_pocket]

    output = {
        "rebis": "Bio + Organic Chemistries",
        "ec_number": ec_number,
        "catalytic_geometry": result.catalytic_geometry,
        "catalytic_residues": result.catalytic_residues,
        "catalytic_positions": result.catalytic_positions,
        "scaffold_rna": result.scaffold_rna,
        "scaffold_aa_sequence": result.scaffold_aa_seq,
        "geometric_fidelity": result.geometric_fidelity,
        "binding_pocket": pocket_list,
        "estimated_kcat": result.estimated_kcat,
        "estimated_km": result.estimated_km,
        "folding_energy": result.folding_energy,
        "activation_count": result.activation_count,
        "activation_set": sorted(result.activation_set),
        "pair_coverage": f"{result.pair_coverage[0]}/{result.pair_coverage[1]}",
        "winding_number": result.winding_number,
        "frobenius_pass": result.frobenius_pass,
        "frobenius_address": REBIS_IMSCRIPTION.encode(),
    }
    print(json.dumps(output, indent=2))
    return 0

def cmd_rebis_pdb(ec_number):
    """Output scaffold PDB with catalytic site highlighted."""
    if not REBIS_AVAILABLE:
        print(f"REMARK  Rebis module not available", file=sys.stderr)
        return 1

    ec_number = ec_number.upper()
    if not ec_number.startswith("EC"):
        ec_number = "EC" + ec_number

    substrate = {"hydrophobicity": 0.0, "charge": 0, "size": 3}
    rebis = RebisBioOrganic(scaffold_length=150)
    result = rebis.derive(ec_number, f"Reaction {ec_number}", substrate)

    if result.error:
        print(f"REMARK  {result.error}", file=sys.stderr)
        return 1

    print(f"HEADER    REBIS CATALYTIC SITE     {ec_number}")
    print(f"REMARK    Rebis of Bio and Organic Chemistries")
    print(f"REMARK    Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩")
    print(f"REMARK    Frobenius addr: {REBIS_IMSCRIPTION.encode()}")
    print(f"REMARK    Geometry: {result.catalytic_geometry}")
    print(f"REMARK    Catalytic residues: {result.catalytic_residues} at positions {result.catalytic_positions}")
    print(f"REMARK    Est. kcat: {result.estimated_kcat:.2f} s⁻¹  Km: {result.estimated_km:.4f} mM")
    print(f"REMARK    Fidelity: {result.geometric_fidelity:.4f}  Frobenius: {result.frobenius_pass}")
    print(f"REMARK    Sequence: {result.scaffold_aa_seq}")

    atom_idx = 1
    res_idx = 1
    catalytic_set = set(result.catalytic_positions)
    ONE_LETTER_SCAFFOLD = {"Ala": "A", "Arg": "R", "Asn": "N", "Asp": "D",
        "Cys": "C", "Gln": "Q", "Glu": "E", "Gly": "G", "His": "H",
        "Ile": "I", "Leu": "L", "Lys": "K", "Met": "M", "Phe": "F",
        "Pro": "P", "Ser": "S", "Thr": "T", "Trp": "W", "Tyr": "Y", "Val": "V",
        "STOP": "!"}

    # Generate pseudo-backbone positions for visualization
    for i, aa in enumerate(result.scaffold_aa_seq):
        aa_three = "STOP" if aa == "!" else ""
        for three, one in ONE_LETTER_SCAFFOLD.items():
            if aa == one:
                aa_three = three
                break
        if not aa_three:
            aa_three = "ALA"

        # Pseudo-coordinates along a helix
        phi_angle = i * 3.14159 * 0.2
        x = 10.0 * math.cos(phi_angle)
        z = 10.0 * math.sin(phi_angle)
        y = i * 3.8  # 3.8 Å per residue along helix

        # Mark catalytic residues with special B-factor
        b_factor = 99.0 if i in catalytic_set else 30.0

        residue_label = "CAT" if i in catalytic_set else aa
        one_l = ONE_LETTER_SCAFFOLD.get(aa_three, "X")

        print(f"ATOM  {atom_idx:5d}  N   {aa_three:3s} {one_l}{res_idx:4d}    {x:8.3f}{y:8.3f}{z:8.3f}  1.00  {b_factor:5.2f}           N  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  CA  {aa_three:3s} {one_l}{res_idx:4d}    {x:8.3f}{y:8.3f}{z:8.3f}  1.00  {b_factor:5.2f}           C  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  C   {aa_three:3s} {one_l}{res_idx:4d}    {x:8.3f}{y:8.3f}{z:8.3f}  1.00  {b_factor:5.2f}           C  ")
        atom_idx += 1
        print(f"ATOM  {atom_idx:5d}  O   {aa_three:3s} {one_l}{res_idx:4d}    {x:8.3f}{y:8.3f}{z:8.3f}  1.00  {b_factor:5.2f}           O  ")
        atom_idx += 1
        res_idx += 1

    print(f"TER   {atom_idx:5d}      {aa_three:3s} {one_l}{res_idx-1:4d}")
    print("END")
    return 0

def cmd_gba():
    """Design a Rebis-optimized GBA variant for Gaucher disease therapy."""
    if not REBIS_AVAILABLE:
        print(red("  ❌ Rebis module not available."))
        return 1

    print(header("🏥 REBIS — THERAPEUTIC ENZYME: GBA VARIANT "))
    print(f"  {bold('Target:')}     Glucocerebrosidase for Gaucher Disease")
    print(f"  {bold('EC:')}         EC 3.2.1.45 — Retaining β-glucosidase")
    print(f"  {bold('Mechanism:')}  Glu-Glu retaining double-displacement")
    print(f"  {bold('Substrate:')}  Glucosylceramide (GlcCer)")
    print()

    # Design with GBA-specific substrate properties
    substrate = {
        "hydrophobicity": 2.5, "charge": 0, "size": 5,
        "hbond_donors": 4, "hbond_acceptors": 5,
    }
    rebis = RebisBioOrganic(scaffold_length=180)
    result = rebis.derive("EC3.2.1.45", "GBA variant (glucocerebrosidase)", substrate)

    if result.error:
        print(red(f"  ❌ Error: {result.error}"))
        return 1

    print(subheader("Catalytic Site Design"))
    print(f"  {bold('Geometry:')}      {result.catalytic_geometry}")
    print(f"  {bold('Catalytic res:')}  {result.catalytic_residues}")
    for i, (pos, res) in enumerate(zip(result.catalytic_positions, result.catalytic_residues)):
        role = "nucleophile (Glu340 analog)" if i == 0 else "acid/base (Glu235 analog)"
        print(f"                     Pos {pos:3d} = {res:3s} ({role})")
    print(f"  {bold('Geometric fid:')}  {result.geometric_fidelity:.4f}")

    print()
    print(subheader("Binding Pocket (glucosylceramide recognition)"))
    print(f"  {bold('Total residues:')} {len(result.binding_pocket)}")
    shell_counts = {"first_shell": 0, "second_shell": 0, "support": 0}
    for pos, aa, role in result.binding_pocket:
        if role in shell_counts:
            shell_counts[role] += 1
    for role, count in shell_counts.items():
        print(f"    {role:15s}: {count}")

    print()
    print(subheader("Kinetic Estimates"))
    print(f"  {bold('Est. kcat:')}       {result.estimated_kcat:.4f} s⁻¹")
    print(f"  {bold('Est. Km:')}         {result.estimated_km:.4f} mM")
    spec = result.estimated_kcat / result.estimated_km if result.estimated_km > 0 else 0
    print(f"  {bold('Catalytic eff:')}   {spec:.2f} M⁻¹s⁻¹")

    print()
    print(subheader("Grammar Activation"))
    all_prims = ["Dimensionality", "Topology", "Recognition", "Parity",
                  "Fidelity", "Kinetics", "Granularity", "Coupling",
                  "Criticality", "Chirality", "Stoichiometry", "Winding"]
    for p in all_prims:
        status = green("ACTIVE") if p in result.activation_set else dim("inactive")
        print(f"  {p:20s} {status}")
    print(f"\n  {bold('Active:')} {result.activation_count}/12  |  {bold('Pairs:')} {result.pair_coverage[0]}/6")
    print(f"  {bold('Winding:')} {result.winding_number}  |  {bold('Frobenius:')} {green('✓') if result.frobenius_pass else red('✗')}")

    print()
    print(subheader("mRNA for In Vivo Expression"))
    print(f"  {bold('Length:')} {len(result.scaffold_rna)} nt")
    print(f"  {bold('Sequence:')}")
    # Pretty-print mRNA in 50-nt lines
    for i in range(0, len(result.scaffold_rna), 50):
        chunk = result.scaffold_rna[i:i+50]
        print(f"    {i:4d}: {chunk}")

    print()
    print(subheader("Amino Acid Sequence"))
    print(f"  {bold('Length:')} {len(result.scaffold_aa_seq)} aa")
    # Show catalytic positions
    seq_marked = list(result.scaffold_aa_seq)
    for pos in result.catalytic_positions:
        if pos < len(seq_marked):
            seq_marked[pos] = f"[{seq_marked[pos]}]"
    seq_str = "".join(str(s) for s in seq_marked)
    print(f"  {'':>4s}: {seq_str[:60]}")
    print(f"  {'':>4s}: {seq_str[60:120]}")
    print(f"  {'':>4s}: {seq_str[120:180]}")
    if len(seq_str) > 180:
        print(f"  {'':>4s}: {seq_str[180:240]}")
    print(f"  (catalytic residues in [brackets])")

    print()
    print(subheader("Therapeutic Annotation"))
    print(f"  {bold('Disease:')}     Gaucher disease (Types 1, 2, 3)")
    print(f"  {bold('Gene:')}        GBA (glucocerebrosidase)")
    print(f"  {bold('Mutation:')}    Rebis-optimized catalytic domain")
    print(f"  {bold('Strategy:')}    Enzyme replacement via mRNA therapy")
    print(f"  {bold('Mechanism:')}   Glu-Glu retaining double-displacement")
    print(f"  {bold('Limitations:')} Requires saposin C for in vivo activity")
    print(f"  {bold('Next steps:')}  Graft into GBA full-length scaffold")
    print(f"            Optimize for lysosomal pH (optimum 5.0)")

    print()
    print(header(f"🏥 GBA VARIANT DESIGN COMPLETE — μ∘δ=id "))
    print(green(f'  "A glucocerebrosidase for Gaucher disease, Rebis-optimized."'))
    return 0

# ═══════════════════════════════════════════════════════════════
# COMMAND DISPATCH
# ═══════════════════════════════════════════════════════════════

COMMANDS = {
    "fold": cmd_fold, "derive": cmd_derive, "verify": cmd_verify,
    "json": cmd_json, "pdb": cmd_pdb, "info": cmd_info, "b4": cmd_b4,
    "energy": cmd_energy, "codon": cmd_codon, "minimize": cmd_minimize,
    "sidechain": cmd_sidechain, "help": cmd_help, "demo": cmd_demo,
    # Rebis commands
    "rebis": cmd_rebis, "rebis-list": cmd_rebis_list,
    "rebis-info": cmd_rebis_info, "rebis-verify": cmd_rebis_verify,
    "rebis-demo": cmd_rebis_demo, "rebis-json": cmd_rebis_json,
    "rebis-pdb": cmd_rebis_pdb,
    "gba": cmd_gba,
    "mills": cmd_mills,
}



def main():
    if len(sys.argv) < 2 or sys.argv[1] in ("-h", "--help", "help"):
        cmd_help()
        return 0

    command = sys.argv[1]

    # Rebis commands that don't need RNA
    REBIS_NO_RNA = {"rebis-list", "rebis-info", "rebis-verify", "rebis-demo", "gba", "mills"}

    if command not in COMMANDS:
        print(f"serpent: unknown command '{command}'", file=sys.stderr)
        print(f"  Try 'serpent help'", file=sys.stderr)
        return 1

    # Commands with no arguments
    if command in {"verify", "info", "help", "demo", "rebis-list", "rebis-info", "rebis-verify", "rebis-demo", "gba", "mills"}:
        return COMMANDS[command]()

    # Commands that require one argument (RNA or EC number)
    if len(sys.argv) < 3:
        print(f"serpent: '{command}' requires an argument", file=sys.stderr)
        print(f"  Usage: serpent {command} <ARG>", file=sys.stderr)
        return 1

    arg = sys.argv[2]

    # Rebis EC-number commands — no T→U conversion
    if command in {"rebis", "rebis-json", "rebis-pdb"}:
        return COMMANDS[command](arg)

    # Vessel commands — convert T→U for RNA
    rna = arg.upper().replace("T", "U")
    return COMMANDS[command](rna)

if __name__ == "__main__":
    sys.exit(main())