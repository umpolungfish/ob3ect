-- IGProtocol scaffold: VINIT → IFIX → FSPLIT → EVALT → IMSCRIB → EVALF → FSPLIT → AFWD → AREV → CLINK → IMSCRIB → FFUSE → ENGAGR → IFIX → TANCH
-- Class: the flat degree-4 Q(sqrt2,sqrt13) engine that already verifies the symmetric moduli becomes the flat degree-288 List-of-rationals engine carrying all twelve coordinates, reusing the same reduceFuel/mulNF reduction that already closes theta^288 by native_decide
-- Fingerprint: sig=(7,3,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑚  | irreversible fixation — winding number
--   [2] FSPLIT    gran   := 𐑚               𐑭 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑠  | evaluate-true — criticality gate open
--   [4] IMSCRIB   gram   := 𐑠               ⊙ → 𐑖  | identity — self-imscription
--   [5] EVALF     chir   := 𐑖               𐑠 → 𐑚  | evaluate-false — chirality check
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [13] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_protocol : IGProtocol the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 = the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 (idempotent)
  (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s1) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l1 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s1 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s2) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l2 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s2 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s3) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l3 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s3 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s4) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l4 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s4 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s5) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l5 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s5 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s6) (.seq (.prod (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l6 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s6 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11) (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l6 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s6 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11)) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l11 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l11 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s11 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s12) (.seq (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l12 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s12 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s13) (.arrow the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_l13 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s13 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s14)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_true_arm : IGProtocol the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s14 :=
  (the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_protocol).restrictToEVALT

-- false arm
noncomputable def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_false_arm : IGProtocol the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s14 :=
  (the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_tier : OuroboricityTier := TierFunctor.obj the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0
#eval the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_frobenius :
    igFrobeniusAlg.mul the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 = the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0 :=
  igFrobAlg_self_fusion the_flat_degree_4_q_sqrt2_sqrt13_engine_3fd7d1_s0
