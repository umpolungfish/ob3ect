-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → AREV → IFIX → TANCH
-- Class: Energy is the T-Object
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [10] AREV      pol    := 𐑗               𐑱 → 𐑭  | reverse morphism — parity flip
--   [11] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def energy_is_the_t_object_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def energy_is_the_t_object_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def energy_is_the_t_object_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def energy_is_the_t_object_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def energy_is_the_t_object_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def energy_is_the_t_object_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def energy_is_the_t_object_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def energy_is_the_t_object_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def energy_is_the_t_object_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def energy_is_the_t_object_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def energy_is_the_t_object_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def energy_is_the_t_object_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def energy_is_the_t_object_protocol : IGProtocol energy_is_the_t_object_s0 energy_is_the_t_object_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct energy_is_the_t_object_s8 energy_is_the_t_object_s8 = energy_is_the_t_object_s8 (idempotent)
  (.seq (.arrow energy_is_the_t_object_l0 energy_is_the_t_object_s0 energy_is_the_t_object_s1) (.seq (.arrow energy_is_the_t_object_l1 energy_is_the_t_object_s1 energy_is_the_t_object_s2) (.seq (.arrow energy_is_the_t_object_l2 energy_is_the_t_object_s2 energy_is_the_t_object_s3) (.seq (.arrow energy_is_the_t_object_l3 energy_is_the_t_object_s3 energy_is_the_t_object_s4) (.seq (.prod (.arrow energy_is_the_t_object_l4 energy_is_the_t_object_s4 energy_is_the_t_object_s8) (.arrow energy_is_the_t_object_l4 energy_is_the_t_object_s4 energy_is_the_t_object_s8)) (.seq (.arrow energy_is_the_t_object_l8 energy_is_the_t_object_s8 energy_is_the_t_object_s8) (.seq (.arrow energy_is_the_t_object_l8 energy_is_the_t_object_s8 energy_is_the_t_object_s9) (.seq (.arrow energy_is_the_t_object_l9 energy_is_the_t_object_s9 energy_is_the_t_object_s10) (.seq (.arrow energy_is_the_t_object_l10 energy_is_the_t_object_s10 energy_is_the_t_object_s11) (.arrow energy_is_the_t_object_l11 energy_is_the_t_object_s11 energy_is_the_t_object_s12))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def energy_is_the_t_object_true_arm : IGProtocol energy_is_the_t_object_s0 energy_is_the_t_object_s12 :=
  (energy_is_the_t_object_protocol).restrictToEVALT

-- false arm
noncomputable def energy_is_the_t_object_false_arm : IGProtocol energy_is_the_t_object_s0 energy_is_the_t_object_s12 :=
  (energy_is_the_t_object_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def energy_is_the_t_object_tier : OuroboricityTier := TierFunctor.obj energy_is_the_t_object_s0
#eval energy_is_the_t_object_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem energy_is_the_t_object_frobenius :
    igFrobeniusAlg.mul energy_is_the_t_object_s0 energy_is_the_t_object_s0 = energy_is_the_t_object_s0 :=
  igFrobAlg_self_fusion energy_is_the_t_object_s0
