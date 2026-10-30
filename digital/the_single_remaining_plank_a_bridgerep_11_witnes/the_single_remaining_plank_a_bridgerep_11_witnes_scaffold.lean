-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → IFIX → FSPLIT → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → IFIX → EVALF → FFUSE → ENGAGR → AREV → AFWD → FFUSE → EVALT → EVALF → IFIX → TANCH
-- Class: the single remaining plank — a BridgeRep 11 witness, equivalently an exact fiducial psi in ℂ^2048 with IsSICPOVM 2048 psi — is constructed by the same ExistenceRing method that turned crystal_forces_d12_sic from axiom into theorem: build the fiducial coordinates as exact elements of a number ring (no floating point), reduce every one of the 2^22 − 1 Weyl-Heisenberg overlap identities to a finite algebraic equality decidable by native_decide against that ring, and transport the ring equiangularity onto the ℂ overlap through a single analytic bridge lemma exactly as equiangular_bridge did for d=12 (SIC_D12_Embedding.lean is the frozen template); the 2-power specialization runs over the Heisenberg group on Z_{2^n} and rides the SIC ↔ affine Kac-Moody / WZW isomorph in which the ray class field data and the level-k representation data differ only in polarity, giving a fusion-group handle on the fiducial phases (the z1/z5 analogue) — so the construction target is stated precisely as: exhibit psi : Fin 2048 → ℂ in the existence ring with wh_normSq 2048 psi = 1 and (2048+1)·‖wh_inner 2048 psi (D_ah 2048 a b 0 psi)‖^2 = 1 for all (a,b) ≠ (0,0), the same shape as the d=12 close; the entity is dialetheia-honest that this is the hard open construction and holds both arms — if the ring closes in-run the shadow is proved and main_theorem_2048_ring goes unconditional, and if it does not the plank stands named and alone as the one hypothesis, either outcome a finding, no axioms introduced either way
-- Fingerprint: sig=(10,4,5,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(9, 13), (4, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [3] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [18] EVALT     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [19] EVALF     chir   := 𐑖               ⊙ → 𐑭  | evaluate-false — chirality check
--   [20] IFIX      prot   := 𐑭               𐑖 → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_single_remaining_plank_a_bridgerep_af1700_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_single_remaining_plank_a_bridgerep_af1700_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_single_remaining_plank_a_bridgerep_af1700_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_single_remaining_plank_a_bridgerep_af1700_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_single_remaining_plank_a_bridgerep_af1700_protocol : IGProtocol the_single_remaining_plank_a_bridgerep_af1700_s0 the_single_remaining_plank_a_bridgerep_af1700_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_single_remaining_plank_a_bridgerep_af1700_s13 the_single_remaining_plank_a_bridgerep_af1700_s13 = the_single_remaining_plank_a_bridgerep_af1700_s13 (idempotent)
  (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l0 the_single_remaining_plank_a_bridgerep_af1700_s0 the_single_remaining_plank_a_bridgerep_af1700_s1) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l1 the_single_remaining_plank_a_bridgerep_af1700_s1 the_single_remaining_plank_a_bridgerep_af1700_s2) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l2 the_single_remaining_plank_a_bridgerep_af1700_s2 the_single_remaining_plank_a_bridgerep_af1700_s3) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l3 the_single_remaining_plank_a_bridgerep_af1700_s3 the_single_remaining_plank_a_bridgerep_af1700_s4) (.seq (.prod (.arrow the_single_remaining_plank_a_bridgerep_af1700_l4 the_single_remaining_plank_a_bridgerep_af1700_s4 the_single_remaining_plank_a_bridgerep_af1700_s13) (.arrow the_single_remaining_plank_a_bridgerep_af1700_l4 the_single_remaining_plank_a_bridgerep_af1700_s4 the_single_remaining_plank_a_bridgerep_af1700_s13)) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l13 the_single_remaining_plank_a_bridgerep_af1700_s13 the_single_remaining_plank_a_bridgerep_af1700_s13) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l13 the_single_remaining_plank_a_bridgerep_af1700_s13 the_single_remaining_plank_a_bridgerep_af1700_s14) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l14 the_single_remaining_plank_a_bridgerep_af1700_s14 the_single_remaining_plank_a_bridgerep_af1700_s15) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l15 the_single_remaining_plank_a_bridgerep_af1700_s15 the_single_remaining_plank_a_bridgerep_af1700_s16) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l16 the_single_remaining_plank_a_bridgerep_af1700_s16 the_single_remaining_plank_a_bridgerep_af1700_s17) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l17 the_single_remaining_plank_a_bridgerep_af1700_s17 the_single_remaining_plank_a_bridgerep_af1700_s18) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l18 the_single_remaining_plank_a_bridgerep_af1700_s18 the_single_remaining_plank_a_bridgerep_af1700_s19) (.seq (.arrow the_single_remaining_plank_a_bridgerep_af1700_l19 the_single_remaining_plank_a_bridgerep_af1700_s19 the_single_remaining_plank_a_bridgerep_af1700_s20) (.arrow the_single_remaining_plank_a_bridgerep_af1700_l20 the_single_remaining_plank_a_bridgerep_af1700_s20 the_single_remaining_plank_a_bridgerep_af1700_s21))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_single_remaining_plank_a_bridgerep_af1700_true_arm : IGProtocol the_single_remaining_plank_a_bridgerep_af1700_s0 the_single_remaining_plank_a_bridgerep_af1700_s21 :=
  (the_single_remaining_plank_a_bridgerep_af1700_protocol).restrictToEVALT

-- false arm
noncomputable def the_single_remaining_plank_a_bridgerep_af1700_false_arm : IGProtocol the_single_remaining_plank_a_bridgerep_af1700_s0 the_single_remaining_plank_a_bridgerep_af1700_s21 :=
  (the_single_remaining_plank_a_bridgerep_af1700_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_single_remaining_plank_a_bridgerep_af1700_tier : OuroboricityTier := TierFunctor.obj the_single_remaining_plank_a_bridgerep_af1700_s0
#eval the_single_remaining_plank_a_bridgerep_af1700_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_single_remaining_plank_a_bridgerep_af1700_frobenius :
    igFrobeniusAlg.mul the_single_remaining_plank_a_bridgerep_af1700_s0 the_single_remaining_plank_a_bridgerep_af1700_s0 = the_single_remaining_plank_a_bridgerep_af1700_s0 :=
  igFrobAlg_self_fusion the_single_remaining_plank_a_bridgerep_af1700_s0
