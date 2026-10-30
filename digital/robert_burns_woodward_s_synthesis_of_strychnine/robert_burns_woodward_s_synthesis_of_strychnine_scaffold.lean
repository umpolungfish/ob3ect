-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → CLINK → FSPLIT → EVALT → EVALF → FFUSE → AREV → AFWD → ENGAGR → CLINK → IFIX → TANCH
-- Class: Robert Burns Woodward's synthesis of Strychnine in 1954
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [3] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑾  | reverse morphism — parity flip
--   [9] AFWD      rel    := 𐑾               𐑗 → 𐑳  | forward morphism — bidirectional arrow
--   [10] ENGAGR    stoi   := 𐑳               𐑾 → 𐑱  | engage paradox — B-state, both arms
--   [11] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def robert_burns_woodwards_synthesis_of_7725bd_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def robert_burns_woodwards_synthesis_of_7725bd_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def robert_burns_woodwards_synthesis_of_7725bd_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def robert_burns_woodwards_synthesis_of_7725bd_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def robert_burns_woodwards_synthesis_of_7725bd_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def robert_burns_woodwards_synthesis_of_7725bd_protocol : IGProtocol robert_burns_woodwards_synthesis_of_7725bd_s0 robert_burns_woodwards_synthesis_of_7725bd_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct robert_burns_woodwards_synthesis_of_7725bd_s7 robert_burns_woodwards_synthesis_of_7725bd_s7 = robert_burns_woodwards_synthesis_of_7725bd_s7 (idempotent)
  (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l0 robert_burns_woodwards_synthesis_of_7725bd_s0 robert_burns_woodwards_synthesis_of_7725bd_s1) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l1 robert_burns_woodwards_synthesis_of_7725bd_s1 robert_burns_woodwards_synthesis_of_7725bd_s2) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l2 robert_burns_woodwards_synthesis_of_7725bd_s2 robert_burns_woodwards_synthesis_of_7725bd_s3) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l3 robert_burns_woodwards_synthesis_of_7725bd_s3 robert_burns_woodwards_synthesis_of_7725bd_s4) (.seq (.prod (.arrow robert_burns_woodwards_synthesis_of_7725bd_l4 robert_burns_woodwards_synthesis_of_7725bd_s4 robert_burns_woodwards_synthesis_of_7725bd_s7) (.arrow robert_burns_woodwards_synthesis_of_7725bd_l4 robert_burns_woodwards_synthesis_of_7725bd_s4 robert_burns_woodwards_synthesis_of_7725bd_s7)) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l7 robert_burns_woodwards_synthesis_of_7725bd_s7 robert_burns_woodwards_synthesis_of_7725bd_s7) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l7 robert_burns_woodwards_synthesis_of_7725bd_s7 robert_burns_woodwards_synthesis_of_7725bd_s8) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l8 robert_burns_woodwards_synthesis_of_7725bd_s8 robert_burns_woodwards_synthesis_of_7725bd_s9) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l9 robert_burns_woodwards_synthesis_of_7725bd_s9 robert_burns_woodwards_synthesis_of_7725bd_s10) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l10 robert_burns_woodwards_synthesis_of_7725bd_s10 robert_burns_woodwards_synthesis_of_7725bd_s11) (.seq (.arrow robert_burns_woodwards_synthesis_of_7725bd_l11 robert_burns_woodwards_synthesis_of_7725bd_s11 robert_burns_woodwards_synthesis_of_7725bd_s12) (.arrow robert_burns_woodwards_synthesis_of_7725bd_l12 robert_burns_woodwards_synthesis_of_7725bd_s12 robert_burns_woodwards_synthesis_of_7725bd_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def robert_burns_woodwards_synthesis_of_7725bd_true_arm : IGProtocol robert_burns_woodwards_synthesis_of_7725bd_s0 robert_burns_woodwards_synthesis_of_7725bd_s13 :=
  (robert_burns_woodwards_synthesis_of_7725bd_protocol).restrictToEVALT

-- false arm
noncomputable def robert_burns_woodwards_synthesis_of_7725bd_false_arm : IGProtocol robert_burns_woodwards_synthesis_of_7725bd_s0 robert_burns_woodwards_synthesis_of_7725bd_s13 :=
  (robert_burns_woodwards_synthesis_of_7725bd_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def robert_burns_woodwards_synthesis_of_7725bd_tier : OuroboricityTier := TierFunctor.obj robert_burns_woodwards_synthesis_of_7725bd_s0
#eval robert_burns_woodwards_synthesis_of_7725bd_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem robert_burns_woodwards_synthesis_of_7725bd_frobenius :
    igFrobeniusAlg.mul robert_burns_woodwards_synthesis_of_7725bd_s0 robert_burns_woodwards_synthesis_of_7725bd_s0 = robert_burns_woodwards_synthesis_of_7725bd_s0 :=
  igFrobAlg_self_fusion robert_burns_woodwards_synthesis_of_7725bd_s0
