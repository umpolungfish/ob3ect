-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → FFUSE → TANCH → IFIX
-- Class: straus_walk_as_fixed_point
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂dag
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
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [9] TANCH     top    := 𐑡               𐑙 → 𐑭  | terminal object — connectivity boundary
--   [10] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def straus_walk_as_fixed_point_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def straus_walk_as_fixed_point_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def straus_walk_as_fixed_point_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def straus_walk_as_fixed_point_protocol : IGProtocol straus_walk_as_fixed_point_s0 straus_walk_as_fixed_point_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct straus_walk_as_fixed_point_s8 straus_walk_as_fixed_point_s8 = straus_walk_as_fixed_point_s8 (idempotent)
  (.seq (.arrow straus_walk_as_fixed_point_l0 straus_walk_as_fixed_point_s0 straus_walk_as_fixed_point_s1) (.seq (.arrow straus_walk_as_fixed_point_l1 straus_walk_as_fixed_point_s1 straus_walk_as_fixed_point_s2) (.seq (.prod (.arrow straus_walk_as_fixed_point_l2 straus_walk_as_fixed_point_s2 straus_walk_as_fixed_point_s8) (.arrow straus_walk_as_fixed_point_l2 straus_walk_as_fixed_point_s2 straus_walk_as_fixed_point_s8)) (.seq (.arrow straus_walk_as_fixed_point_l8 straus_walk_as_fixed_point_s8 straus_walk_as_fixed_point_s8) (.seq (.arrow straus_walk_as_fixed_point_l8 straus_walk_as_fixed_point_s8 straus_walk_as_fixed_point_s9) (.arrow straus_walk_as_fixed_point_l9 straus_walk_as_fixed_point_s9 straus_walk_as_fixed_point_s10))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def straus_walk_as_fixed_point_true_arm : IGProtocol straus_walk_as_fixed_point_s0 straus_walk_as_fixed_point_s10 :=
  (straus_walk_as_fixed_point_protocol).restrictToEVALT

-- false arm
noncomputable def straus_walk_as_fixed_point_false_arm : IGProtocol straus_walk_as_fixed_point_s0 straus_walk_as_fixed_point_s10 :=
  (straus_walk_as_fixed_point_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def straus_walk_as_fixed_point_tier_ground : OuroboricityTier := TierFunctor.obj straus_walk_as_fixed_point_s0
def straus_walk_as_fixed_point_tier : OuroboricityTier := TierFunctor.obj straus_walk_as_fixed_point_s10
#eval straus_walk_as_fixed_point_tier_ground  -- tier of the ground (pre-transformation)
#eval straus_walk_as_fixed_point_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem straus_walk_as_fixed_point_frobenius :
    igFrobeniusAlg.mul straus_walk_as_fixed_point_s0 straus_walk_as_fixed_point_s0 = straus_walk_as_fixed_point_s0 :=
  igFrobAlg_self_fusion straus_walk_as_fixed_point_s0
