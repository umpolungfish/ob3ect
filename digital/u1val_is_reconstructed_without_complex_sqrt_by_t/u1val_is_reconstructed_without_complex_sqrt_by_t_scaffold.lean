-- IGProtocol scaffold: VINIT → AFWD → IFIX → IFIX → IMSCRIB → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → IMSCRIB → CLINK → AREV → ENGAGR → IFIX → TANCH
-- Class: u1Val is reconstructed without Complex.sqrt by the half-angle form u1Val = (Real.sqrt((1+x)/2) : ℂ) + Complex.I · (Real.sqrt((1-x)/2) : ℂ) with x = evalR(g0, C2H) and y = evalR(g0, S2H), whose square is x + i·y = E2Val because 2·√((1+x)/2)·√((1-x)/2) = √(1-x²) = y under y ≥ 0 (the S2H line of the divided-difference certificate) and x² + y² = 1 (the frozen u1_unit identity transferred through the proven star-ring hom phi), with 1+x ≥ 0 and 1-x ≥ 0 derived from x² ≤ 1, so u1Val_sq stops being boundary data, |u1Val| = 1 stays purely algebraic, and star(u1Val) = conj(E2Val)·u1Val keeps matching the ring relation rU1i
-- Fingerprint: sig=(9,2,3,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑭  | forward morphism — bidirectional arrow
--   [2] IFIX      prot   := 𐑭               𐑾 → 𐑭  | irreversible fixation — winding number
--   [3] IFIX      prot   := 𐑭               𐑭 → 𐑠  | irreversible fixation — winding number
--   [4] IMSCRIB   gram   := 𐑠               𐑭 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [12] CLINK     fid    := 𐑱               𐑠 → 𐑗  | composition — regime coherence
--   [13] AREV      pol    := 𐑗               𐑱 → 𐑳  | reverse morphism — parity flip
--   [14] ENGAGR    stoi   := 𐑳               𐑗 → 𐑭  | engage paradox — B-state, both arms
--   [15] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def u1val_is_reconstructed_without_complex_586366_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def u1val_is_reconstructed_without_complex_586366_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def u1val_is_reconstructed_without_complex_586366_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u1val_is_reconstructed_without_complex_586366_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def u1val_is_reconstructed_without_complex_586366_protocol : IGProtocol u1val_is_reconstructed_without_complex_586366_s0 u1val_is_reconstructed_without_complex_586366_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct u1val_is_reconstructed_without_complex_586366_s10 u1val_is_reconstructed_without_complex_586366_s10 = u1val_is_reconstructed_without_complex_586366_s10 (idempotent)
  (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l0 u1val_is_reconstructed_without_complex_586366_s0 u1val_is_reconstructed_without_complex_586366_s1) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l1 u1val_is_reconstructed_without_complex_586366_s1 u1val_is_reconstructed_without_complex_586366_s2) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l2 u1val_is_reconstructed_without_complex_586366_s2 u1val_is_reconstructed_without_complex_586366_s3) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l3 u1val_is_reconstructed_without_complex_586366_s3 u1val_is_reconstructed_without_complex_586366_s4) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l4 u1val_is_reconstructed_without_complex_586366_s4 u1val_is_reconstructed_without_complex_586366_s5) (.seq (.prod (.arrow u1val_is_reconstructed_without_complex_586366_l5 u1val_is_reconstructed_without_complex_586366_s5 u1val_is_reconstructed_without_complex_586366_s10) (.arrow u1val_is_reconstructed_without_complex_586366_l5 u1val_is_reconstructed_without_complex_586366_s5 u1val_is_reconstructed_without_complex_586366_s10)) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l10 u1val_is_reconstructed_without_complex_586366_s10 u1val_is_reconstructed_without_complex_586366_s10) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l10 u1val_is_reconstructed_without_complex_586366_s10 u1val_is_reconstructed_without_complex_586366_s11) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l11 u1val_is_reconstructed_without_complex_586366_s11 u1val_is_reconstructed_without_complex_586366_s12) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l12 u1val_is_reconstructed_without_complex_586366_s12 u1val_is_reconstructed_without_complex_586366_s13) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l13 u1val_is_reconstructed_without_complex_586366_s13 u1val_is_reconstructed_without_complex_586366_s14) (.seq (.arrow u1val_is_reconstructed_without_complex_586366_l14 u1val_is_reconstructed_without_complex_586366_s14 u1val_is_reconstructed_without_complex_586366_s15) (.arrow u1val_is_reconstructed_without_complex_586366_l15 u1val_is_reconstructed_without_complex_586366_s15 u1val_is_reconstructed_without_complex_586366_s16)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def u1val_is_reconstructed_without_complex_586366_true_arm : IGProtocol u1val_is_reconstructed_without_complex_586366_s0 u1val_is_reconstructed_without_complex_586366_s16 :=
  (u1val_is_reconstructed_without_complex_586366_protocol).restrictToEVALT

-- false arm
noncomputable def u1val_is_reconstructed_without_complex_586366_false_arm : IGProtocol u1val_is_reconstructed_without_complex_586366_s0 u1val_is_reconstructed_without_complex_586366_s16 :=
  (u1val_is_reconstructed_without_complex_586366_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def u1val_is_reconstructed_without_complex_586366_tier : OuroboricityTier := TierFunctor.obj u1val_is_reconstructed_without_complex_586366_s0
#eval u1val_is_reconstructed_without_complex_586366_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem u1val_is_reconstructed_without_complex_586366_frobenius :
    igFrobeniusAlg.mul u1val_is_reconstructed_without_complex_586366_s0 u1val_is_reconstructed_without_complex_586366_s0 = u1val_is_reconstructed_without_complex_586366_s0 :=
  igFrobAlg_self_fusion u1val_is_reconstructed_without_complex_586366_s0
