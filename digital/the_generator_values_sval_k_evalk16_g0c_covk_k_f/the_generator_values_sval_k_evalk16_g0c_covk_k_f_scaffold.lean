-- IGProtocol scaffold: VINIT → AFWD → EVALT → IFIX → AFWD → AREV → CLINK → IFIX → FSPLIT → EVALT → FFUSE → AFWD → FSPLIT → EVALT → FFUSE → CLINK → IMSCRIB → IFIX → ENGAGR → FFUSE → TANCH
-- Class: the generator values sVal(k)=√(evalK16(g0C, covK k)) for k∈{0,1,3,9} as complex square roots, iVal=Complex.I, c5Val as a complex root of x²+OA5(g0)x+OB5(g0)=0, and u1Val=√(evalK16(g0C,C2H)+i·evalK16(g0C,S2H)) extend the K16 evaluation to the full ring R
-- Fingerprint: sig=(9,5,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=21
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(8, 10), (12, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → ⊙  | forward morphism — bidirectional arrow
--   [2] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [3] IFIX      prot   := 𐑭               ⊙ → 𐑾  | irreversible fixation — winding number
--   [4] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [5] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [6] CLINK     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [11] AFWD      rel    := 𐑾               𐑙 → 𐑚  | forward morphism — bidirectional arrow
--   [12] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [15] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [16] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [17] IFIX      prot   := 𐑭               𐑠 → 𐑳  | irreversible fixation — winding number
--   [18] ENGAGR    stoi   := 𐑳               𐑭 → 𐑙  | engage paradox — B-state, both arms
--   [19] FFUSE     stoi   := 𐑙               𐑳 → 𐑡  | fuse μ — assembly mode
--   [20] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_generator_values_sval_k_evalk16_g0c_1405cc_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_generator_values_sval_k_evalk16_g0c_1405cc_protocol : IGProtocol the_generator_values_sval_k_evalk16_g0c_1405cc_s0 the_generator_values_sval_k_evalk16_g0c_1405cc_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_generator_values_sval_k_evalk16_g0c_1405cc_s10 the_generator_values_sval_k_evalk16_g0c_1405cc_s10 = the_generator_values_sval_k_evalk16_g0c_1405cc_s10 (idempotent)
  (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l0 the_generator_values_sval_k_evalk16_g0c_1405cc_s0 the_generator_values_sval_k_evalk16_g0c_1405cc_s1) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l1 the_generator_values_sval_k_evalk16_g0c_1405cc_s1 the_generator_values_sval_k_evalk16_g0c_1405cc_s2) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l2 the_generator_values_sval_k_evalk16_g0c_1405cc_s2 the_generator_values_sval_k_evalk16_g0c_1405cc_s3) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l3 the_generator_values_sval_k_evalk16_g0c_1405cc_s3 the_generator_values_sval_k_evalk16_g0c_1405cc_s4) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l4 the_generator_values_sval_k_evalk16_g0c_1405cc_s4 the_generator_values_sval_k_evalk16_g0c_1405cc_s5) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l5 the_generator_values_sval_k_evalk16_g0c_1405cc_s5 the_generator_values_sval_k_evalk16_g0c_1405cc_s6) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l6 the_generator_values_sval_k_evalk16_g0c_1405cc_s6 the_generator_values_sval_k_evalk16_g0c_1405cc_s7) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l7 the_generator_values_sval_k_evalk16_g0c_1405cc_s7 the_generator_values_sval_k_evalk16_g0c_1405cc_s8) (.seq (.prod (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l8 the_generator_values_sval_k_evalk16_g0c_1405cc_s8 the_generator_values_sval_k_evalk16_g0c_1405cc_s10) (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l8 the_generator_values_sval_k_evalk16_g0c_1405cc_s8 the_generator_values_sval_k_evalk16_g0c_1405cc_s10)) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l10 the_generator_values_sval_k_evalk16_g0c_1405cc_s10 the_generator_values_sval_k_evalk16_g0c_1405cc_s10) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l10 the_generator_values_sval_k_evalk16_g0c_1405cc_s10 the_generator_values_sval_k_evalk16_g0c_1405cc_s11) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l11 the_generator_values_sval_k_evalk16_g0c_1405cc_s11 the_generator_values_sval_k_evalk16_g0c_1405cc_s12) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l12 the_generator_values_sval_k_evalk16_g0c_1405cc_s12 the_generator_values_sval_k_evalk16_g0c_1405cc_s13) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l13 the_generator_values_sval_k_evalk16_g0c_1405cc_s13 the_generator_values_sval_k_evalk16_g0c_1405cc_s14) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l14 the_generator_values_sval_k_evalk16_g0c_1405cc_s14 the_generator_values_sval_k_evalk16_g0c_1405cc_s15) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l15 the_generator_values_sval_k_evalk16_g0c_1405cc_s15 the_generator_values_sval_k_evalk16_g0c_1405cc_s16) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l16 the_generator_values_sval_k_evalk16_g0c_1405cc_s16 the_generator_values_sval_k_evalk16_g0c_1405cc_s17) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l17 the_generator_values_sval_k_evalk16_g0c_1405cc_s17 the_generator_values_sval_k_evalk16_g0c_1405cc_s18) (.seq (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l18 the_generator_values_sval_k_evalk16_g0c_1405cc_s18 the_generator_values_sval_k_evalk16_g0c_1405cc_s19) (.arrow the_generator_values_sval_k_evalk16_g0c_1405cc_l19 the_generator_values_sval_k_evalk16_g0c_1405cc_s19 the_generator_values_sval_k_evalk16_g0c_1405cc_s20))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_generator_values_sval_k_evalk16_g0c_1405cc_true_arm : IGProtocol the_generator_values_sval_k_evalk16_g0c_1405cc_s0 the_generator_values_sval_k_evalk16_g0c_1405cc_s20 :=
  (the_generator_values_sval_k_evalk16_g0c_1405cc_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_generator_values_sval_k_evalk16_g0c_1405cc_tier : OuroboricityTier := TierFunctor.obj the_generator_values_sval_k_evalk16_g0c_1405cc_s0
#eval the_generator_values_sval_k_evalk16_g0c_1405cc_tier  -- the Grammar's own verdict on its tier
