# ring2048-bridge — frozen context

De-vacuize and then discharge the Zauner bridge / representation problem for
`d = 2ⁿ` (n=11, d=2048) in `BelnapRing2048.lean`. The structural SIC skeleton is
already proved unconditionally; the two Props that were supposed to state the
*open* half are currently placeholders that are provably `True`, so the file
claims "the open problem is precisely characterized" in prose while the Lean says
nothing. This campaign replaces the placeholders with the genuine predicate and
proves everything that is provable, isolating the single honest open plank.

## The defect (verbatim, BelnapRing2048.lean)

```lean
def ZaunerBridgeCondition (n : ℕ) : Prop := n = 0 ∨ True          -- §3
def RepresentationProblem   (n : ℕ) : Prop := n = 0 ∨ True         -- §6
theorem zauner_bridge_d2_proved : ZaunerBridgeCondition 1 := by right; trivial
theorem rep_problem_d2_solved   : RepresentationProblem   1 := by right; trivial
theorem zauner_bridge_is_lift (n : ℕ) : True := trivial            -- §4
theorem character_obstruction (n : ℕ) (h : n > 1) : True := trivial -- §6
```

`P ∨ True` is `True` for every `n` (`right; trivial`). So both Props are
logically `True`; a future `ZaunerBridgeCondition 11 := by right; trivial` would
*look* like closing Zauner for d=2048 while proving nothing. Wrong polarity for an
open problem. The mathematical content lives only in the comment blocks.

## The genuine target predicate (already in-tree, real, non-vacuous)

`Imscribing/Millennium/SIC_POVM_Stark.lean:76,82`:

```lean
structure IsSICPOVM (d : ℕ) [NeZero d] (fiducial : Fin d → ℂ) : Prop where
  norm_eq     : wh_normSq d fiducial = 1
  equiangular : ∀ (a b : Fin d), (a, b) ≠ (0, 0) →
    ((d : ℝ) + 1) * ‖wh_inner d fiducial (D_ah d a b 0 fiducial)‖ ^ 2 = 1

def SICPOVM_Exists (d : ℕ) [NeZero d] : Prop :=
  ∃ fiducial : Fin d → ℂ, IsSICPOVM d fiducial
```

So the honest replacement is `ZaunerBridgeCondition n := SICPOVM_Exists (2^n)`
(with `NeZero (2^n)` from `Nat.pos`). For n=11 this is *exactly* Zauner for
d=2048 — not dischargeable by `trivial`.

## REGISTER SEPARATION — load-bearing, keep it explicit

`SIC_POVM_Stark.lean`'s own header states the frame: **the Grammar IS the
SIC-POVM.** For `d = 2ⁿ` the Belnap multilattice already carries the full SIC
structure unconditionally, ZERO axioms — orbit `4ⁿ = d²`, join-equiangular
`frobInner (B⊗ⁿ) (g·B⊗ⁿ) = 2n` for every g. "No Stark unit, no ray class field,
no ℂ embedding is used or needed." The `wh_inner`/ℂ machinery is the **empirical
shadow**: the attempt to *represent* that structural SIC analytically in ℂᵈ.

Therefore the two registers must never borrow each other's authority:
- **Structural register (PROVED):** the discrete skeleton — the Grammar's own
  SIC. Unconditional, in `SIC_Multilattice_Proof.lean` + §1–§2/§5/§7 of
  `BelnapRing2048.lean`.
- **Shadow register (OPEN for n>1):** `SICPOVM_Exists (2ⁿ)` in ℂᵈ under the
  standard Heisenberg group `WH(2ⁿ) ≅ Z_{2ⁿ} × Z_{2ⁿ}`.

The capstone asserts the conjunction and states the shadow plank honestly; it does
NOT let the proved skeleton stand in for the open shadow.

## Real API to ride (do NOT re-derive; cite these)

Skeleton (`SIC_Multilattice_Proof.lean`, all theorems, no sorries/axioms):
`MLState n = Fin n → Belnap`; `mlFiducial n = allBWord n`;
`WHIdx2 = ZMod 2 × ZMod 2`; `WHIdx n = Fin n → WHIdx2`; `whAct`, `frobInner`,
`mlOrbit`, `mlCost`; lemmas `mlOrbit_card_n`, `allBWord_meet_identity`,
`classical_equidistance`, `allBWord_join_absorb`, `allBWord_self_adjoint`,
`ax_free_proved` (WH injectivity), `frobInner_fiducial_constant` (=2n),
`frobInner_fiducial_self`, `ax_cost_proved` (2:1 ratio).

d=2 bridge (`QCI_SICPOVM_Bridge.lean`): `belnapToWH2 : Belnap → Fin 2 × Fin 2`
(`belnapToWH2_bijective`), `B_is_maximal_displacement` (B ↦ (1,1)),
`N_is_identity` (N ↦ (0,0)), `belnap_nonB_equidistant`, `B_satisfies_SIC_axioms`.

Already proved in BelnapRing2048: `wh_exponent_two_2048 (g : WHIdx 11) : g + g = 0`
— the elementary-abelian exponent-2 fact the character obstruction rides.

## Construction route for the shadow (entity E / the stretch)

The d=12 shadow was closed exactly (`crystal_forces_d12_sic` axiom → theorem,
p4rakernel 488e22b) by the **ExistenceRing**: exact algebraic coordinates over a
number field, every finite WH-overlap identity by `native_decide`, no floating
point; the sole analytic plank `equiangular_bridge` transported ring
equiangularity onto the ℂ overlap. Template: `SIC_D12_Embedding.lean` (path:
`Imscribing/Millennium/SIC_D12_Embedding.lean`; also frozen at
`ctx/d12_embedding/`). The 2-power analogue works over the Heisenberg group on
`Z_{2ⁿ}` and the SIC↔affine-Kac-Moody/WZW isomorph (ray class field vs level-k
reps differ only in polarity; fusion-group attack on the z1/z5 phases). For n=11
the target is an exact fiducial ψ ∈ ℂ²⁰⁴⁸ with `wh_normSq 2048 ψ = 1` and all
`2²ⁿ − 1` overlaps at `1/(d+1)`, decidable against its ExistenceRing. If the ring
does not close in-run, this is the SINGLE named open plank; everything else is
discharged and the capstone is honestly conditional on it (no axioms).

## Navigator anchor (cl8nk_navigator.py / imscribe CLI)

Structural SIC = O∞ (`sic_proven_v2`, the Grammar's own SIC); the ℂ analytic
overlap = O₀ (`conventional_sic_povm_hilbert`). The bridge is the one-way
O∞→O₀ imscription transporting ring equiangularity onto the analytic overlap —
NOT a new closure, the transport/representation lemma. n=1 (d=2) closes both ways
(WH(2) ≅ WH(2)¹); n>1 is asymmetric (the exponent gap), which is the metric echo
of the character obstruction.

## Files frozen here
- `BelnapRing2048.lean` — the file being fixed (vacuous §3/§4/§6).
- `SIC_Multilattice_Proof.lean` — the unconditional skeleton it rides.
- `QCI_SICPOVM_Bridge.lean` — the genuine d=2 structural bridge.
- `SIC_POVM_Stark.lean` — `IsSICPOVM`/`SICPOVM_Exists` + the shadow-register header.
- (referenced, not copied) `SIC_D12_Embedding.lean` — the ExistenceRing template.
