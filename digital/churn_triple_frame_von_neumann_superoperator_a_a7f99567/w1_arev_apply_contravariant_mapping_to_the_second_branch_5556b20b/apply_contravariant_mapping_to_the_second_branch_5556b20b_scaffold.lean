-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → FSPLIT → AREV → EVALT → EVALF → FFUSE → CLINK → TANCH
-- Class: Apply contravariant mapping to the second branch for adjoint symmetry
-- Fingerprint: sig=(5,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=10
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [9] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def apply_contravariant_mapping_to_the_e1efe1_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def apply_contravariant_mapping_to_the_e1efe1_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def apply_contravariant_mapping_to_the_e1efe1_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def apply_contravariant_mapping_to_the_e1efe1_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def apply_contravariant_mapping_to_the_e1efe1_protocol : IGProtocol apply_contravariant_mapping_to_the_e1efe1_s0 apply_contravariant_mapping_to_the_e1efe1_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct apply_contravariant_mapping_to_the_e1efe1_s7 apply_contravariant_mapping_to_the_e1efe1_s7 = apply_contravariant_mapping_to_the_e1efe1_s7 (idempotent)
  (.seq (.arrow apply_contravariant_mapping_to_the_e1efe1_l0 apply_contravariant_mapping_to_the_e1efe1_s0 apply_contravariant_mapping_to_the_e1efe1_s1) (.seq (.arrow apply_contravariant_mapping_to_the_e1efe1_l1 apply_contravariant_mapping_to_the_e1efe1_s1 apply_contravariant_mapping_to_the_e1efe1_s2) (.seq (.arrow apply_contravariant_mapping_to_the_e1efe1_l2 apply_contravariant_mapping_to_the_e1efe1_s2 apply_contravariant_mapping_to_the_e1efe1_s3) (.seq (.prod (.arrow apply_contravariant_mapping_to_the_e1efe1_l3 apply_contravariant_mapping_to_the_e1efe1_s3 apply_contravariant_mapping_to_the_e1efe1_s7) (.arrow apply_contravariant_mapping_to_the_e1efe1_l3 apply_contravariant_mapping_to_the_e1efe1_s3 apply_contravariant_mapping_to_the_e1efe1_s7)) (.seq (.arrow apply_contravariant_mapping_to_the_e1efe1_l7 apply_contravariant_mapping_to_the_e1efe1_s7 apply_contravariant_mapping_to_the_e1efe1_s7) (.seq (.arrow apply_contravariant_mapping_to_the_e1efe1_l7 apply_contravariant_mapping_to_the_e1efe1_s7 apply_contravariant_mapping_to_the_e1efe1_s8) (.arrow apply_contravariant_mapping_to_the_e1efe1_l8 apply_contravariant_mapping_to_the_e1efe1_s8 apply_contravariant_mapping_to_the_e1efe1_s9)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def apply_contravariant_mapping_to_the_e1efe1_true_arm : IGProtocol apply_contravariant_mapping_to_the_e1efe1_s0 apply_contravariant_mapping_to_the_e1efe1_s9 :=
  (apply_contravariant_mapping_to_the_e1efe1_protocol).restrictToEVALT

-- false arm
noncomputable def apply_contravariant_mapping_to_the_e1efe1_false_arm : IGProtocol apply_contravariant_mapping_to_the_e1efe1_s0 apply_contravariant_mapping_to_the_e1efe1_s9 :=
  (apply_contravariant_mapping_to_the_e1efe1_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def apply_contravariant_mapping_to_the_e1efe1_tier_ground : OuroboricityTier := TierFunctor.obj apply_contravariant_mapping_to_the_e1efe1_s0
def apply_contravariant_mapping_to_the_e1efe1_tier : OuroboricityTier := TierFunctor.obj apply_contravariant_mapping_to_the_e1efe1_s9
#eval apply_contravariant_mapping_to_the_e1efe1_tier_ground  -- tier of the ground (pre-transformation)
#eval apply_contravariant_mapping_to_the_e1efe1_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem apply_contravariant_mapping_to_the_e1efe1_frobenius :
    igFrobeniusAlg.mul apply_contravariant_mapping_to_the_e1efe1_s0 apply_contravariant_mapping_to_the_e1efe1_s0 = apply_contravariant_mapping_to_the_e1efe1_s0 :=
  igFrobAlg_self_fusion apply_contravariant_mapping_to_the_e1efe1_s0
