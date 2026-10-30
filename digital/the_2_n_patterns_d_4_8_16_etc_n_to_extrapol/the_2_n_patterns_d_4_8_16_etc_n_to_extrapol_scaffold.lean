-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → ENGAGR → CLINK → IFIX → TANCH
-- Class: the 2^n patterns (d=4,8,16, etc.)\n# to extrapolate to d=2048
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [8] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [9] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [10] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_protocol : IGProtocol the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 = the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 (idempotent)
  (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s1) (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l1 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s1 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s2) (.seq (.prod (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l2 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s2 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7) (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l2 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s2 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7)) (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l7 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7) (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l7 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s7 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s8) (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l8 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s8 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s9) (.seq (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l9 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s9 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s10) (.arrow the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_l10 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s10 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_true_arm : IGProtocol the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s11 :=
  (the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_protocol).restrictToEVALT

-- false arm
noncomputable def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_false_arm : IGProtocol the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s11 :=
  (the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_tier : OuroboricityTier := TierFunctor.obj the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0
#eval the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_frobenius :
    igFrobeniusAlg.mul the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 = the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0 :=
  igFrobAlg_self_fusion the_2_n_patterns_d_4_8_16_etc_n_to_d20d36_s0
