## The plan

### 1. Picture

IMASM is Gödel-complete and its evaluation frames commute, operations included. The iterated-powerset tower has no runtime height. Semantic degree, winding, depth, coordinate height, polynomial degree, and window width are coordinates of a tape. The system is one language; the "membranes" are dispatch surfaces on that language, not rungs of a ladder.

Two heights survive:

1. **Tape length.** Bitlength is a coordinate carried in the tape. It is the only height the language itself has.
2. **Evidence level.** EXECUTABLE / NATIVE / LEAN KERNEL is a tag on a claim, not a stage of computation.

Everything else flattens to coordinates of the same tape.

---

### 2. Core Numeral membrane: one language, commuting axes

The load-bearing membrane. It hosts arithmetic, lifts, layer encodings, fibre counts, and carry laws as operations on one tape language.

**Carrier.** `Tape = Vec<char>` with `EVALT`/`EVALF` payload cells and canonical IMASM glyph words at boundaries. No private numeral types cross out.

**Axes** — each a coordinate of the tape:

| Axis | Coordinate | Anchor |
|---|---|---|
| Arithmetic | `add`, `sub`, `mul`, `divmod`, `modulo`, `gcd`, `mul_mod`, `pow_mod`, `isqrt`, `iroot` | `morphism_factor` |
| Codec | decimal ↔ tape ↔ cell-binary ↔ native ↔ hex | `godel_calculus`, `membrane_factor`, `combined_factor` |
| Primitive reads | `v2`, `v2+1`, `v2−1`, `popcount`, `bitlength`, `runs`, `gaps`, `decomp_2k`, `residue_pow2`, `odd_part` | `godel_analyzer` |
| Carry | `binary_product_carries`, `normalize_support_product` | `morphism_factor`, `godel_product` |
| Suffix envelope | `Γ_i`, deepest occurrence `r(x)`, reconstruction | `phase_word` restore union; `factor_2adic::frame_sweep` |
| Boolean layers | `S_t(v)`, reconstruction, layer-cake mass | new `LayerStack`, thin adapter over `Nat` |
| Fibre geometry | `N(k,r)`, `R_k(z)`, `Σ_d^{-1}(Γ)`, interval geometry | new `FibreGeometry`, thin adapter over `Nat` |
| Boolean carry | `(S ★ T)_t = ∪_{a+b=t} S_a ∩ T_b` | new `BoolPolynomial` over `P(I)` |

The axes commute. A caller reads any axis at any point on the same tape. No axis requires the others to have run first, and none imposes height on another. `OrderCarrier::modular_step` is the executable witness: the modular op commutes with the δ/μ frame boundary, and the boundary identity is verified at that level.

Depth and width are coordinate registers. `CollapsedHypernest::from_depth(d)` reports `execution_ticks() == 1`, `word().len() == 11`, `winding() == d` for every d. `PhaseLandingProgram` returns the same `PAIR_BEFORE_ADVANCE_READOUT_WORD` for every width. `frame_sweep` re-chunks without changing tape length. The language does not expand them at runtime.

---

### 3. Dispatch surfaces

Surfaces separate implementation concerns. They are facets of one tape language, not heights above it. Each is a thin adapter around Core Numeral axes plus a tag naming which evidence level it is claiming.

- **Validation.** Domain checks — odd, non-Mersenne, `N > 1`, coprime `a`, depth representable, no periodic bit run when injectivity is required. Rejects before expensive axes run. Anchor: `combined_factor::shift_domain_check`, `membrane_factor::is_shift_faithful`, `factor_2adic::FoldMembrane::new`, `shor_qft::run_shor_register` guards.

- **Phase Observation.** Frames, deposits, clears, restores, dyadic collisions, half-step residues, FDE boundary identity, hypernest landing, opaque one-shot preimage. Anchors: `phase_word`, `phase_partners::Partners`, `fde_shor_membrane::OrderCarrier`, `fixed_point_hypernest::CollapsedHypernest`, `fixed_point_quantum_relation::resident_landing_word`, `fixed_point_quantum_readout::QuantumWindingPreimage`.

- **QFT / Shor.** Orbit, transform, peaks, continued fractions, braid, winding, factor close. Anchors: `membrane_complex`, `shor_qft`, `shor_braid`.

- **Factor.** 2-adic fold and prefix, frame sweep, interval arm, GLUT sieve, phase unbraid, combined and coupled paths, carrier tower with ordered arms. Anchors: `factor_2adic`, `glut_system`, `phase_unbraid`, `combined_factor`, `coupled_factor`, `morphism_factor::{construct_carrier, run_carrier_rounds, smart_factor}`.

- **Verification.** Exact product, carry agreement, syzygy round-trip, Frobenius, domain re-check on `p` and `q`. Anchors: `godel_product::analyze_product`, `morphism_factor::binary_product_carries`, `combined_factor::{interlace_words, deinterlace_word, audit_syzygy}`.

- **Lean Evidence.** Kernel-checked theorem citations. Registry mapping theorem id to build witness. Never substitutes for an executable check or a native measurement.

- **Reporting.** Certified output only.

---

### 4. Where the load-bearing laws live

**Boolean carry convolution** lives in Verification as the certification route. Core Numeral computes `p * q` and `N` as tapes and produces the carry trace via `normalize_support_product` and `binary_product_carries`. Verification re-derives the same product through the Boolean-layer encoding:

- `Φ(v) = Σ_t S_t(v) z^t` with `S_0 = I`;
- `Φ(v+w) = Φ(v) Φ(w)` over the Boolean coefficient semiring;
- first layer `S_1 ∪ T_1`;
- second layer `S_2 ∪ T_2 ∪ (S_1 ∩ T_1)`;
- higher layers collect depth-overlap carries.

Agreement layer-by-layer is the certification. The candidate pair leaves the Factor surface only after this gate.

**Suffix envelopes** live in Phase Observation and are exposed to Factor and Verification as canonical objects. `SuffixEnvelope` carries `Γ: Vec<Nat>` descending, deepest occurrence `r: Vec<Nat>`, reconstruction, and fibre parametrization. Anchors are `phase_word::execute` restore unions, `factor_2adic::frame_sweep` windowing, and `phase_partners::Partners::negative_support_snapshot`.

**Boolean coefficients** live on the powerset carrier. Add is union, multiply is intersection, zero is `∅`, one is `I`. Cauchy product combines them. This carrier is distinct from the powerset monad's `μ`. The adapter hosts the threshold polynomial; it does not merge the two structures.

**Token consumption** is one act, named locally by each surface:

- `phase_word` clear/restore;
- `factor_2adic::extend_product_registers` advance one width;
- `OrderCarrier::{delta, mu}` open, transport, fuse;
- `CollapsedHypernest::collapse_to_nested` dissolve interior boundaries;
- `QuantumWindingPreimage::from_landing` consume one landing.

Consumption, transformation, dissolution, and self-application read the same step.

---

### 5. Priority order

1. Validation.
2. Core Numeral axes (arithmetic, codec, primitive reads, carry).
3. Phase Observation.
4. QFT / Shor.
5. Factor.
6. Verification.
7. Lean Evidence.
8. Reporting.

Powerset lift, fibre geometry, and Boolean layers are not separate heights in this order. They are axes of Core Numeral, callable at any point.

---

### 6. Dataflow

- **Small semiprime with carry certification.** Validation → Core (arithmetic, carry) → Phase → QFT → Factor → Verification (both carry routes agree) → Report.
- **Suffix-envelope fibre test.** Validation → Core (codec, suffix envelope axis) → Phase (deposit sequence) → Fibre geometry axis (exact `Σ_d^{-1}(Γ)`) → Boolean layer axis (layer-cake mass) → Report.
- **Traffic polynomial decode.** Validation → Core (arithmetic) → Phase (schedule weights) → Fibre geometry axis (subset-sum fibre) → Boolean layer axis (valuation vector) → Report.
- **Hard semiprime.** Validation → Core → Phase → QFT → Factor (carrier tower) → Verification (Boolean carry + syzygy) → Lean Evidence citation → Report.
- **Native collision fibre experiment.** Validation → Core → Phase (native trace) → Fibre geometry axis (predicted fibre) → Verification (native multiplicity vs predicted size) → Report.

---

### 7. Staging

1. Add `SuffixEnvelope` and `FibreGeometry` as Core Numeral axes. Reuse `phase_word` restore unions and `factor_2adic::frame_sweep`. Expose `Γ_i`, `r(x)`, exact fibre count.
2. Add `BoolCoeff` / `BoolPolynomial` on the powerset carrier. Union as addition, intersection as multiplication, Cauchy product, truncation. Keep separate from `μ`.
3. Add `LayerStack` for threshold supports, reconstruction, layer-cake mass, L¹ area, min/max area.
4. Route `binary_product_carries` through both the tape route and the Boolean layer route. Verification checks agreement.
5. Add `LeanEvidence` registry mapping theorem ids to build witnesses.
6. Extend Verification: `audit_syzygy`, `binary_product_carries`, Boolean carry agreement, layer-cake mass check.
7. Acceptance tests for Fibre Geometry: reproduce `N(k,r)` for `k=0..4`, fibre sizes `2, 2, 10, 218, 64594`, minimal-cover counts `1, 1, 2, 8, 49`, Hasse-edge counts `1, 1, 15, 805, 513135`.
8. Acceptance tests for `BoolPolynomial`: carry theorem on small vectors, first-layer union, second-layer carry, truncation as saturation, Boolean-corner idempotents.
9. Acceptance tests for `SuffixEnvelope`: image theorem, product fibre, `(2^d−1)^k`, deepest-occurrence polynomial `M_{k,d}(y)`.
10. Expose the Stage-58/Stage-200 bridge `(2^d−1)^k = Σ_r N(k,r) r! S(d,r)` as an executable check.

---

### 8. Risk controls

- **Carrier confusion.** `Nat` and `BoolCoeff` are different carriers. Only the Boolean layer adapter translates between them, and only for the threshold polynomial.
- **Quotient collapse.** No quotient leaves the fibre geometry axis without its fibre count or parametrization.
- **Monad and convolution collapse.** `μ` (union) and `★` (carry convolution) are distinct. Verification checks both independently.
- **CLOSE collapse.** `μδ = id` is not CLOSE. FDE boundary identity and `phase_word` verdicts are the CLOSE authorities.
- **Evidence substitution.** Lean Evidence never replaces an executable check; native measurement never replaces Lean.
- **Token consumption collapse.** Consumption, transformation, dissolution, and self-application are one act. They are named locally by each surface, not split into separate stages.

---

### 9. What the membrane certifies

When the system reports a factor pair, it has certified:

1. Domain validity.
2. Exact tape arithmetic.
3. Phase observation without invented observations.
4. Suffix-envelope fibre consistency.
5. Boolean layer reconstruction.
6. QFT / braid order extraction where applicable.
7. 2-adic / GLUT / carrier factor closure.
8. Exact product `p q = N`.
9. Boolean carry convolution agreement.
10. Syzygy `Λ(Γ(D(p), D(q))) = (D(p), D(q))` and `encode(μ(Λ(D))) = D(N)`.
11. Carry identity `popcount(p) popcount(q) − popcount(N) = Σ carry values`.
12. Kernel-checked carry theorem citation where applicable.

The certificate dissolves to the Skin and becomes the report.