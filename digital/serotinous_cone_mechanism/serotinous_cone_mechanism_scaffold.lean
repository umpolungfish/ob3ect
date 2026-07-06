-- IGProtocol scaffold: VINIT → TANCH → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → CLINK → FFUSE → ENGAGR → IFIX → CLINK → AFWD → AREV → CLINK → IMSCRIB → IFIX → TANCH → CLINK → IMSCRIB → IFIX → AFWD → AREV → CLINK → IMSCRIB → TANCH
-- Class: serotinous cone mechanism
-- Fingerprint: sig=(23,2,3,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=31
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑗  | forward morphism — bidirectional arrow
--   [3] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [15] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [16] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [17] AFWD      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [18] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [19] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [20] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [21] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [22] TANCH     top    := 𐑡               𐑭 → 𐑱  | terminal object — connectivity boundary
--   [23] CLINK     fid    := 𐑱               𐑡 → 𐑠  | composition — regime coherence
--   [24] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [25] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [26] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [27] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [28] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [29] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [30] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def serotinous_cone_mechanism_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def serotinous_cone_mechanism_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def serotinous_cone_mechanism_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def serotinous_cone_mechanism_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def serotinous_cone_mechanism_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def serotinous_cone_mechanism_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def serotinous_cone_mechanism_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def serotinous_cone_mechanism_l26 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def serotinous_cone_mechanism_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def serotinous_cone_mechanism_protocol : IGProtocol serotinous_cone_mechanism_s0 serotinous_cone_mechanism_s30 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct serotinous_cone_mechanism_s13 serotinous_cone_mechanism_s13 = serotinous_cone_mechanism_s13 (idempotent)
  (.seq (.arrow serotinous_cone_mechanism_l0 serotinous_cone_mechanism_s0 serotinous_cone_mechanism_s1) (.seq (.arrow serotinous_cone_mechanism_l1 serotinous_cone_mechanism_s1 serotinous_cone_mechanism_s2) (.seq (.arrow serotinous_cone_mechanism_l2 serotinous_cone_mechanism_s2 serotinous_cone_mechanism_s3) (.seq (.arrow serotinous_cone_mechanism_l3 serotinous_cone_mechanism_s3 serotinous_cone_mechanism_s4) (.seq (.arrow serotinous_cone_mechanism_l4 serotinous_cone_mechanism_s4 serotinous_cone_mechanism_s5) (.seq (.arrow serotinous_cone_mechanism_l5 serotinous_cone_mechanism_s5 serotinous_cone_mechanism_s6) (.seq (.prod (.arrow serotinous_cone_mechanism_l6 serotinous_cone_mechanism_s6 serotinous_cone_mechanism_s13) (.arrow serotinous_cone_mechanism_l6 serotinous_cone_mechanism_s6 serotinous_cone_mechanism_s13)) (.seq (.arrow serotinous_cone_mechanism_l13 serotinous_cone_mechanism_s13 serotinous_cone_mechanism_s13) (.seq (.arrow serotinous_cone_mechanism_l13 serotinous_cone_mechanism_s13 serotinous_cone_mechanism_s14) (.seq (.arrow serotinous_cone_mechanism_l14 serotinous_cone_mechanism_s14 serotinous_cone_mechanism_s15) (.seq (.arrow serotinous_cone_mechanism_l15 serotinous_cone_mechanism_s15 serotinous_cone_mechanism_s16) (.seq (.arrow serotinous_cone_mechanism_l16 serotinous_cone_mechanism_s16 serotinous_cone_mechanism_s17) (.seq (.arrow serotinous_cone_mechanism_l17 serotinous_cone_mechanism_s17 serotinous_cone_mechanism_s18) (.seq (.arrow serotinous_cone_mechanism_l18 serotinous_cone_mechanism_s18 serotinous_cone_mechanism_s19) (.seq (.arrow serotinous_cone_mechanism_l19 serotinous_cone_mechanism_s19 serotinous_cone_mechanism_s20) (.seq (.arrow serotinous_cone_mechanism_l20 serotinous_cone_mechanism_s20 serotinous_cone_mechanism_s21) (.seq (.arrow serotinous_cone_mechanism_l21 serotinous_cone_mechanism_s21 serotinous_cone_mechanism_s22) (.seq (.arrow serotinous_cone_mechanism_l22 serotinous_cone_mechanism_s22 serotinous_cone_mechanism_s23) (.seq (.arrow serotinous_cone_mechanism_l23 serotinous_cone_mechanism_s23 serotinous_cone_mechanism_s24) (.seq (.arrow serotinous_cone_mechanism_l24 serotinous_cone_mechanism_s24 serotinous_cone_mechanism_s25) (.seq (.arrow serotinous_cone_mechanism_l25 serotinous_cone_mechanism_s25 serotinous_cone_mechanism_s26) (.seq (.arrow serotinous_cone_mechanism_l26 serotinous_cone_mechanism_s26 serotinous_cone_mechanism_s27) (.seq (.arrow serotinous_cone_mechanism_l27 serotinous_cone_mechanism_s27 serotinous_cone_mechanism_s28) (.seq (.arrow serotinous_cone_mechanism_l28 serotinous_cone_mechanism_s28 serotinous_cone_mechanism_s29) (.arrow serotinous_cone_mechanism_l29 serotinous_cone_mechanism_s29 serotinous_cone_mechanism_s30)))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def serotinous_cone_mechanism_true_arm : IGProtocol serotinous_cone_mechanism_s0 serotinous_cone_mechanism_s30 :=
  (serotinous_cone_mechanism_protocol).restrictToEVALT

-- false arm
noncomputable def serotinous_cone_mechanism_false_arm : IGProtocol serotinous_cone_mechanism_s0 serotinous_cone_mechanism_s30 :=
  (serotinous_cone_mechanism_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def serotinous_cone_mechanism_tier : OuroboricityTier := TierFunctor.obj serotinous_cone_mechanism_s0
#eval serotinous_cone_mechanism_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem serotinous_cone_mechanism_frobenius :
    igFrobeniusAlg.mul serotinous_cone_mechanism_s0 serotinous_cone_mechanism_s0 = serotinous_cone_mechanism_s0 :=
  igFrobAlg_self_fusion serotinous_cone_mechanism_s0
