-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → FFUSE → CLINK → AFWD → FSPLIT → ENGAGR → AREV → EVALF → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: thinking about thinking about how strange thought is
-- Fingerprint: sig=(8,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 5), (8, 12)]

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
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [7] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [13] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def thinking_about_thinking_about_how_60e7e1_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def thinking_about_thinking_about_how_60e7e1_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def thinking_about_thinking_about_how_60e7e1_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_thinking_about_how_60e7e1_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def thinking_about_thinking_about_how_60e7e1_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def thinking_about_thinking_about_how_60e7e1_protocol : IGProtocol thinking_about_thinking_about_how_60e7e1_s0 thinking_about_thinking_about_how_60e7e1_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct thinking_about_thinking_about_how_60e7e1_s5 thinking_about_thinking_about_how_60e7e1_s5 = thinking_about_thinking_about_how_60e7e1_s5 (idempotent)
  (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l0 thinking_about_thinking_about_how_60e7e1_s0 thinking_about_thinking_about_how_60e7e1_s1) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l1 thinking_about_thinking_about_how_60e7e1_s1 thinking_about_thinking_about_how_60e7e1_s2) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l2 thinking_about_thinking_about_how_60e7e1_s2 thinking_about_thinking_about_how_60e7e1_s3) (.seq (.prod (.arrow thinking_about_thinking_about_how_60e7e1_l3 thinking_about_thinking_about_how_60e7e1_s3 thinking_about_thinking_about_how_60e7e1_s5) (.arrow thinking_about_thinking_about_how_60e7e1_l3 thinking_about_thinking_about_how_60e7e1_s3 thinking_about_thinking_about_how_60e7e1_s5)) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l5 thinking_about_thinking_about_how_60e7e1_s5 thinking_about_thinking_about_how_60e7e1_s5) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l5 thinking_about_thinking_about_how_60e7e1_s5 thinking_about_thinking_about_how_60e7e1_s6) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l6 thinking_about_thinking_about_how_60e7e1_s6 thinking_about_thinking_about_how_60e7e1_s7) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l7 thinking_about_thinking_about_how_60e7e1_s7 thinking_about_thinking_about_how_60e7e1_s8) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l8 thinking_about_thinking_about_how_60e7e1_s8 thinking_about_thinking_about_how_60e7e1_s9) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l9 thinking_about_thinking_about_how_60e7e1_s9 thinking_about_thinking_about_how_60e7e1_s10) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l10 thinking_about_thinking_about_how_60e7e1_s10 thinking_about_thinking_about_how_60e7e1_s11) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l11 thinking_about_thinking_about_how_60e7e1_s11 thinking_about_thinking_about_how_60e7e1_s12) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l12 thinking_about_thinking_about_how_60e7e1_s12 thinking_about_thinking_about_how_60e7e1_s13) (.seq (.arrow thinking_about_thinking_about_how_60e7e1_l13 thinking_about_thinking_about_how_60e7e1_s13 thinking_about_thinking_about_how_60e7e1_s14) (.arrow thinking_about_thinking_about_how_60e7e1_l14 thinking_about_thinking_about_how_60e7e1_s14 thinking_about_thinking_about_how_60e7e1_s15)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def thinking_about_thinking_about_how_60e7e1_true_arm : IGProtocol thinking_about_thinking_about_how_60e7e1_s0 thinking_about_thinking_about_how_60e7e1_s15 :=
  (thinking_about_thinking_about_how_60e7e1_protocol).restrictToEVALT

-- false arm
noncomputable def thinking_about_thinking_about_how_60e7e1_false_arm : IGProtocol thinking_about_thinking_about_how_60e7e1_s0 thinking_about_thinking_about_how_60e7e1_s15 :=
  (thinking_about_thinking_about_how_60e7e1_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def thinking_about_thinking_about_how_60e7e1_tier : OuroboricityTier := TierFunctor.obj thinking_about_thinking_about_how_60e7e1_s0
#eval thinking_about_thinking_about_how_60e7e1_tier  -- the Grammar's own verdict on its tier
