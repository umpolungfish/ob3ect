-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → AREV → IFIX → EVALF → ENGAGR → FFUSE → CLINK → IMSCRIB
-- Class: straus_cofactor_residue_class
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(3, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def straus_cofactor_residue_class_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def straus_cofactor_residue_class_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_cofactor_residue_class_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def straus_cofactor_residue_class_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_cofactor_residue_class_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def straus_cofactor_residue_class_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def straus_cofactor_residue_class_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def straus_cofactor_residue_class_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def straus_cofactor_residue_class_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_cofactor_residue_class_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def straus_cofactor_residue_class_protocol : IGProtocol straus_cofactor_residue_class_s0 straus_cofactor_residue_class_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct straus_cofactor_residue_class_s9 straus_cofactor_residue_class_s9 = straus_cofactor_residue_class_s9 (idempotent)
  (.seq (.arrow straus_cofactor_residue_class_l0 straus_cofactor_residue_class_s0 straus_cofactor_residue_class_s1) (.seq (.arrow straus_cofactor_residue_class_l1 straus_cofactor_residue_class_s1 straus_cofactor_residue_class_s2) (.seq (.arrow straus_cofactor_residue_class_l2 straus_cofactor_residue_class_s2 straus_cofactor_residue_class_s3) (.seq (.prod (.arrow straus_cofactor_residue_class_l3 straus_cofactor_residue_class_s3 straus_cofactor_residue_class_s9) (.arrow straus_cofactor_residue_class_l3 straus_cofactor_residue_class_s3 straus_cofactor_residue_class_s9)) (.seq (.arrow straus_cofactor_residue_class_l9 straus_cofactor_residue_class_s9 straus_cofactor_residue_class_s9) (.seq (.arrow straus_cofactor_residue_class_l9 straus_cofactor_residue_class_s9 straus_cofactor_residue_class_s10) (.arrow straus_cofactor_residue_class_l10 straus_cofactor_residue_class_s10 straus_cofactor_residue_class_s11)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def straus_cofactor_residue_class_true_arm : IGProtocol straus_cofactor_residue_class_s0 straus_cofactor_residue_class_s11 :=
  (straus_cofactor_residue_class_protocol).restrictToEVALT

-- false arm
noncomputable def straus_cofactor_residue_class_false_arm : IGProtocol straus_cofactor_residue_class_s0 straus_cofactor_residue_class_s11 :=
  (straus_cofactor_residue_class_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def straus_cofactor_residue_class_tier_ground : OuroboricityTier := TierFunctor.obj straus_cofactor_residue_class_s0
def straus_cofactor_residue_class_tier : OuroboricityTier := TierFunctor.obj straus_cofactor_residue_class_s11
#eval straus_cofactor_residue_class_tier_ground  -- tier of the ground (pre-transformation)
#eval straus_cofactor_residue_class_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem straus_cofactor_residue_class_frobenius :
    igFrobeniusAlg.mul straus_cofactor_residue_class_s0 straus_cofactor_residue_class_s0 = straus_cofactor_residue_class_s0 :=
  igFrobAlg_self_fusion straus_cofactor_residue_class_s0
