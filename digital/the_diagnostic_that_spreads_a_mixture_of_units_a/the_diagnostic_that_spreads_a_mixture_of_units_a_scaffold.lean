-- IGProtocol scaffold: VINIT → IFIX → AFWD → CLINK → FSPLIT → EVALT → CLINK → FSPLIT → EVALF → FFUSE → FFUSE → IMSCRIB → TANCH → IFIX
-- Class: The diagnostic that spreads a mixture of units along one migration axis, measuring for each how far it travels relative to the front against a fixed retaining medium, and reports how many distinct bands appear and which units travel together as one band; an analysis that counts and places the components of a mixture without isolating any of them, the quick read of how many things are present and whether any overlap.
-- Fingerprint: sig=(6,4,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 9), (4, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑾  | irreversible fixation — winding number
--   [2] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [12] TANCH     top    := 𐑡               𐑠 → 𐑭  | terminal object — connectivity boundary
--   [13] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_diagnostic_that_spreads_a_mixture_0f0f48_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_diagnostic_that_spreads_a_mixture_0f0f48_protocol : IGProtocol the_diagnostic_that_spreads_a_mixture_0f0f48_s0 the_diagnostic_that_spreads_a_mixture_0f0f48_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_diagnostic_that_spreads_a_mixture_0f0f48_s9 the_diagnostic_that_spreads_a_mixture_0f0f48_s9 = the_diagnostic_that_spreads_a_mixture_0f0f48_s9 (idempotent)
  (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l0 the_diagnostic_that_spreads_a_mixture_0f0f48_s0 the_diagnostic_that_spreads_a_mixture_0f0f48_s1) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l1 the_diagnostic_that_spreads_a_mixture_0f0f48_s1 the_diagnostic_that_spreads_a_mixture_0f0f48_s2) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l2 the_diagnostic_that_spreads_a_mixture_0f0f48_s2 the_diagnostic_that_spreads_a_mixture_0f0f48_s3) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l3 the_diagnostic_that_spreads_a_mixture_0f0f48_s3 the_diagnostic_that_spreads_a_mixture_0f0f48_s4) (.seq (.prod (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l4 the_diagnostic_that_spreads_a_mixture_0f0f48_s4 the_diagnostic_that_spreads_a_mixture_0f0f48_s9) (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l4 the_diagnostic_that_spreads_a_mixture_0f0f48_s4 the_diagnostic_that_spreads_a_mixture_0f0f48_s9)) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l9 the_diagnostic_that_spreads_a_mixture_0f0f48_s9 the_diagnostic_that_spreads_a_mixture_0f0f48_s9) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l9 the_diagnostic_that_spreads_a_mixture_0f0f48_s9 the_diagnostic_that_spreads_a_mixture_0f0f48_s10) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l10 the_diagnostic_that_spreads_a_mixture_0f0f48_s10 the_diagnostic_that_spreads_a_mixture_0f0f48_s11) (.seq (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l11 the_diagnostic_that_spreads_a_mixture_0f0f48_s11 the_diagnostic_that_spreads_a_mixture_0f0f48_s12) (.arrow the_diagnostic_that_spreads_a_mixture_0f0f48_l12 the_diagnostic_that_spreads_a_mixture_0f0f48_s12 the_diagnostic_that_spreads_a_mixture_0f0f48_s13))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_diagnostic_that_spreads_a_mixture_0f0f48_true_arm : IGProtocol the_diagnostic_that_spreads_a_mixture_0f0f48_s0 the_diagnostic_that_spreads_a_mixture_0f0f48_s13 :=
  (the_diagnostic_that_spreads_a_mixture_0f0f48_protocol).restrictToEVALT

-- false arm
noncomputable def the_diagnostic_that_spreads_a_mixture_0f0f48_false_arm : IGProtocol the_diagnostic_that_spreads_a_mixture_0f0f48_s0 the_diagnostic_that_spreads_a_mixture_0f0f48_s13 :=
  (the_diagnostic_that_spreads_a_mixture_0f0f48_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_diagnostic_that_spreads_a_mixture_0f0f48_tier : OuroboricityTier := TierFunctor.obj the_diagnostic_that_spreads_a_mixture_0f0f48_s0
#eval the_diagnostic_that_spreads_a_mixture_0f0f48_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_diagnostic_that_spreads_a_mixture_0f0f48_frobenius :
    igFrobeniusAlg.mul the_diagnostic_that_spreads_a_mixture_0f0f48_s0 the_diagnostic_that_spreads_a_mixture_0f0f48_s0 = the_diagnostic_that_spreads_a_mixture_0f0f48_s0 :=
  igFrobAlg_self_fusion the_diagnostic_that_spreads_a_mixture_0f0f48_s0
