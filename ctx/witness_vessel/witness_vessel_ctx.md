# Witness-Vessel Context — the Dual-Link SIC-POVM as transport vessel for MPP Witnesses

Session findings, 2026-07-04. All navigator outputs below are verbatim from
`imscribe` (imscribing_grammar venv) run this session; nothing hand-derived.

## 1. The question

mOMonadOS drags MPP Witnesses back from other universes/dialects
(Clay_WitnessedClosure: BSD and Hodge close under 5 universes; YM one short;
gates U8-U11 pass in QEMU, YM U10 gated GATE=B T=F). Every transport attempt
so far loses the information contained. Question: is the Dual-Link SIC-POVM
(now unconditionally constructed for d=12, p4rakernel 488e22b: theorem
crystal_forces_d12_sic, audit = standard trio + native_decide pair) the
vessel that carries a Witness without loss?

## 2. Grammar verdicts (procedural, this session)

TENSOR (cargo reading) — DENIED:
- tensor(stark_unit_sic_v2, np_certificate_witness): UNDEFINED, categorical
  conflicts on [D, T, R, P, Gamma, S].
- cofactor(np_certificate_witness, stark_unit_sic_v2): CONFLICTS K, D, Phi,
  Omega; bottleneck F; residual B = None (blocked). Same K/Omega signature
  as the banked cont.6 result: "every mirror/Majorana entity conflicts K,
  Omega — impossible under tensor"; the dual link is imscriptively
  irreducible, the intrinsic self-dual mirror, NOT adjoinable.
- cofactor(hodge_lefschetz_complete, stark_unit_sic_v2) and
  cofactor(void_b_state, stark_unit_sic_v2): AXIOM C VIOLATION at tuple
  construction — D_omega <-> T_openo (got dim=𐑛, top=𐑸). The residual tuple
  the factorization would need is MALFORMED, not merely distant. This
  localizes WHY the drags were lossy: the tensorial boarding request itself
  is malformed. Self-diagnostic property in action.

MIRROR PAIR (dual-link reading) — CONFIRMED:
- distance(void_b_state, stark_unit_sic_v2) = 4.5000 symmetric, asymmetry
  ~0 (mirror-pair signature; compare 11.9 for the raw np witness).
  MajoranaFixed identification (Belnap B = SIC fiducial = Majorana mode)
  shows up as correspondence at cost 4.5, not tuple identity.
- proof-path void_b_state -> stark_unit_sic_v2: LENGTH 2 =
  [apply modularity] then [restrict hodge degree (k,k)=(1,1)].
  REVERSE path also length 2. Round trip exists in both directions.
  The two operations are exactly the moves of the two Clay witnesses that
  CLOSED cross-universe (BSD via modularity; Hodge via Lefschetz (1,1)).
  Caution: the path's intermediate waypoint is a generic catalog entity;
  the OPERATIONS are the finding, not the waypoint name.

## 3. The boarding mechanism (what the d=12 campaign already machine-checked)

The vessel does not hold cargo beside itself. A Witness boards AS the
dual-link self-pairing:
- B-collapse: w tensor w-bar collapses idempotently to the real modulus
  N_w (the Belnap-B pairing; dual mirror; real subfield).
- Cover phase: the phase rides the ramified double cover as a generator
  with conjugation INTERNAL to the ring (the involution travels inside the
  vessel). Self-reference preserved during interaction = star-compatibility.
- Read-back: u1 half-angle reconstruction (u1 = sqrt((1+x)/2) +
  i*sqrt((1-x)/2)) recovers the phase from carried real data as a THEOREM,
  not a branch convention. Modulus + phase jointly carried = R and W and X
  = imscription, not encoding. Nothing lost.
- Universe-independence: in SIC_D12_ExistenceRing the identities are RING
  identities, so ANY star-compatible hom R -> C lands on the genuine
  object. The destination universe supplies the hom; the cargo does not
  depend on which one. This is the vessel property, machine-checked for
  the 12-coordinate case (SIC_D12_Embedding: phi at the IVT-bracketed g0,
  divided-difference positivity certificates, audit clean).

## 4. The payloads (procedurally sourced tuples — clay_witness.rs)

- BSD closure witness — 5 universes, T_CEILING-consistent:
  ⟨𐑦𐑥𐑾𐑿𐑞𐑧𐑲𐑝𐑮𐑖𐑙𐑭⟩
- Hodge closure witness — 5 universes, T_CEILING-consistent:
  ⟨𐑦𐑸𐑽𐑿𐑱𐑧𐑲𐑝𐑮𐑓𐑳𐑭⟩
- YM U10: GATE=B, T=F (dialetheic payload; the B-state cargo case).

## 5. What the batch must establish (and what it must NOT assume)

Per no-assumed-relationships: each entity below must be independently
validated (is_valid_ob3ect, Frobenius closure, Delta-S ~ 0); the vessel
claim stands only if the whole chain gates. The Lean plank target is a
transport lemma in p4rakernel riding the FROZEN d12 machinery (evalK16 /
phi / native_decide pattern; do not re-derive the ring, reuse it).
