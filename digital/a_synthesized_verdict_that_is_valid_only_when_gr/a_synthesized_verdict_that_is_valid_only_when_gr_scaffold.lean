-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → ENGAGR → EVALF → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: A synthesized verdict that is valid only when grounded in an operation that actually executed. When the grounding operation ran, the verdict carries its result. When the operation did not run, the verdict about that operation is null and unmarked rather than asserted. The object is the binding itself: the invariant that a claim about an operation's outcome exists if and only if that operation was executed, and any narration unbound from execution collapses to the neither-value rather than to a truth-value.
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_synthesized_verdict_that_is_valid_405bc4_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_synthesized_verdict_that_is_valid_405bc4_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_synthesized_verdict_that_is_valid_405bc4_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_synthesized_verdict_that_is_valid_405bc4_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_synthesized_verdict_that_is_valid_405bc4_protocol : IGProtocol a_synthesized_verdict_that_is_valid_405bc4_s0 a_synthesized_verdict_that_is_valid_405bc4_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_synthesized_verdict_that_is_valid_405bc4_s10 a_synthesized_verdict_that_is_valid_405bc4_s10 = a_synthesized_verdict_that_is_valid_405bc4_s10 (idempotent)
  (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l0 a_synthesized_verdict_that_is_valid_405bc4_s0 a_synthesized_verdict_that_is_valid_405bc4_s1) (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l1 a_synthesized_verdict_that_is_valid_405bc4_s1 a_synthesized_verdict_that_is_valid_405bc4_s2) (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l2 a_synthesized_verdict_that_is_valid_405bc4_s2 a_synthesized_verdict_that_is_valid_405bc4_s3) (.seq (.prod (.arrow a_synthesized_verdict_that_is_valid_405bc4_l3 a_synthesized_verdict_that_is_valid_405bc4_s3 a_synthesized_verdict_that_is_valid_405bc4_s10) (.arrow a_synthesized_verdict_that_is_valid_405bc4_l3 a_synthesized_verdict_that_is_valid_405bc4_s3 a_synthesized_verdict_that_is_valid_405bc4_s10)) (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l10 a_synthesized_verdict_that_is_valid_405bc4_s10 a_synthesized_verdict_that_is_valid_405bc4_s10) (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l10 a_synthesized_verdict_that_is_valid_405bc4_s10 a_synthesized_verdict_that_is_valid_405bc4_s11) (.seq (.arrow a_synthesized_verdict_that_is_valid_405bc4_l11 a_synthesized_verdict_that_is_valid_405bc4_s11 a_synthesized_verdict_that_is_valid_405bc4_s12) (.arrow a_synthesized_verdict_that_is_valid_405bc4_l12 a_synthesized_verdict_that_is_valid_405bc4_s12 a_synthesized_verdict_that_is_valid_405bc4_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_synthesized_verdict_that_is_valid_405bc4_true_arm : IGProtocol a_synthesized_verdict_that_is_valid_405bc4_s0 a_synthesized_verdict_that_is_valid_405bc4_s13 :=
  (a_synthesized_verdict_that_is_valid_405bc4_protocol).restrictToEVALT

-- false arm
noncomputable def a_synthesized_verdict_that_is_valid_405bc4_false_arm : IGProtocol a_synthesized_verdict_that_is_valid_405bc4_s0 a_synthesized_verdict_that_is_valid_405bc4_s13 :=
  (a_synthesized_verdict_that_is_valid_405bc4_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_synthesized_verdict_that_is_valid_405bc4_tier : OuroboricityTier := TierFunctor.obj a_synthesized_verdict_that_is_valid_405bc4_s0
#eval a_synthesized_verdict_that_is_valid_405bc4_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_synthesized_verdict_that_is_valid_405bc4_frobenius :
    igFrobeniusAlg.mul a_synthesized_verdict_that_is_valid_405bc4_s0 a_synthesized_verdict_that_is_valid_405bc4_s0 = a_synthesized_verdict_that_is_valid_405bc4_s0 :=
  igFrobAlg_self_fusion a_synthesized_verdict_that_is_valid_405bc4_s0
