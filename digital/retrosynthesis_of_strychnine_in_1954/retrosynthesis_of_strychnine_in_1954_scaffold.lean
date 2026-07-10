-- IGProtocol scaffold: VINIT → IMSCRIB → AREV → FSPLIT → EVALT → AFWD → CLINK → IFIX → FSPLIT → EVALF → EVALT → FFUSE → ENGAGR → AFWD → IMSCRIB → IFIX → TANCH
-- Class: Retrosynthesis of Strychnine in 1954
-- Fingerprint: sig=(8,3,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(8, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑗  | identity — self-imscription
--   [2] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [3] FSPLIT    gran   := 𐑚               𐑗 → ⊙  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [13] AFWD      rel    := 𐑾               𐑳 → 𐑠  | forward morphism — bidirectional arrow
--   [14] IMSCRIB   gram   := 𐑠               𐑾 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def retrosynthesis_of_strychnine_in_1954_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def retrosynthesis_of_strychnine_in_1954_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def retrosynthesis_of_strychnine_in_1954_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def retrosynthesis_of_strychnine_in_1954_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def retrosynthesis_of_strychnine_in_1954_protocol : IGProtocol retrosynthesis_of_strychnine_in_1954_s0 retrosynthesis_of_strychnine_in_1954_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct retrosynthesis_of_strychnine_in_1954_s11 retrosynthesis_of_strychnine_in_1954_s11 = retrosynthesis_of_strychnine_in_1954_s11 (idempotent)
  (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l0 retrosynthesis_of_strychnine_in_1954_s0 retrosynthesis_of_strychnine_in_1954_s1) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l1 retrosynthesis_of_strychnine_in_1954_s1 retrosynthesis_of_strychnine_in_1954_s2) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l2 retrosynthesis_of_strychnine_in_1954_s2 retrosynthesis_of_strychnine_in_1954_s3) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l3 retrosynthesis_of_strychnine_in_1954_s3 retrosynthesis_of_strychnine_in_1954_s4) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l4 retrosynthesis_of_strychnine_in_1954_s4 retrosynthesis_of_strychnine_in_1954_s5) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l5 retrosynthesis_of_strychnine_in_1954_s5 retrosynthesis_of_strychnine_in_1954_s6) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l6 retrosynthesis_of_strychnine_in_1954_s6 retrosynthesis_of_strychnine_in_1954_s7) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l7 retrosynthesis_of_strychnine_in_1954_s7 retrosynthesis_of_strychnine_in_1954_s8) (.seq (.prod (.arrow retrosynthesis_of_strychnine_in_1954_l8 retrosynthesis_of_strychnine_in_1954_s8 retrosynthesis_of_strychnine_in_1954_s11) (.arrow retrosynthesis_of_strychnine_in_1954_l8 retrosynthesis_of_strychnine_in_1954_s8 retrosynthesis_of_strychnine_in_1954_s11)) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l11 retrosynthesis_of_strychnine_in_1954_s11 retrosynthesis_of_strychnine_in_1954_s11) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l11 retrosynthesis_of_strychnine_in_1954_s11 retrosynthesis_of_strychnine_in_1954_s12) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l12 retrosynthesis_of_strychnine_in_1954_s12 retrosynthesis_of_strychnine_in_1954_s13) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l13 retrosynthesis_of_strychnine_in_1954_s13 retrosynthesis_of_strychnine_in_1954_s14) (.seq (.arrow retrosynthesis_of_strychnine_in_1954_l14 retrosynthesis_of_strychnine_in_1954_s14 retrosynthesis_of_strychnine_in_1954_s15) (.arrow retrosynthesis_of_strychnine_in_1954_l15 retrosynthesis_of_strychnine_in_1954_s15 retrosynthesis_of_strychnine_in_1954_s16)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def retrosynthesis_of_strychnine_in_1954_true_arm : IGProtocol retrosynthesis_of_strychnine_in_1954_s0 retrosynthesis_of_strychnine_in_1954_s16 :=
  (retrosynthesis_of_strychnine_in_1954_protocol).restrictToEVALT

-- false arm
noncomputable def retrosynthesis_of_strychnine_in_1954_false_arm : IGProtocol retrosynthesis_of_strychnine_in_1954_s0 retrosynthesis_of_strychnine_in_1954_s16 :=
  (retrosynthesis_of_strychnine_in_1954_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def retrosynthesis_of_strychnine_in_1954_tier : OuroboricityTier := TierFunctor.obj retrosynthesis_of_strychnine_in_1954_s0
#eval retrosynthesis_of_strychnine_in_1954_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem retrosynthesis_of_strychnine_in_1954_frobenius :
    igFrobeniusAlg.mul retrosynthesis_of_strychnine_in_1954_s0 retrosynthesis_of_strychnine_in_1954_s0 = retrosynthesis_of_strychnine_in_1954_s0 :=
  igFrobAlg_self_fusion retrosynthesis_of_strychnine_in_1954_s0
