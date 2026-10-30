-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → IFIX → EVALF → IMSCRIB → FFUSE → CLINK → ENGAGR → TANCH
-- Class: The local portions of the deformations of a number field equipped with an elliptic curve that are constructed in inter-universal Teichm¨uller theory are obtained precisely by dilating the “one underlying arithmetic dimension” constituted by the value groups by means of a theta function, while the “other underlying arithmetic dimension” constituted by the groups of units is left fixed.
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 8)]

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
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [10] ENGAGR    stoi   := 𐑳               𐑱 → 𐑡  | engage paradox — B-state, both arms
--   [11] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_local_portions_of_the_deformations_210ef5_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_local_portions_of_the_deformations_210ef5_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_local_portions_of_the_deformations_210ef5_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_local_portions_of_the_deformations_210ef5_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_local_portions_of_the_deformations_210ef5_protocol : IGProtocol the_local_portions_of_the_deformations_210ef5_s0 the_local_portions_of_the_deformations_210ef5_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_local_portions_of_the_deformations_210ef5_s8 the_local_portions_of_the_deformations_210ef5_s8 = the_local_portions_of_the_deformations_210ef5_s8 (idempotent)
  (.seq (.arrow the_local_portions_of_the_deformations_210ef5_l0 the_local_portions_of_the_deformations_210ef5_s0 the_local_portions_of_the_deformations_210ef5_s1) (.seq (.arrow the_local_portions_of_the_deformations_210ef5_l1 the_local_portions_of_the_deformations_210ef5_s1 the_local_portions_of_the_deformations_210ef5_s2) (.seq (.prod (.arrow the_local_portions_of_the_deformations_210ef5_l2 the_local_portions_of_the_deformations_210ef5_s2 the_local_portions_of_the_deformations_210ef5_s8) (.arrow the_local_portions_of_the_deformations_210ef5_l2 the_local_portions_of_the_deformations_210ef5_s2 the_local_portions_of_the_deformations_210ef5_s8)) (.seq (.arrow the_local_portions_of_the_deformations_210ef5_l8 the_local_portions_of_the_deformations_210ef5_s8 the_local_portions_of_the_deformations_210ef5_s8) (.seq (.arrow the_local_portions_of_the_deformations_210ef5_l8 the_local_portions_of_the_deformations_210ef5_s8 the_local_portions_of_the_deformations_210ef5_s9) (.seq (.arrow the_local_portions_of_the_deformations_210ef5_l9 the_local_portions_of_the_deformations_210ef5_s9 the_local_portions_of_the_deformations_210ef5_s10) (.arrow the_local_portions_of_the_deformations_210ef5_l10 the_local_portions_of_the_deformations_210ef5_s10 the_local_portions_of_the_deformations_210ef5_s11)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_local_portions_of_the_deformations_210ef5_true_arm : IGProtocol the_local_portions_of_the_deformations_210ef5_s0 the_local_portions_of_the_deformations_210ef5_s11 :=
  (the_local_portions_of_the_deformations_210ef5_protocol).restrictToEVALT

-- false arm
noncomputable def the_local_portions_of_the_deformations_210ef5_false_arm : IGProtocol the_local_portions_of_the_deformations_210ef5_s0 the_local_portions_of_the_deformations_210ef5_s11 :=
  (the_local_portions_of_the_deformations_210ef5_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_local_portions_of_the_deformations_210ef5_tier : OuroboricityTier := TierFunctor.obj the_local_portions_of_the_deformations_210ef5_s0
#eval the_local_portions_of_the_deformations_210ef5_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_local_portions_of_the_deformations_210ef5_frobenius :
    igFrobeniusAlg.mul the_local_portions_of_the_deformations_210ef5_s0 the_local_portions_of_the_deformations_210ef5_s0 = the_local_portions_of_the_deformations_210ef5_s0 :=
  igFrobAlg_self_fusion the_local_portions_of_the_deformations_210ef5_s0
