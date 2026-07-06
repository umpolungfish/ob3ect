-- IGProtocol scaffold: VINIT → EVALT → FSPLIT → AFWD → IMSCRIB → CLINK → IMSCRIB → ENGAGR → AFWD → EVALT → CLINK → AFWD → CLINK → EVALT → FSPLIT → AFWD → CLINK → IMSCRIB → FFUSE → TANCH → IFIX → IFIX → ENGAGR → TANCH
-- Class: Weyl-Heisenberg orbit generation for the d=12 branch (T-arm)
-- Fingerprint: sig=(14,3,5,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=24
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(14, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → ⊙  | initial object — ground of distinction
--   [1] EVALT     crit   := ⊙               𐑼 → 𐑚  | evaluate-true — criticality gate open
--   [2] FSPLIT    gran   := 𐑚               ⊙ → 𐑾  | split δ — range decomposition
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑠  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [5] CLINK     fid    := 𐑱               𐑠 → 𐑠  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [7] ENGAGR    stoi   := 𐑳               𐑠 → 𐑾  | engage paradox — B-state, both arms
--   [8] AFWD      rel    := 𐑾               𐑳 → ⊙  | forward morphism — bidirectional arrow
--   [9] EVALT     crit   := ⊙               𐑾 → 𐑱  | evaluate-true — criticality gate open
--   [10] CLINK     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [11] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [12] CLINK     fid    := 𐑱               𐑾 → ⊙  | composition — regime coherence
--   [13] EVALT     crit   := ⊙               𐑱 → 𐑚  | evaluate-true — criticality gate open
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [16] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [17] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [19] TANCH     top    := 𐑡               𐑙 → 𐑭  | terminal object — connectivity boundary
--   [20] IFIX      prot   := 𐑭               𐑡 → 𐑭  | irreversible fixation — winding number
--   [21] IFIX      prot   := 𐑭               𐑭 → 𐑳  | irreversible fixation — winding number
--   [22] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [23] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def weyl_heisenberg_orbit_generation_for_5beeab_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def weyl_heisenberg_orbit_generation_for_5beeab_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def weyl_heisenberg_orbit_generation_for_5beeab_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def weyl_heisenberg_orbit_generation_for_5beeab_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def weyl_heisenberg_orbit_generation_for_5beeab_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def weyl_heisenberg_orbit_generation_for_5beeab_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def weyl_heisenberg_orbit_generation_for_5beeab_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def weyl_heisenberg_orbit_generation_for_5beeab_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def weyl_heisenberg_orbit_generation_for_5beeab_protocol : IGProtocol weyl_heisenberg_orbit_generation_for_5beeab_s0 weyl_heisenberg_orbit_generation_for_5beeab_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct weyl_heisenberg_orbit_generation_for_5beeab_s18 weyl_heisenberg_orbit_generation_for_5beeab_s18 = weyl_heisenberg_orbit_generation_for_5beeab_s18 (idempotent)
  (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l0 weyl_heisenberg_orbit_generation_for_5beeab_s0 weyl_heisenberg_orbit_generation_for_5beeab_s1) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l1 weyl_heisenberg_orbit_generation_for_5beeab_s1 weyl_heisenberg_orbit_generation_for_5beeab_s2) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l2 weyl_heisenberg_orbit_generation_for_5beeab_s2 weyl_heisenberg_orbit_generation_for_5beeab_s3) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l3 weyl_heisenberg_orbit_generation_for_5beeab_s3 weyl_heisenberg_orbit_generation_for_5beeab_s4) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l4 weyl_heisenberg_orbit_generation_for_5beeab_s4 weyl_heisenberg_orbit_generation_for_5beeab_s5) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l5 weyl_heisenberg_orbit_generation_for_5beeab_s5 weyl_heisenberg_orbit_generation_for_5beeab_s6) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l6 weyl_heisenberg_orbit_generation_for_5beeab_s6 weyl_heisenberg_orbit_generation_for_5beeab_s7) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l7 weyl_heisenberg_orbit_generation_for_5beeab_s7 weyl_heisenberg_orbit_generation_for_5beeab_s8) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l8 weyl_heisenberg_orbit_generation_for_5beeab_s8 weyl_heisenberg_orbit_generation_for_5beeab_s9) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l9 weyl_heisenberg_orbit_generation_for_5beeab_s9 weyl_heisenberg_orbit_generation_for_5beeab_s10) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l10 weyl_heisenberg_orbit_generation_for_5beeab_s10 weyl_heisenberg_orbit_generation_for_5beeab_s11) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l11 weyl_heisenberg_orbit_generation_for_5beeab_s11 weyl_heisenberg_orbit_generation_for_5beeab_s12) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l12 weyl_heisenberg_orbit_generation_for_5beeab_s12 weyl_heisenberg_orbit_generation_for_5beeab_s13) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l13 weyl_heisenberg_orbit_generation_for_5beeab_s13 weyl_heisenberg_orbit_generation_for_5beeab_s14) (.seq (.prod (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l14 weyl_heisenberg_orbit_generation_for_5beeab_s14 weyl_heisenberg_orbit_generation_for_5beeab_s18) (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l14 weyl_heisenberg_orbit_generation_for_5beeab_s14 weyl_heisenberg_orbit_generation_for_5beeab_s18)) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l18 weyl_heisenberg_orbit_generation_for_5beeab_s18 weyl_heisenberg_orbit_generation_for_5beeab_s18) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l18 weyl_heisenberg_orbit_generation_for_5beeab_s18 weyl_heisenberg_orbit_generation_for_5beeab_s19) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l19 weyl_heisenberg_orbit_generation_for_5beeab_s19 weyl_heisenberg_orbit_generation_for_5beeab_s20) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l20 weyl_heisenberg_orbit_generation_for_5beeab_s20 weyl_heisenberg_orbit_generation_for_5beeab_s21) (.seq (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l21 weyl_heisenberg_orbit_generation_for_5beeab_s21 weyl_heisenberg_orbit_generation_for_5beeab_s22) (.arrow weyl_heisenberg_orbit_generation_for_5beeab_l22 weyl_heisenberg_orbit_generation_for_5beeab_s22 weyl_heisenberg_orbit_generation_for_5beeab_s23)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def weyl_heisenberg_orbit_generation_for_5beeab_true_arm : IGProtocol weyl_heisenberg_orbit_generation_for_5beeab_s0 weyl_heisenberg_orbit_generation_for_5beeab_s23 :=
  (weyl_heisenberg_orbit_generation_for_5beeab_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def weyl_heisenberg_orbit_generation_for_5beeab_tier : OuroboricityTier := TierFunctor.obj weyl_heisenberg_orbit_generation_for_5beeab_s0
#eval weyl_heisenberg_orbit_generation_for_5beeab_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem weyl_heisenberg_orbit_generation_for_5beeab_frobenius :
    igFrobeniusAlg.mul weyl_heisenberg_orbit_generation_for_5beeab_s0 weyl_heisenberg_orbit_generation_for_5beeab_s0 = weyl_heisenberg_orbit_generation_for_5beeab_s0 :=
  igFrobAlg_self_fusion weyl_heisenberg_orbit_generation_for_5beeab_s0
