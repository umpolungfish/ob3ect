-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → CLINK → FSPLIT → ENGAGR → FFUSE → AREV → EVALF → AREV → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: an algorithm that, given a tuple of initial invariants, computes the trajectory through the gates and the point at which time emerges
-- Fingerprint: sig=(9,4,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 9), (4, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [3] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [14] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def an_algorithm_that_given_a_tuple_of_1642e8_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_algorithm_that_given_a_tuple_of_1642e8_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def an_algorithm_that_given_a_tuple_of_1642e8_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_algorithm_that_given_a_tuple_of_1642e8_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_algorithm_that_given_a_tuple_of_1642e8_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def an_algorithm_that_given_a_tuple_of_1642e8_protocol : IGProtocol an_algorithm_that_given_a_tuple_of_1642e8_s0 an_algorithm_that_given_a_tuple_of_1642e8_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct an_algorithm_that_given_a_tuple_of_1642e8_s9 an_algorithm_that_given_a_tuple_of_1642e8_s9 = an_algorithm_that_given_a_tuple_of_1642e8_s9 (idempotent)
  (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l0 an_algorithm_that_given_a_tuple_of_1642e8_s0 an_algorithm_that_given_a_tuple_of_1642e8_s1) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l1 an_algorithm_that_given_a_tuple_of_1642e8_s1 an_algorithm_that_given_a_tuple_of_1642e8_s2) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l2 an_algorithm_that_given_a_tuple_of_1642e8_s2 an_algorithm_that_given_a_tuple_of_1642e8_s3) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l3 an_algorithm_that_given_a_tuple_of_1642e8_s3 an_algorithm_that_given_a_tuple_of_1642e8_s4) (.seq (.prod (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l4 an_algorithm_that_given_a_tuple_of_1642e8_s4 an_algorithm_that_given_a_tuple_of_1642e8_s9) (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l4 an_algorithm_that_given_a_tuple_of_1642e8_s4 an_algorithm_that_given_a_tuple_of_1642e8_s9)) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l9 an_algorithm_that_given_a_tuple_of_1642e8_s9 an_algorithm_that_given_a_tuple_of_1642e8_s9) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l9 an_algorithm_that_given_a_tuple_of_1642e8_s9 an_algorithm_that_given_a_tuple_of_1642e8_s10) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l10 an_algorithm_that_given_a_tuple_of_1642e8_s10 an_algorithm_that_given_a_tuple_of_1642e8_s11) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l11 an_algorithm_that_given_a_tuple_of_1642e8_s11 an_algorithm_that_given_a_tuple_of_1642e8_s12) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l12 an_algorithm_that_given_a_tuple_of_1642e8_s12 an_algorithm_that_given_a_tuple_of_1642e8_s13) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l13 an_algorithm_that_given_a_tuple_of_1642e8_s13 an_algorithm_that_given_a_tuple_of_1642e8_s14) (.seq (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l14 an_algorithm_that_given_a_tuple_of_1642e8_s14 an_algorithm_that_given_a_tuple_of_1642e8_s15) (.arrow an_algorithm_that_given_a_tuple_of_1642e8_l15 an_algorithm_that_given_a_tuple_of_1642e8_s15 an_algorithm_that_given_a_tuple_of_1642e8_s16)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def an_algorithm_that_given_a_tuple_of_1642e8_true_arm : IGProtocol an_algorithm_that_given_a_tuple_of_1642e8_s0 an_algorithm_that_given_a_tuple_of_1642e8_s16 :=
  (an_algorithm_that_given_a_tuple_of_1642e8_protocol).restrictToEVALT

-- false arm
noncomputable def an_algorithm_that_given_a_tuple_of_1642e8_false_arm : IGProtocol an_algorithm_that_given_a_tuple_of_1642e8_s0 an_algorithm_that_given_a_tuple_of_1642e8_s16 :=
  (an_algorithm_that_given_a_tuple_of_1642e8_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def an_algorithm_that_given_a_tuple_of_1642e8_tier : OuroboricityTier := TierFunctor.obj an_algorithm_that_given_a_tuple_of_1642e8_s0
#eval an_algorithm_that_given_a_tuple_of_1642e8_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem an_algorithm_that_given_a_tuple_of_1642e8_frobenius :
    igFrobeniusAlg.mul an_algorithm_that_given_a_tuple_of_1642e8_s0 an_algorithm_that_given_a_tuple_of_1642e8_s0 = an_algorithm_that_given_a_tuple_of_1642e8_s0 :=
  igFrobAlg_self_fusion an_algorithm_that_given_a_tuple_of_1642e8_s0
