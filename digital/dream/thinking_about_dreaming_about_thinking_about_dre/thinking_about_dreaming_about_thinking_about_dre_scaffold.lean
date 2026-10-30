-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → ENGAGR → AREV → FFUSE → AREV → FSPLIT → EVALF → IMSCRIB → FFUSE → IFIX → TANCH
-- Class: thinking about dreaming about thinking about dreaming about thinking you are in a dream
-- Fingerprint: sig=(11,5,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=21
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 13), (15, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [4] CLINK     fid    := 𐑱               ⊙ → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [6] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [14] AREV      pol    := 𐑗               𐑙 → 𐑚  | reverse morphism — parity flip
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [19] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [20] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def thinking_about_dreaming_about_thinking_63cd44_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def thinking_about_dreaming_about_thinking_63cd44_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def thinking_about_dreaming_about_thinking_63cd44_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def thinking_about_dreaming_about_thinking_63cd44_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def thinking_about_dreaming_about_thinking_63cd44_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def thinking_about_dreaming_about_thinking_63cd44_protocol : IGProtocol thinking_about_dreaming_about_thinking_63cd44_s0 thinking_about_dreaming_about_thinking_63cd44_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct thinking_about_dreaming_about_thinking_63cd44_s13 thinking_about_dreaming_about_thinking_63cd44_s13 = thinking_about_dreaming_about_thinking_63cd44_s13 (idempotent)
  (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l0 thinking_about_dreaming_about_thinking_63cd44_s0 thinking_about_dreaming_about_thinking_63cd44_s1) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l1 thinking_about_dreaming_about_thinking_63cd44_s1 thinking_about_dreaming_about_thinking_63cd44_s2) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l2 thinking_about_dreaming_about_thinking_63cd44_s2 thinking_about_dreaming_about_thinking_63cd44_s3) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l3 thinking_about_dreaming_about_thinking_63cd44_s3 thinking_about_dreaming_about_thinking_63cd44_s4) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l4 thinking_about_dreaming_about_thinking_63cd44_s4 thinking_about_dreaming_about_thinking_63cd44_s5) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l5 thinking_about_dreaming_about_thinking_63cd44_s5 thinking_about_dreaming_about_thinking_63cd44_s6) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l6 thinking_about_dreaming_about_thinking_63cd44_s6 thinking_about_dreaming_about_thinking_63cd44_s7) (.seq (.prod (.arrow thinking_about_dreaming_about_thinking_63cd44_l7 thinking_about_dreaming_about_thinking_63cd44_s7 thinking_about_dreaming_about_thinking_63cd44_s13) (.arrow thinking_about_dreaming_about_thinking_63cd44_l7 thinking_about_dreaming_about_thinking_63cd44_s7 thinking_about_dreaming_about_thinking_63cd44_s13)) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l13 thinking_about_dreaming_about_thinking_63cd44_s13 thinking_about_dreaming_about_thinking_63cd44_s13) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l13 thinking_about_dreaming_about_thinking_63cd44_s13 thinking_about_dreaming_about_thinking_63cd44_s14) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l14 thinking_about_dreaming_about_thinking_63cd44_s14 thinking_about_dreaming_about_thinking_63cd44_s15) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l15 thinking_about_dreaming_about_thinking_63cd44_s15 thinking_about_dreaming_about_thinking_63cd44_s16) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l16 thinking_about_dreaming_about_thinking_63cd44_s16 thinking_about_dreaming_about_thinking_63cd44_s17) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l17 thinking_about_dreaming_about_thinking_63cd44_s17 thinking_about_dreaming_about_thinking_63cd44_s18) (.seq (.arrow thinking_about_dreaming_about_thinking_63cd44_l18 thinking_about_dreaming_about_thinking_63cd44_s18 thinking_about_dreaming_about_thinking_63cd44_s19) (.arrow thinking_about_dreaming_about_thinking_63cd44_l19 thinking_about_dreaming_about_thinking_63cd44_s19 thinking_about_dreaming_about_thinking_63cd44_s20))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def thinking_about_dreaming_about_thinking_63cd44_true_arm : IGProtocol thinking_about_dreaming_about_thinking_63cd44_s0 thinking_about_dreaming_about_thinking_63cd44_s20 :=
  (thinking_about_dreaming_about_thinking_63cd44_protocol).restrictToEVALT

-- false arm
noncomputable def thinking_about_dreaming_about_thinking_63cd44_false_arm : IGProtocol thinking_about_dreaming_about_thinking_63cd44_s0 thinking_about_dreaming_about_thinking_63cd44_s20 :=
  (thinking_about_dreaming_about_thinking_63cd44_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def thinking_about_dreaming_about_thinking_63cd44_tier : OuroboricityTier := TierFunctor.obj thinking_about_dreaming_about_thinking_63cd44_s0
#eval thinking_about_dreaming_about_thinking_63cd44_tier  -- the Grammar's own verdict on its tier
