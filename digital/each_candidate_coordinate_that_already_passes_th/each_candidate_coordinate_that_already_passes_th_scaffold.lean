-- IGProtocol scaffold: VINIT → CLINK → IMSCRIB → AFWD → IFIX → FSPLIT → EVALT → AFWD → FFUSE → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: each candidate coordinate that already passes the certify.gp gate for genuine dividing degree becomes further checked for actual membership in the ray class field K by nfisincl or nfalgtobasis, closing the gate's known blind spot that a genuine algebraic number of dividing degree can still be the wrong field element like sqrt30
-- Fingerprint: sig=(8,3,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑠  | composition — regime coherence
--   [2] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [4] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [9] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑖 → 𐑙  | reverse morphism — parity flip
--   [11] FFUSE     stoi   := 𐑙               𐑗 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [13] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def each_candidate_coordinate_that_already_9125b5_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def each_candidate_coordinate_that_already_9125b5_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_candidate_coordinate_that_already_9125b5_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_candidate_coordinate_that_already_9125b5_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def each_candidate_coordinate_that_already_9125b5_protocol : IGProtocol each_candidate_coordinate_that_already_9125b5_s0 each_candidate_coordinate_that_already_9125b5_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct each_candidate_coordinate_that_already_9125b5_s8 each_candidate_coordinate_that_already_9125b5_s8 = each_candidate_coordinate_that_already_9125b5_s8 (idempotent)
  (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l0 each_candidate_coordinate_that_already_9125b5_s0 each_candidate_coordinate_that_already_9125b5_s1) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l1 each_candidate_coordinate_that_already_9125b5_s1 each_candidate_coordinate_that_already_9125b5_s2) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l2 each_candidate_coordinate_that_already_9125b5_s2 each_candidate_coordinate_that_already_9125b5_s3) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l3 each_candidate_coordinate_that_already_9125b5_s3 each_candidate_coordinate_that_already_9125b5_s4) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l4 each_candidate_coordinate_that_already_9125b5_s4 each_candidate_coordinate_that_already_9125b5_s5) (.seq (.prod (.arrow each_candidate_coordinate_that_already_9125b5_l5 each_candidate_coordinate_that_already_9125b5_s5 each_candidate_coordinate_that_already_9125b5_s8) (.arrow each_candidate_coordinate_that_already_9125b5_l5 each_candidate_coordinate_that_already_9125b5_s5 each_candidate_coordinate_that_already_9125b5_s8)) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l8 each_candidate_coordinate_that_already_9125b5_s8 each_candidate_coordinate_that_already_9125b5_s8) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l8 each_candidate_coordinate_that_already_9125b5_s8 each_candidate_coordinate_that_already_9125b5_s9) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l9 each_candidate_coordinate_that_already_9125b5_s9 each_candidate_coordinate_that_already_9125b5_s10) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l10 each_candidate_coordinate_that_already_9125b5_s10 each_candidate_coordinate_that_already_9125b5_s11) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l11 each_candidate_coordinate_that_already_9125b5_s11 each_candidate_coordinate_that_already_9125b5_s12) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l12 each_candidate_coordinate_that_already_9125b5_s12 each_candidate_coordinate_that_already_9125b5_s13) (.seq (.arrow each_candidate_coordinate_that_already_9125b5_l13 each_candidate_coordinate_that_already_9125b5_s13 each_candidate_coordinate_that_already_9125b5_s14) (.arrow each_candidate_coordinate_that_already_9125b5_l14 each_candidate_coordinate_that_already_9125b5_s14 each_candidate_coordinate_that_already_9125b5_s15))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def each_candidate_coordinate_that_already_9125b5_true_arm : IGProtocol each_candidate_coordinate_that_already_9125b5_s0 each_candidate_coordinate_that_already_9125b5_s15 :=
  (each_candidate_coordinate_that_already_9125b5_protocol).restrictToEVALT

-- false arm
noncomputable def each_candidate_coordinate_that_already_9125b5_false_arm : IGProtocol each_candidate_coordinate_that_already_9125b5_s0 each_candidate_coordinate_that_already_9125b5_s15 :=
  (each_candidate_coordinate_that_already_9125b5_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def each_candidate_coordinate_that_already_9125b5_tier : OuroboricityTier := TierFunctor.obj each_candidate_coordinate_that_already_9125b5_s0
#eval each_candidate_coordinate_that_already_9125b5_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem each_candidate_coordinate_that_already_9125b5_frobenius :
    igFrobeniusAlg.mul each_candidate_coordinate_that_already_9125b5_s0 each_candidate_coordinate_that_already_9125b5_s0 = each_candidate_coordinate_that_already_9125b5_s0 :=
  igFrobAlg_self_fusion each_candidate_coordinate_that_already_9125b5_s0
