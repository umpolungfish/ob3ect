-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → EVALF → AREV → ENGAGR → CLINK → IFIX → FFUSE → TANCH → IMSCRIB
-- Class: The Grammar applied to The Grammar
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [11] TANCH     top    := 𐑡               𐑙 → 𐑠  | terminal object — connectivity boundary
--   [12] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_grammar_applied_to_the_grammar_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammar_applied_to_the_grammar_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_grammar_applied_to_the_grammar_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_grammar_applied_to_the_grammar_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammar_applied_to_the_grammar_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_grammar_applied_to_the_grammar_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_grammar_applied_to_the_grammar_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_grammar_applied_to_the_grammar_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_grammar_applied_to_the_grammar_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_grammar_applied_to_the_grammar_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_grammar_applied_to_the_grammar_protocol : IGProtocol the_grammar_applied_to_the_grammar_s0 the_grammar_applied_to_the_grammar_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_grammar_applied_to_the_grammar_s10 the_grammar_applied_to_the_grammar_s10 = the_grammar_applied_to_the_grammar_s10 (idempotent)
  (.seq (.arrow the_grammar_applied_to_the_grammar_l0 the_grammar_applied_to_the_grammar_s0 the_grammar_applied_to_the_grammar_s1) (.seq (.arrow the_grammar_applied_to_the_grammar_l1 the_grammar_applied_to_the_grammar_s1 the_grammar_applied_to_the_grammar_s2) (.seq (.prod (.arrow the_grammar_applied_to_the_grammar_l2 the_grammar_applied_to_the_grammar_s2 the_grammar_applied_to_the_grammar_s10) (.arrow the_grammar_applied_to_the_grammar_l2 the_grammar_applied_to_the_grammar_s2 the_grammar_applied_to_the_grammar_s10)) (.seq (.arrow the_grammar_applied_to_the_grammar_l10 the_grammar_applied_to_the_grammar_s10 the_grammar_applied_to_the_grammar_s10) (.seq (.arrow the_grammar_applied_to_the_grammar_l10 the_grammar_applied_to_the_grammar_s10 the_grammar_applied_to_the_grammar_s11) (.arrow the_grammar_applied_to_the_grammar_l11 the_grammar_applied_to_the_grammar_s11 the_grammar_applied_to_the_grammar_s12))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_grammar_applied_to_the_grammar_true_arm : IGProtocol the_grammar_applied_to_the_grammar_s0 the_grammar_applied_to_the_grammar_s12 :=
  (the_grammar_applied_to_the_grammar_protocol).restrictToEVALT

-- false arm
noncomputable def the_grammar_applied_to_the_grammar_false_arm : IGProtocol the_grammar_applied_to_the_grammar_s0 the_grammar_applied_to_the_grammar_s12 :=
  (the_grammar_applied_to_the_grammar_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_grammar_applied_to_the_grammar_tier : OuroboricityTier := TierFunctor.obj the_grammar_applied_to_the_grammar_s0
#eval the_grammar_applied_to_the_grammar_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_grammar_applied_to_the_grammar_frobenius :
    igFrobeniusAlg.mul the_grammar_applied_to_the_grammar_s0 the_grammar_applied_to_the_grammar_s0 = the_grammar_applied_to_the_grammar_s0 :=
  igFrobAlg_self_fusion the_grammar_applied_to_the_grammar_s0
