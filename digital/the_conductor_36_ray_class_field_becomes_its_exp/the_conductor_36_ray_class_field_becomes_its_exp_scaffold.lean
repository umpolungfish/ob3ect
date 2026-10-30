-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → CLINK → CLINK → CLINK → CLINK → CLINK → EVALT → EVALT → ENGAGR → IFIX → EVALF → AREV → CLINK → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: the conductor-36 ray class field becomes its explicit six-piece bnrclassfield tower (i, three surds over Q(sqrt13), the zeta9 cubic, the SIC cubic) with the coordinate heights read off per layer, so the feasible layers are separated from the one hard SIC cubic
-- Fingerprint: sig=(11,2,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 15)]

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
--   [3] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [16] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [17] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_conductor_36_ray_class_field_95841d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_conductor_36_ray_class_field_95841d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_conductor_36_ray_class_field_95841d_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_conductor_36_ray_class_field_95841d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_conductor_36_ray_class_field_95841d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_conductor_36_ray_class_field_95841d_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_conductor_36_ray_class_field_95841d_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_conductor_36_ray_class_field_95841d_protocol : IGProtocol the_conductor_36_ray_class_field_95841d_s0 the_conductor_36_ray_class_field_95841d_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_conductor_36_ray_class_field_95841d_s15 the_conductor_36_ray_class_field_95841d_s15 = the_conductor_36_ray_class_field_95841d_s15 (idempotent)
  (.seq (.arrow the_conductor_36_ray_class_field_95841d_l0 the_conductor_36_ray_class_field_95841d_s0 the_conductor_36_ray_class_field_95841d_s1) (.seq (.arrow the_conductor_36_ray_class_field_95841d_l1 the_conductor_36_ray_class_field_95841d_s1 the_conductor_36_ray_class_field_95841d_s2) (.seq (.prod (.arrow the_conductor_36_ray_class_field_95841d_l2 the_conductor_36_ray_class_field_95841d_s2 the_conductor_36_ray_class_field_95841d_s15) (.arrow the_conductor_36_ray_class_field_95841d_l2 the_conductor_36_ray_class_field_95841d_s2 the_conductor_36_ray_class_field_95841d_s15)) (.seq (.arrow the_conductor_36_ray_class_field_95841d_l15 the_conductor_36_ray_class_field_95841d_s15 the_conductor_36_ray_class_field_95841d_s15) (.seq (.arrow the_conductor_36_ray_class_field_95841d_l15 the_conductor_36_ray_class_field_95841d_s15 the_conductor_36_ray_class_field_95841d_s16) (.seq (.arrow the_conductor_36_ray_class_field_95841d_l16 the_conductor_36_ray_class_field_95841d_s16 the_conductor_36_ray_class_field_95841d_s17) (.arrow the_conductor_36_ray_class_field_95841d_l17 the_conductor_36_ray_class_field_95841d_s17 the_conductor_36_ray_class_field_95841d_s18)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_conductor_36_ray_class_field_95841d_true_arm : IGProtocol the_conductor_36_ray_class_field_95841d_s0 the_conductor_36_ray_class_field_95841d_s18 :=
  (the_conductor_36_ray_class_field_95841d_protocol).restrictToEVALT

-- false arm
noncomputable def the_conductor_36_ray_class_field_95841d_false_arm : IGProtocol the_conductor_36_ray_class_field_95841d_s0 the_conductor_36_ray_class_field_95841d_s18 :=
  (the_conductor_36_ray_class_field_95841d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_conductor_36_ray_class_field_95841d_tier : OuroboricityTier := TierFunctor.obj the_conductor_36_ray_class_field_95841d_s0
#eval the_conductor_36_ray_class_field_95841d_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_conductor_36_ray_class_field_95841d_frobenius :
    igFrobeniusAlg.mul the_conductor_36_ray_class_field_95841d_s0 the_conductor_36_ray_class_field_95841d_s0 = the_conductor_36_ray_class_field_95841d_s0 :=
  igFrobAlg_self_fusion the_conductor_36_ray_class_field_95841d_s0
