-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → FSPLIT → AFWD → CLINK → EVALT → AREV → EVALF → FFUSE → IMSCRIB → ENGAGR → CLINK → IFIX → TANCH
-- Class: a component that renders the conventional proof (the T/F-lane Witness) of a validated ob3ect at a caller-chosen degree of detail, from the pinched minimal form to a fully walked-out form, every rendering closing the identical kernel theorem with no loss of structural fidelity.
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [10] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [11] ENGAGR    stoi   := 𐑳               𐑠 → 𐑱  | engage paradox — B-state, both arms
--   [12] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_component_that_renders_the_f9087b_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_component_that_renders_the_f9087b_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_component_that_renders_the_f9087b_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_component_that_renders_the_f9087b_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_component_that_renders_the_f9087b_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_component_that_renders_the_f9087b_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_component_that_renders_the_f9087b_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_component_that_renders_the_f9087b_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_component_that_renders_the_f9087b_protocol : IGProtocol a_component_that_renders_the_f9087b_s0 a_component_that_renders_the_f9087b_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_component_that_renders_the_f9087b_s9 a_component_that_renders_the_f9087b_s9 = a_component_that_renders_the_f9087b_s9 (idempotent)
  (.seq (.arrow a_component_that_renders_the_f9087b_l0 a_component_that_renders_the_f9087b_s0 a_component_that_renders_the_f9087b_s1) (.seq (.arrow a_component_that_renders_the_f9087b_l1 a_component_that_renders_the_f9087b_s1 a_component_that_renders_the_f9087b_s2) (.seq (.arrow a_component_that_renders_the_f9087b_l2 a_component_that_renders_the_f9087b_s2 a_component_that_renders_the_f9087b_s3) (.seq (.prod (.arrow a_component_that_renders_the_f9087b_l3 a_component_that_renders_the_f9087b_s3 a_component_that_renders_the_f9087b_s9) (.arrow a_component_that_renders_the_f9087b_l3 a_component_that_renders_the_f9087b_s3 a_component_that_renders_the_f9087b_s9)) (.seq (.arrow a_component_that_renders_the_f9087b_l9 a_component_that_renders_the_f9087b_s9 a_component_that_renders_the_f9087b_s9) (.seq (.arrow a_component_that_renders_the_f9087b_l9 a_component_that_renders_the_f9087b_s9 a_component_that_renders_the_f9087b_s10) (.seq (.arrow a_component_that_renders_the_f9087b_l10 a_component_that_renders_the_f9087b_s10 a_component_that_renders_the_f9087b_s11) (.seq (.arrow a_component_that_renders_the_f9087b_l11 a_component_that_renders_the_f9087b_s11 a_component_that_renders_the_f9087b_s12) (.seq (.arrow a_component_that_renders_the_f9087b_l12 a_component_that_renders_the_f9087b_s12 a_component_that_renders_the_f9087b_s13) (.arrow a_component_that_renders_the_f9087b_l13 a_component_that_renders_the_f9087b_s13 a_component_that_renders_the_f9087b_s14))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_component_that_renders_the_f9087b_true_arm : IGProtocol a_component_that_renders_the_f9087b_s0 a_component_that_renders_the_f9087b_s14 :=
  (a_component_that_renders_the_f9087b_protocol).restrictToEVALT

-- false arm
noncomputable def a_component_that_renders_the_f9087b_false_arm : IGProtocol a_component_that_renders_the_f9087b_s0 a_component_that_renders_the_f9087b_s14 :=
  (a_component_that_renders_the_f9087b_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_component_that_renders_the_f9087b_tier : OuroboricityTier := TierFunctor.obj a_component_that_renders_the_f9087b_s0
#eval a_component_that_renders_the_f9087b_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_component_that_renders_the_f9087b_frobenius :
    igFrobeniusAlg.mul a_component_that_renders_the_f9087b_s0 a_component_that_renders_the_f9087b_s0 = a_component_that_renders_the_f9087b_s0 :=
  igFrobAlg_self_fusion a_component_that_renders_the_f9087b_s0
