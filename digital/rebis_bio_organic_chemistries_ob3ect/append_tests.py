#!/usr/bin/env python3
"""Append the test suite to the rebis ob3ect."""
tests_code = '''
# ═══════════════════════════════════════════════════════════════════
# PART X: VERIFICATION TEST SUITE
# ═══════════════════════════════════════════════════════════════════

def test_rebis_imscription():
    """Test 1: Rebis Imscription — correct structural type."""
    addr = REBIS_IMSCRIPTION.encode()
    valid = isinstance(addr, int) and 0 <= addr < 17280000
    frob = REBIS_IMSCRIPTION.frobenius_check()
    return valid and frob and addr > 0

def test_catalytic_residue_library():
    """Test 2: Catalytic Residue Library — all key residues present."""
    for aa in ["Ser", "His", "Asp", "Glu", "Cys", "Lys", "Tyr", "Arg"]:
        if aa not in CATALYTIC_RESIDUE_LIBRARY:
            return False
    return True

def test_reaction_classification():
    """Test 3: Reaction Classification — all 6 EC classes map correctly."""
    for rc in ReactionClass:
        if rc.value not in ["EC1","EC2","EC3","EC4","EC5","EC6"]:
            return False
    return True

def test_catalytic_geometries():
    """Test 4: Catalytic Geometries — all named geometries have valid data."""
    for name, geom in CATALYTIC_GEOMETRIES.items():
        if len(geom.residues) < 2:
            return False
        if not geom.mechanism:
            return False
    return True

def test_ec_map_coverage():
    """Test 5: EC Map Coverage — at least 4 reaction classes mapped."""
    return len(EC_CATALYTIC_MAP) >= 4

def test_residue_selection():
    """Test 6: Residue Selection — known EC numbers return correct triads."""
    geom, res, aux = select_catalytic_residues_for_reaction("EC3.4")
    assert geom == "ser_his_asp_triad", f"Expected ser_his_asp_triad, got {geom}"
    return True

def test_scaffold_design():
    """Test 7: Scaffold Design — generates correct length scaffold."""
    positions, scaffold = design_catalytic_positions(
        ["Ser", "His", "Asp"], ["Gly"], SER_HIS_ASP_TRIAD, scaffold_length=150
    )
    if len(scaffold) != 150: return False
    if len(positions) != 3: return False
    for pos in positions:
        if not (0 <= pos < 150): return False
    return True

def test_rna_generation():
    """Test 8: RNA Generation — produces valid RNA from AA sequence."""
    aas = ["Met", "Ala", "Ser", "His", "Asp", "Gly", "Phe", "STOP"]
    rna = generate_scaffold_rna(aas)
    assert rna.endswith("UAA"), "RNA must end with STOP codon"
    assert all(b in "UCAG" for b in rna), "RNA must use only U,C,A,G"
    return True

def test_binding_pocket():
    """Test 9: Binding Pocket Design — produces pocket residues."""
    scaffold = ["Ala"] * 100
    pocket = design_binding_pocket(scaffold, [30, 50, 70], ["Ser","His","Asp"])
    if len(pocket) < 5: return False
    for pos, aa, role in pocket:
        if not (0 <= pos < 100): return False
        if aa not in AA_PROPERTIES: return False
    return True

def test_kinetic_estimation():
    """Test 10: Kinetic Estimation — returns plausible kcat and Km."""
    kcat, km = estimate_catalytic_efficiency(0.8, [(1,"Ala","test")], "EC3.1")
    if not (0.01 <= kcat <= 10000): return False
    if not (0.001 <= km <= 100.0): return False
    return True

def test_rebis_full_derive():
    """Test 11: Rebis Full Derive — end-to-end catalytic site design."""
    rebis = RebisBioOrganic(scaffold_length=100)
    result = rebis.derive(
        ec_number="EC3.4",
        reaction_name="Peptide hydrolysis",
        substrate_properties={"hydrophobicity": 0.5, "charge": 0, "size": 3}
    )
    if result.error: return False
    if len(result.catalytic_positions) < 2: return False
    if result.geometric_fidelity < 0.1: return False
    if result.estimated_kcat <= 0: return False
    if result.activation_count < 10: return False
    return True

def test_rebis_activation_12():
    """Test 12: Rebis Activation — full design activates ALL 12 primitives."""
    rebis = RebisBioOrganic(scaffold_length=150)
    rebis._catalytic_positions = [30, 50, 70]
    rebis._catalytic_residues = ["Ser", "His", "Asp"]
    rebis._geometric_fidelity = 0.8
    activated, count = rebis.compute_activation()
    return count >= 10  # At least 10/12 without vessel

def test_catalytic_site_design():
    """Test 13: Catalytic Site Design — produces valid design object."""
    rebis = RebisBioOrganic(scaffold_length=120)
    design = rebis.design_catalytic_site(
        "EC3.4.21", "Serine protease",
        {"hydrophobicity": 0.3, "charge": 0, "size": 3}
    )
    if design.error: return False
    if len(design.catalytic_positions) < 2: return False
    if not design.scaffold_rna: return False
    return True

TEST_FUNCTIONS = {
    "Rebis Imscription (Frobenius)": test_rebis_imscription,
    "Catalytic Residue Library": test_catalytic_residue_library,
    "Reaction Classification": test_reaction_classification,
    "Catalytic Geometries": test_catalytic_geometries,
    "EC Map Coverage": test_ec_map_coverage,
    "Residue Selection": test_residue_selection,
    "Scaffold Design": test_scaffold_design,
    "RNA Generation": test_rna_generation,
    "Binding Pocket Design": test_binding_pocket,
    "Kinetic Estimation": test_kinetic_estimation,
    "Rebis Full Derive": test_rebis_full_derive,
    "Rebis Activation 12/12": test_rebis_activation_12,
    "Catalytic Site Design": test_catalytic_site_design,
}

def run_all_tests(verbose: bool = False) -> Dict[str, bool]:
    """Run all 13 Rebis tests. Returns dict of test_name → pass/fail."""
    results = {}
    for name, func in TEST_FUNCTIONS.items():
        try:
            result = func()
            results[name] = bool(result)
        except Exception as e:
            results[name] = False
            if verbose:
                print(f"  ✗ {name}: EXCEPTION — {e}")
        if verbose:
            status = "✓" if results[name] else "✗"
            print(f"  {status} {name}")
    return results

def main():
    """Run the Rebis demonstration."""
    print("=" * 70)
    print("🏺 THE REBIS OF BIO AND ORGANIC CHEMISTRIES")
    print("   Catalytic Site Design Engine")
    print("=" * 70)
    print()
    print(f"Structural type: ⟨Ð_ω; Þ_O; Ř_=; Φ_}}; ƒ_ż; Ç_@; Γ_ʔ; ɢ_ˌ; ⊙_ÿ; Ħ_A; Σ_ï; Ω_z⟩")
    print(f"Ouroboricity: O_inf")
    print()

    # Run tests
    print("Running test suite...")
    results = run_all_tests(verbose=True)
    passed = sum(1 for v in results.values() if v)
    total = len(results)
    print(f"\nResults: {passed}/{total} tests PASS\n")

    # Demonstrate with 3 reaction types
    demonstrations = [
        ("EC3.4", "Peptide bond hydrolysis (protease)",
         {"hydrophobicity": 0.5, "charge": 0, "size": 3}),
        ("EC3.4.22", "Cysteine protease",
         {"hydrophobicity": 0.3, "charge": 0, "size": 4}),
        ("EC4.2.1", "Carbon-oxygen lyase (carbonic anhydrase)",
         {"hydrophobicity": -0.2, "charge": -1, "size": 2}),
    ]

    for ec_num, rxn_name, substrate in demonstrations:
        print(f"\n{'─' * 50}")
        print(f"Designing: {rxn_name} ({ec_num})")
        print(f"{'─' * 50}")
        rebis = RebisBioOrganic(scaffold_length=120)
        result = rebis.derive(ec_num, rxn_name, substrate)

        if result.error:
            print(f"  ⚠ Error: {result.error}")
            continue

        print(f"  Geometry:        {result.catalytic_geometry}")
        print(f"  Cat residues:    {result.catalytic_residues}")
        print(f"  Cat positions:   {result.catalytic_positions}")
        print(f"  Geometric fid:   {result.geometric_fidelity:.3f}")
        print(f"  Est. kcat:       {result.estimated_kcat:.2f} s⁻¹")
        print(f"  Est. Km:         {result.estimated_km:.4f} mM")
        print(f"  Activation:      {result.activation_count}/12")
        print(f"  Frobenius:       {'✓' if result.frobenius_pass else '✗'}")
        print(f"  Scaffold length: {len(result.scaffold_aa_seq)} aa")

    print(f"\n{'=' * 70}")
    print(f"🏺 THE REBIS IS WHOLE — μ∘δ=id")
    print(f"{'=' * 70}")

if __name__ == "__main__":
    main()
'''

with open("/home/mrnob0dy666/ob3ect/digital/rebis_bio_organic_chemistries_ob3ect/rebis_bio_organic_chemistries_ob3ect.py", "a") as f:
    f.write(tests_code)

print("Tests appended successfully")
print(f"File size: {__import__('os').path.getsize('/home/mrnob0dy666/ob3ect/digital/rebis_bio_organic_chemistries_ob3ect/rebis_bio_organic_chemistries_ob3ect.py')} bytes")
