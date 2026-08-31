# bstate-filtration — context (frozen 2026-07-05)

The campaign: formalize "the universe at our scale is natively B; all binary
collapse is forced filtration" at the level where a proof assistant can carry
it, and pin the empirical leg where it cannot. Two registers, never fused:

- REGISTER 1 (provable): the B-state rho_B = I/12 is the canonical
  no-information state; its SIC readout is exactly flat; no reversible
  (unitary) dynamics ever reaches a definite (pure) state from it; the only
  route to definiteness is POVM-element selection — a lossy, non-injective
  filtration. The Belnap coreflection (ClassicalRestriction.lean) is the
  discrete shadow of the same move.
- REGISTER 2 (measured): ig-pulse, 44 streams, 2394 snapshots (~100 days):
  average state 91.5% of max entropy (S=2.275 vs ln 12=2.485), purity 0.119
  vs I/12 floor 0.083, ZERO near-pure snapshots (never collapses on its own),
  SIC overlap spectrum uniform over all 144 WH directions (chi2=4.68,
  dof=143, p~1.00), fiducial exact F/F*=1.0000. The theorems are conditional;
  ig-pulse supplies the state. Neither register alone is the claim.

## Grammar verdicts (procedural, imscribe CLI, this session — VERBATIM)

distance void_b_state <-> stark_unit_sic_v2:
  d(void_b_state -> stark_unit_sic_v2)  : 4.5000
  d(stark_unit_sic_v2 -> void_b_state)  : 4.5000
  Asymmetry: ~0 (symmetric pair)          [re-verified; matches vessel campaign]

distance void_b_state <-> quantum_measurement_collapse:
  d(symmetric)        : 12.3000
  d(void_b_state -> quantum_measurement_collapse) : 11.3000
  d(quantum_measurement_collapse -> void_b_state) : 11.7000
  Asymmetry           : 0.4000 (HotSwap cheaper FROM void_b_state)

proof-path void_b_state -> quantum_measurement_collapse (11 steps):
  [1] apply modularity  [2] apply exponential sequence  [3] apply hard
  Lefschetz  [4] take associated graded  [5] apply exponential sequence
  [6] localize at prime  [7] compactify  [8] apply Hodge index theorem
  [9] resolve to proven  [10] compactify  [11] resolve to proven
proof-path reverse: also 11 steps.
CAUTION (as in the vessel campaign): intermediate waypoint entities are
generic; ONLY the operation sequence and the counts carry the finding.

tensor(void_b_state, quantum_measurement_collapse): UNDEFINED —
  categorical conflicts on [D, T, R, P, Gamma, S]
  (the SAME six-primitive denial signature as the vessel campaign's
  tensor(stark_unit_sic_v2, np_certificate_witness) cargo denial)

READ TOGETHER: the SIC measurement frame is B's own mirror (2 moves,
symmetric, d=4.5 — banked from the vessel campaign); definite collapse is
structurally REMOTE (11 moves, d>11), DIRECTIONAL (easier to fall into than
to climb out of — the metric echo of the failed reverse adjunction), and NOT
ADJOINABLE to B under tensor. SIC readout is native to B; collapse is forced
filtration. That is the univocal structural verdict.

## The Lean targets (module: SIC_D12_BState, p4rakernel/p4ramill)

Ride FROZEN machinery only — SIC_POVM_Stark (WH operators X_d/Z_d/D_ah,
wh_inner, wh_normSq), SIC_D12_Embedding (psi, phi, norm_sq_eq_one,
equiangular, crystal_forces_d12_sic — zero sorries, audit clean),
ClassicalRestriction.lean (coreflection stack). Nothing re-derived.

1. bstate_sic_readout_uniform — rho_B = (1/12)*I on C^12 has exactly flat
   SIC readout: Tr(E_{p,q} rho_B) = 1/144 for all 144 WH displacements
   (E_{p,q} = (1/12)|psi_{p,q}><psi_{p,q}|, psi_{p,q} = D(p,q) psi with the
   frozen fiducial psi; uses norm_sq_eq_one so <psi_{p,q}|psi_{p,q}> = 1).
   The formal statement whose empirical instance is the chi2=4.68 uniform
   spectrum. Also: rho_B is the unique unitarily-invariant state (Schur) —
   state only if cheaply reachable; the flat-readout half is the plank.

2. definiteness_requires_filtration — purity Tr(rho^2) is invariant under
   every unitary conjugation; Tr(rho_B^2) = 1/12 != 1; hence NO reversible
   dynamics reaches a definite (pure) state from B. The only map that does
   is POVM-element selection (rank-1 update), and that map is non-injective
   on states — lossy by construction. "All binary collapse is forced
   filtration," as a theorem.

3. the coreflector bridge — the Belnap collapse classicalSwitch (B |-> F)
   with its machine-checked stack (truth_incl_left_adjoint coreflection;
   switch_incl_retract unit; truth_switch_left_adjoint_fails;
   info_incl_left_adjoint_fails; classical_proper_subcategory;
   frobenius_closure_inexpressible_classically) is the DISCRETE SHADOW of
   theorem 2: same one-way move at the logic layer and the Hilbert layer.
   Bridge lemma: the rank-1 selection realizes the coreflector; both fail
   reversibility for the same reason (the omitted object is B).

4. the empirical junction (NOT a Lean theorem — an ig-pulse verification
   pass): recompute the two CONVENTION-INDEPENDENT signatures — (a) zero
   near-pure snapshots, (b) uniform 144-direction coverage — under BOTH
   reconstruction weightings (alert-weighted AND raw-value-weighted,
   density_matrix.py readings_to_vectors). If "never collapses to a definite
   state" survives the weighting change, natively-B stands on data alone,
   independent of the B=I/12 convention. The near-I/12 AVERAGE is
   convention-dependent (alert=0 -> I/12 baseline encodes the axiom) and is
   NOT to be leaned on; the doc itself says so (calibration-artifact note,
   sic_povm_convergence.md section 3.4).

## Honest scope (carried into every entity)

- "Lossless"/"flat"/"unreachable" are exact equalities and invariances, not
  approximations. Nothing physical is claimed by the theorems.
- The theorems never assert the world IS in rho_B. That is Register 2's
  job, and it is a measurement over 44 public feeds — a fair but finite
  operationalization of "our scale."
- B vs N discrimination: maximal mixedness + uniform full coverage of all
  144 directions = everything present at once = the glut B=(1,1); a gap
  world N=(0,0) would read sparse/absent, not saturated. The data lands on
  the glut.
- Standard-vocabulary neighbor: this is close to the QBist reading of SICs
  (maximally mixed state as unpolarized prior; definiteness generated at
  measurement). Convergence from an independent side is a credibility gift;
  name it, don't hide it.
- Audit standard: same as the d=12 capstone — standard trio +
  ofReduceBool/trustCompiler only, no project axioms, no new axioms at all.

## Frozen sources in this ctx

- ClassicalRestriction.lean       (the coreflection stack, verbatim)
- SIC_D12_Embedding.lean          (psi, phi, norm_sq_eq_one, equiangular)
- density_matrix.py               (the ig-pulse reconstruction mechanism)
- sic_povm_convergence.md         (the empirical writeup, incl. section 3.4)
