-- IGProtocol scaffold: VINIT → AREV → FSPLIT → EVALT → EVALF → FFUSE → IFIX → AFWD → CLINK → AFWD → CLINK → IMSCRIB → IFIX → FSPLIT → EVALT → EVALF → AREV → FFUSE → CLINK → ENGAGR → AFWD → CLINK → IMSCRIB → AFWD → EVALT → IFIX → TANCH
-- Class: Entire Reaction-by-Reaction Retrosynthetic Route to Strychnine in 1954
-- Fingerprint: sig=(14,4,6,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=27
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5), (13, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑗  | initial object — ground of distinction
--   [1] AREV      pol    := 𐑗               𐑼 → 𐑚  | reverse morphism — parity flip
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [7] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [10] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [16] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [18] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [19] ENGAGR    stoi   := 𐑳               𐑱 → 𐑾  | engage paradox — B-state, both arms
--   [20] AFWD      rel    := 𐑾               𐑳 → 𐑱  | forward morphism — bidirectional arrow
--   [21] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [22] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [23] AFWD      rel    := 𐑾               𐑠 → ⊙  | forward morphism — bidirectional arrow
--   [24] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [25] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [26] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def entire_reaction_by_reaction_7ee953_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def entire_reaction_by_reaction_7ee953_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def entire_reaction_by_reaction_7ee953_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def entire_reaction_by_reaction_7ee953_l20 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def entire_reaction_by_reaction_7ee953_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def entire_reaction_by_reaction_7ee953_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def entire_reaction_by_reaction_7ee953_protocol : IGProtocol entire_reaction_by_reaction_7ee953_s0 entire_reaction_by_reaction_7ee953_s26 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct entire_reaction_by_reaction_7ee953_s5 entire_reaction_by_reaction_7ee953_s5 = entire_reaction_by_reaction_7ee953_s5 (idempotent)
  (.seq (.arrow entire_reaction_by_reaction_7ee953_l0 entire_reaction_by_reaction_7ee953_s0 entire_reaction_by_reaction_7ee953_s1) (.seq (.arrow entire_reaction_by_reaction_7ee953_l1 entire_reaction_by_reaction_7ee953_s1 entire_reaction_by_reaction_7ee953_s2) (.seq (.prod (.arrow entire_reaction_by_reaction_7ee953_l2 entire_reaction_by_reaction_7ee953_s2 entire_reaction_by_reaction_7ee953_s5) (.arrow entire_reaction_by_reaction_7ee953_l2 entire_reaction_by_reaction_7ee953_s2 entire_reaction_by_reaction_7ee953_s5)) (.seq (.arrow entire_reaction_by_reaction_7ee953_l5 entire_reaction_by_reaction_7ee953_s5 entire_reaction_by_reaction_7ee953_s5) (.seq (.arrow entire_reaction_by_reaction_7ee953_l5 entire_reaction_by_reaction_7ee953_s5 entire_reaction_by_reaction_7ee953_s6) (.seq (.arrow entire_reaction_by_reaction_7ee953_l6 entire_reaction_by_reaction_7ee953_s6 entire_reaction_by_reaction_7ee953_s7) (.seq (.arrow entire_reaction_by_reaction_7ee953_l7 entire_reaction_by_reaction_7ee953_s7 entire_reaction_by_reaction_7ee953_s8) (.seq (.arrow entire_reaction_by_reaction_7ee953_l8 entire_reaction_by_reaction_7ee953_s8 entire_reaction_by_reaction_7ee953_s9) (.seq (.arrow entire_reaction_by_reaction_7ee953_l9 entire_reaction_by_reaction_7ee953_s9 entire_reaction_by_reaction_7ee953_s10) (.seq (.arrow entire_reaction_by_reaction_7ee953_l10 entire_reaction_by_reaction_7ee953_s10 entire_reaction_by_reaction_7ee953_s11) (.seq (.arrow entire_reaction_by_reaction_7ee953_l11 entire_reaction_by_reaction_7ee953_s11 entire_reaction_by_reaction_7ee953_s12) (.seq (.arrow entire_reaction_by_reaction_7ee953_l12 entire_reaction_by_reaction_7ee953_s12 entire_reaction_by_reaction_7ee953_s13) (.seq (.arrow entire_reaction_by_reaction_7ee953_l13 entire_reaction_by_reaction_7ee953_s13 entire_reaction_by_reaction_7ee953_s14) (.seq (.arrow entire_reaction_by_reaction_7ee953_l14 entire_reaction_by_reaction_7ee953_s14 entire_reaction_by_reaction_7ee953_s15) (.seq (.arrow entire_reaction_by_reaction_7ee953_l15 entire_reaction_by_reaction_7ee953_s15 entire_reaction_by_reaction_7ee953_s16) (.seq (.arrow entire_reaction_by_reaction_7ee953_l16 entire_reaction_by_reaction_7ee953_s16 entire_reaction_by_reaction_7ee953_s17) (.seq (.arrow entire_reaction_by_reaction_7ee953_l17 entire_reaction_by_reaction_7ee953_s17 entire_reaction_by_reaction_7ee953_s18) (.seq (.arrow entire_reaction_by_reaction_7ee953_l18 entire_reaction_by_reaction_7ee953_s18 entire_reaction_by_reaction_7ee953_s19) (.seq (.arrow entire_reaction_by_reaction_7ee953_l19 entire_reaction_by_reaction_7ee953_s19 entire_reaction_by_reaction_7ee953_s20) (.seq (.arrow entire_reaction_by_reaction_7ee953_l20 entire_reaction_by_reaction_7ee953_s20 entire_reaction_by_reaction_7ee953_s21) (.seq (.arrow entire_reaction_by_reaction_7ee953_l21 entire_reaction_by_reaction_7ee953_s21 entire_reaction_by_reaction_7ee953_s22) (.seq (.arrow entire_reaction_by_reaction_7ee953_l22 entire_reaction_by_reaction_7ee953_s22 entire_reaction_by_reaction_7ee953_s23) (.seq (.arrow entire_reaction_by_reaction_7ee953_l23 entire_reaction_by_reaction_7ee953_s23 entire_reaction_by_reaction_7ee953_s24) (.seq (.arrow entire_reaction_by_reaction_7ee953_l24 entire_reaction_by_reaction_7ee953_s24 entire_reaction_by_reaction_7ee953_s25) (.arrow entire_reaction_by_reaction_7ee953_l25 entire_reaction_by_reaction_7ee953_s25 entire_reaction_by_reaction_7ee953_s26)))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def entire_reaction_by_reaction_7ee953_true_arm : IGProtocol entire_reaction_by_reaction_7ee953_s0 entire_reaction_by_reaction_7ee953_s26 :=
  (entire_reaction_by_reaction_7ee953_protocol).restrictToEVALT

-- false arm
noncomputable def entire_reaction_by_reaction_7ee953_false_arm : IGProtocol entire_reaction_by_reaction_7ee953_s0 entire_reaction_by_reaction_7ee953_s26 :=
  (entire_reaction_by_reaction_7ee953_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def entire_reaction_by_reaction_7ee953_tier : OuroboricityTier := TierFunctor.obj entire_reaction_by_reaction_7ee953_s0
#eval entire_reaction_by_reaction_7ee953_tier  -- the Grammar's own verdict on its tier
