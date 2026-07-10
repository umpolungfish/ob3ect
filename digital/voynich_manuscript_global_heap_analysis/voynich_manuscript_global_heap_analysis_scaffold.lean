-- IGProtocol scaffold: VINIT → IMSCRIB → IMSCRIB → CLINK → FSPLIT → EVALT → EVALF → FFUSE → CLINK → FSPLIT → EVALT → FFUSE → CLINK → FSPLIT → ENGAGR → EVALT → FFUSE → CLINK → IFIX → CLINK → FSPLIT → EVALT → AREV → EVALF → FFUSE → CLINK → IFIX → TANCH
-- Class: Voynich Manuscript Global Heap Analysis
-- Fingerprint: sig=(11,8,7,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=28
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(4, 7), (9, 11), (13, 16), (20, 24)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑠  | identity — self-imscription
--   [2] IMSCRIB   gram   := 𐑠               𐑠 → 𐑱  | identity — self-imscription
--   [3] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [17] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [18] IFIX      prot   := 𐑭               𐑱 → 𐑱  | irreversible fixation — winding number
--   [19] CLINK     fid    := 𐑱               𐑭 → 𐑚  | composition — regime coherence
--   [20] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [21] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [22] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [23] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [24] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [25] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [26] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [27] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def voynich_manuscript_global_heap_analysis_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s10 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s11 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s12 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s13 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s14 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def voynich_manuscript_global_heap_analysis_s15 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def voynich_manuscript_global_heap_analysis_s16 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s17 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_s18 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s19 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s20 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s21 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s22 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s23 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s24 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s25 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s26 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_s27 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def voynich_manuscript_global_heap_analysis_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def voynich_manuscript_global_heap_analysis_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_manuscript_global_heap_analysis_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def voynich_manuscript_global_heap_analysis_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def voynich_manuscript_global_heap_analysis_protocol : IGProtocol voynich_manuscript_global_heap_analysis_s0 voynich_manuscript_global_heap_analysis_s27 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct voynich_manuscript_global_heap_analysis_s7 voynich_manuscript_global_heap_analysis_s7 = voynich_manuscript_global_heap_analysis_s7 (idempotent)
  (.seq (.arrow voynich_manuscript_global_heap_analysis_l0 voynich_manuscript_global_heap_analysis_s0 voynich_manuscript_global_heap_analysis_s1) (.seq (.arrow voynich_manuscript_global_heap_analysis_l1 voynich_manuscript_global_heap_analysis_s1 voynich_manuscript_global_heap_analysis_s2) (.seq (.arrow voynich_manuscript_global_heap_analysis_l2 voynich_manuscript_global_heap_analysis_s2 voynich_manuscript_global_heap_analysis_s3) (.seq (.arrow voynich_manuscript_global_heap_analysis_l3 voynich_manuscript_global_heap_analysis_s3 voynich_manuscript_global_heap_analysis_s4) (.seq (.prod (.arrow voynich_manuscript_global_heap_analysis_l4 voynich_manuscript_global_heap_analysis_s4 voynich_manuscript_global_heap_analysis_s7) (.arrow voynich_manuscript_global_heap_analysis_l4 voynich_manuscript_global_heap_analysis_s4 voynich_manuscript_global_heap_analysis_s7)) (.seq (.arrow voynich_manuscript_global_heap_analysis_l7 voynich_manuscript_global_heap_analysis_s7 voynich_manuscript_global_heap_analysis_s7) (.seq (.arrow voynich_manuscript_global_heap_analysis_l7 voynich_manuscript_global_heap_analysis_s7 voynich_manuscript_global_heap_analysis_s8) (.seq (.arrow voynich_manuscript_global_heap_analysis_l8 voynich_manuscript_global_heap_analysis_s8 voynich_manuscript_global_heap_analysis_s9) (.seq (.arrow voynich_manuscript_global_heap_analysis_l9 voynich_manuscript_global_heap_analysis_s9 voynich_manuscript_global_heap_analysis_s10) (.seq (.arrow voynich_manuscript_global_heap_analysis_l10 voynich_manuscript_global_heap_analysis_s10 voynich_manuscript_global_heap_analysis_s11) (.seq (.arrow voynich_manuscript_global_heap_analysis_l11 voynich_manuscript_global_heap_analysis_s11 voynich_manuscript_global_heap_analysis_s12) (.seq (.arrow voynich_manuscript_global_heap_analysis_l12 voynich_manuscript_global_heap_analysis_s12 voynich_manuscript_global_heap_analysis_s13) (.seq (.arrow voynich_manuscript_global_heap_analysis_l13 voynich_manuscript_global_heap_analysis_s13 voynich_manuscript_global_heap_analysis_s14) (.seq (.arrow voynich_manuscript_global_heap_analysis_l14 voynich_manuscript_global_heap_analysis_s14 voynich_manuscript_global_heap_analysis_s15) (.seq (.arrow voynich_manuscript_global_heap_analysis_l15 voynich_manuscript_global_heap_analysis_s15 voynich_manuscript_global_heap_analysis_s16) (.seq (.arrow voynich_manuscript_global_heap_analysis_l16 voynich_manuscript_global_heap_analysis_s16 voynich_manuscript_global_heap_analysis_s17) (.seq (.arrow voynich_manuscript_global_heap_analysis_l17 voynich_manuscript_global_heap_analysis_s17 voynich_manuscript_global_heap_analysis_s18) (.seq (.arrow voynich_manuscript_global_heap_analysis_l18 voynich_manuscript_global_heap_analysis_s18 voynich_manuscript_global_heap_analysis_s19) (.seq (.arrow voynich_manuscript_global_heap_analysis_l19 voynich_manuscript_global_heap_analysis_s19 voynich_manuscript_global_heap_analysis_s20) (.seq (.arrow voynich_manuscript_global_heap_analysis_l20 voynich_manuscript_global_heap_analysis_s20 voynich_manuscript_global_heap_analysis_s21) (.seq (.arrow voynich_manuscript_global_heap_analysis_l21 voynich_manuscript_global_heap_analysis_s21 voynich_manuscript_global_heap_analysis_s22) (.seq (.arrow voynich_manuscript_global_heap_analysis_l22 voynich_manuscript_global_heap_analysis_s22 voynich_manuscript_global_heap_analysis_s23) (.seq (.arrow voynich_manuscript_global_heap_analysis_l23 voynich_manuscript_global_heap_analysis_s23 voynich_manuscript_global_heap_analysis_s24) (.seq (.arrow voynich_manuscript_global_heap_analysis_l24 voynich_manuscript_global_heap_analysis_s24 voynich_manuscript_global_heap_analysis_s25) (.seq (.arrow voynich_manuscript_global_heap_analysis_l25 voynich_manuscript_global_heap_analysis_s25 voynich_manuscript_global_heap_analysis_s26) (.arrow voynich_manuscript_global_heap_analysis_l26 voynich_manuscript_global_heap_analysis_s26 voynich_manuscript_global_heap_analysis_s27))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def voynich_manuscript_global_heap_analysis_true_arm : IGProtocol voynich_manuscript_global_heap_analysis_s0 voynich_manuscript_global_heap_analysis_s27 :=
  (voynich_manuscript_global_heap_analysis_protocol).restrictToEVALT

-- false arm
noncomputable def voynich_manuscript_global_heap_analysis_false_arm : IGProtocol voynich_manuscript_global_heap_analysis_s0 voynich_manuscript_global_heap_analysis_s27 :=
  (voynich_manuscript_global_heap_analysis_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def voynich_manuscript_global_heap_analysis_tier : OuroboricityTier := TierFunctor.obj voynich_manuscript_global_heap_analysis_s0
#eval voynich_manuscript_global_heap_analysis_tier  -- the Grammar's own verdict on its tier
