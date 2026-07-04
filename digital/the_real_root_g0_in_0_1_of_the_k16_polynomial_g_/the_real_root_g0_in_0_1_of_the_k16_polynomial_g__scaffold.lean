-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → FFUSE → IFIX → IMSCRIB → CLINK → AFWD → ENGAGR → CLINK → IFIX → TANCH
-- Class: the real root g0 in (0,1) of the K16 polynomial g^16-10g^14+40g^12-90g^10+126g^8-96g^6+25g^4+2g^2+1 is exhibited constructively by the Intermediate Value Theorem, defining g0C = (g0:ℂ) as the coordinate at which all K16 evaluation takes place
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [7] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [8] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [9] AFWD      rel    := 𐑾               𐑱 → 𐑳  | forward morphism — bidirectional arrow
--   [10] ENGAGR    stoi   := 𐑳               𐑾 → 𐑱  | engage paradox — B-state, both arms
--   [11] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_real_root_g0_in_0_1_of_the_k16_f683ab_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_real_root_g0_in_0_1_of_the_k16_f683ab_protocol : IGProtocol the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 = the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 (idempotent)
  (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s1) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l1 the_real_root_g0_in_0_1_of_the_k16_f683ab_s1 the_real_root_g0_in_0_1_of_the_k16_f683ab_s2) (.seq (.prod (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l2 the_real_root_g0_in_0_1_of_the_k16_f683ab_s2 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5) (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l2 the_real_root_g0_in_0_1_of_the_k16_f683ab_s2 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5)) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l5 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l5 the_real_root_g0_in_0_1_of_the_k16_f683ab_s5 the_real_root_g0_in_0_1_of_the_k16_f683ab_s6) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l6 the_real_root_g0_in_0_1_of_the_k16_f683ab_s6 the_real_root_g0_in_0_1_of_the_k16_f683ab_s7) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l7 the_real_root_g0_in_0_1_of_the_k16_f683ab_s7 the_real_root_g0_in_0_1_of_the_k16_f683ab_s8) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l8 the_real_root_g0_in_0_1_of_the_k16_f683ab_s8 the_real_root_g0_in_0_1_of_the_k16_f683ab_s9) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l9 the_real_root_g0_in_0_1_of_the_k16_f683ab_s9 the_real_root_g0_in_0_1_of_the_k16_f683ab_s10) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l10 the_real_root_g0_in_0_1_of_the_k16_f683ab_s10 the_real_root_g0_in_0_1_of_the_k16_f683ab_s11) (.seq (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l11 the_real_root_g0_in_0_1_of_the_k16_f683ab_s11 the_real_root_g0_in_0_1_of_the_k16_f683ab_s12) (.arrow the_real_root_g0_in_0_1_of_the_k16_f683ab_l12 the_real_root_g0_in_0_1_of_the_k16_f683ab_s12 the_real_root_g0_in_0_1_of_the_k16_f683ab_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_real_root_g0_in_0_1_of_the_k16_f683ab_true_arm : IGProtocol the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s13 :=
  (the_real_root_g0_in_0_1_of_the_k16_f683ab_protocol).restrictToEVALT

-- false arm
noncomputable def the_real_root_g0_in_0_1_of_the_k16_f683ab_false_arm : IGProtocol the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s13 :=
  (the_real_root_g0_in_0_1_of_the_k16_f683ab_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_real_root_g0_in_0_1_of_the_k16_f683ab_tier : OuroboricityTier := TierFunctor.obj the_real_root_g0_in_0_1_of_the_k16_f683ab_s0
#eval the_real_root_g0_in_0_1_of_the_k16_f683ab_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_real_root_g0_in_0_1_of_the_k16_f683ab_frobenius :
    igFrobeniusAlg.mul the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 = the_real_root_g0_in_0_1_of_the_k16_f683ab_s0 :=
  igFrobAlg_self_fusion the_real_root_g0_in_0_1_of_the_k16_f683ab_s0
