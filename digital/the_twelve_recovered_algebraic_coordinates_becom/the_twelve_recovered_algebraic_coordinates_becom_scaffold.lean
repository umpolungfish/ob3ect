-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → AFWD → IFIX → FFUSE → CLINK → IMSCRIB → FSPLIT → EVALT → IFIX → FFUSE → ENGAGR → AREV → EVALF → FFUSE → CLINK → EVALT → IFIX → TANCH
-- Class: the twelve recovered algebraic coordinates become explicit Tow elements over the quadratic-cyclotomic tower, each a pair of coefficient lists entered exactly
-- Fingerprint: sig=(9,5,5,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7), (10, 13)]

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
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [14] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [15] AREV      pol    := 𐑗               𐑳 → 𐑖  | reverse morphism — parity flip
--   [16] EVALF     chir   := 𐑖               𐑗 → 𐑙  | evaluate-false — chirality check
--   [17] FFUSE     stoi   := 𐑙               𐑖 → 𐑱  | fuse μ — assembly mode
--   [18] CLINK     fid    := 𐑱               𐑙 → ⊙  | composition — regime coherence
--   [19] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [20] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_twelve_recovered_algebraic_bb6dae_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_twelve_recovered_algebraic_bb6dae_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_twelve_recovered_algebraic_bb6dae_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_twelve_recovered_algebraic_bb6dae_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_twelve_recovered_algebraic_bb6dae_protocol : IGProtocol the_twelve_recovered_algebraic_bb6dae_s0 the_twelve_recovered_algebraic_bb6dae_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_twelve_recovered_algebraic_bb6dae_s7 the_twelve_recovered_algebraic_bb6dae_s7 = the_twelve_recovered_algebraic_bb6dae_s7 (idempotent)
  (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l0 the_twelve_recovered_algebraic_bb6dae_s0 the_twelve_recovered_algebraic_bb6dae_s1) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l1 the_twelve_recovered_algebraic_bb6dae_s1 the_twelve_recovered_algebraic_bb6dae_s2) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l2 the_twelve_recovered_algebraic_bb6dae_s2 the_twelve_recovered_algebraic_bb6dae_s3) (.seq (.prod (.arrow the_twelve_recovered_algebraic_bb6dae_l3 the_twelve_recovered_algebraic_bb6dae_s3 the_twelve_recovered_algebraic_bb6dae_s7) (.arrow the_twelve_recovered_algebraic_bb6dae_l3 the_twelve_recovered_algebraic_bb6dae_s3 the_twelve_recovered_algebraic_bb6dae_s7)) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l7 the_twelve_recovered_algebraic_bb6dae_s7 the_twelve_recovered_algebraic_bb6dae_s7) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l7 the_twelve_recovered_algebraic_bb6dae_s7 the_twelve_recovered_algebraic_bb6dae_s8) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l8 the_twelve_recovered_algebraic_bb6dae_s8 the_twelve_recovered_algebraic_bb6dae_s9) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l9 the_twelve_recovered_algebraic_bb6dae_s9 the_twelve_recovered_algebraic_bb6dae_s10) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l10 the_twelve_recovered_algebraic_bb6dae_s10 the_twelve_recovered_algebraic_bb6dae_s11) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l11 the_twelve_recovered_algebraic_bb6dae_s11 the_twelve_recovered_algebraic_bb6dae_s12) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l12 the_twelve_recovered_algebraic_bb6dae_s12 the_twelve_recovered_algebraic_bb6dae_s13) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l13 the_twelve_recovered_algebraic_bb6dae_s13 the_twelve_recovered_algebraic_bb6dae_s14) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l14 the_twelve_recovered_algebraic_bb6dae_s14 the_twelve_recovered_algebraic_bb6dae_s15) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l15 the_twelve_recovered_algebraic_bb6dae_s15 the_twelve_recovered_algebraic_bb6dae_s16) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l16 the_twelve_recovered_algebraic_bb6dae_s16 the_twelve_recovered_algebraic_bb6dae_s17) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l17 the_twelve_recovered_algebraic_bb6dae_s17 the_twelve_recovered_algebraic_bb6dae_s18) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l18 the_twelve_recovered_algebraic_bb6dae_s18 the_twelve_recovered_algebraic_bb6dae_s19) (.seq (.arrow the_twelve_recovered_algebraic_bb6dae_l19 the_twelve_recovered_algebraic_bb6dae_s19 the_twelve_recovered_algebraic_bb6dae_s20) (.arrow the_twelve_recovered_algebraic_bb6dae_l20 the_twelve_recovered_algebraic_bb6dae_s20 the_twelve_recovered_algebraic_bb6dae_s21)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_twelve_recovered_algebraic_bb6dae_true_arm : IGProtocol the_twelve_recovered_algebraic_bb6dae_s0 the_twelve_recovered_algebraic_bb6dae_s21 :=
  (the_twelve_recovered_algebraic_bb6dae_protocol).restrictToEVALT

-- false arm
noncomputable def the_twelve_recovered_algebraic_bb6dae_false_arm : IGProtocol the_twelve_recovered_algebraic_bb6dae_s0 the_twelve_recovered_algebraic_bb6dae_s21 :=
  (the_twelve_recovered_algebraic_bb6dae_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_twelve_recovered_algebraic_bb6dae_tier : OuroboricityTier := TierFunctor.obj the_twelve_recovered_algebraic_bb6dae_s0
#eval the_twelve_recovered_algebraic_bb6dae_tier  -- the Grammar's own verdict on its tier
