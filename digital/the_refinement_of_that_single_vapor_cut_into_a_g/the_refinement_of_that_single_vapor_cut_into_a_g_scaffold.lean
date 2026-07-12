-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → FSPLIT → ENGAGR → FFUSE → EVALF → AREV → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: The refinement of that single vapor cut into a graded column of many successive fractions, resolving units that sit close together on the same leaving-readiness axis by repeated re-separation up a series of equilibration stages, and reporting which neighboring units are too close to resolve into distinct fractions; the same driving property as the single distillation but at higher resolving power.
-- Fingerprint: sig=(7,4,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 7), (3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_refinement_of_that_single_vapor_cut_1e5a36_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_refinement_of_that_single_vapor_cut_1e5a36_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_refinement_of_that_single_vapor_cut_1e5a36_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_refinement_of_that_single_vapor_cut_1e5a36_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_refinement_of_that_single_vapor_cut_1e5a36_protocol : IGProtocol the_refinement_of_that_single_vapor_cut_1e5a36_s0 the_refinement_of_that_single_vapor_cut_1e5a36_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_refinement_of_that_single_vapor_cut_1e5a36_s7 the_refinement_of_that_single_vapor_cut_1e5a36_s7 = the_refinement_of_that_single_vapor_cut_1e5a36_s7 (idempotent)
  (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l0 the_refinement_of_that_single_vapor_cut_1e5a36_s0 the_refinement_of_that_single_vapor_cut_1e5a36_s1) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l1 the_refinement_of_that_single_vapor_cut_1e5a36_s1 the_refinement_of_that_single_vapor_cut_1e5a36_s2) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l2 the_refinement_of_that_single_vapor_cut_1e5a36_s2 the_refinement_of_that_single_vapor_cut_1e5a36_s3) (.seq (.prod (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l3 the_refinement_of_that_single_vapor_cut_1e5a36_s3 the_refinement_of_that_single_vapor_cut_1e5a36_s7) (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l3 the_refinement_of_that_single_vapor_cut_1e5a36_s3 the_refinement_of_that_single_vapor_cut_1e5a36_s7)) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l7 the_refinement_of_that_single_vapor_cut_1e5a36_s7 the_refinement_of_that_single_vapor_cut_1e5a36_s7) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l7 the_refinement_of_that_single_vapor_cut_1e5a36_s7 the_refinement_of_that_single_vapor_cut_1e5a36_s8) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l8 the_refinement_of_that_single_vapor_cut_1e5a36_s8 the_refinement_of_that_single_vapor_cut_1e5a36_s9) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l9 the_refinement_of_that_single_vapor_cut_1e5a36_s9 the_refinement_of_that_single_vapor_cut_1e5a36_s10) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l10 the_refinement_of_that_single_vapor_cut_1e5a36_s10 the_refinement_of_that_single_vapor_cut_1e5a36_s11) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l11 the_refinement_of_that_single_vapor_cut_1e5a36_s11 the_refinement_of_that_single_vapor_cut_1e5a36_s12) (.seq (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l12 the_refinement_of_that_single_vapor_cut_1e5a36_s12 the_refinement_of_that_single_vapor_cut_1e5a36_s13) (.arrow the_refinement_of_that_single_vapor_cut_1e5a36_l13 the_refinement_of_that_single_vapor_cut_1e5a36_s13 the_refinement_of_that_single_vapor_cut_1e5a36_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_refinement_of_that_single_vapor_cut_1e5a36_true_arm : IGProtocol the_refinement_of_that_single_vapor_cut_1e5a36_s0 the_refinement_of_that_single_vapor_cut_1e5a36_s14 :=
  (the_refinement_of_that_single_vapor_cut_1e5a36_protocol).restrictToEVALT

-- false arm
noncomputable def the_refinement_of_that_single_vapor_cut_1e5a36_false_arm : IGProtocol the_refinement_of_that_single_vapor_cut_1e5a36_s0 the_refinement_of_that_single_vapor_cut_1e5a36_s14 :=
  (the_refinement_of_that_single_vapor_cut_1e5a36_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_refinement_of_that_single_vapor_cut_1e5a36_tier : OuroboricityTier := TierFunctor.obj the_refinement_of_that_single_vapor_cut_1e5a36_s0
#eval the_refinement_of_that_single_vapor_cut_1e5a36_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_refinement_of_that_single_vapor_cut_1e5a36_frobenius :
    igFrobeniusAlg.mul the_refinement_of_that_single_vapor_cut_1e5a36_s0 the_refinement_of_that_single_vapor_cut_1e5a36_s0 = the_refinement_of_that_single_vapor_cut_1e5a36_s0 :=
  igFrobAlg_self_fusion the_refinement_of_that_single_vapor_cut_1e5a36_s0
