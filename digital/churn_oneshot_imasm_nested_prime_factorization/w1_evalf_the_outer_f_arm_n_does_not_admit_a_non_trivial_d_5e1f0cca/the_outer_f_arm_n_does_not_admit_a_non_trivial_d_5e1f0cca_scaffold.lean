-- IGProtocol scaffold: ∈ → ⊥ → ⊙ → ≺ → ∋
-- Class: The outer F-arm, n does not admit a non-trivial divisor on this path. n is prime, the negative arm of the outer ∈ is established.
-- Fingerprint: sig=(2,2,1,0)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=5
-- Expected tier: O₀
-- ∈/∋ pairs: [(0, 4)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [1] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [2] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [3] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] ∋     stoi   := 𐑙               𐑙 → 𐑚  | fuse μ — assembly mode

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_s1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_s2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_s3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_l0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_outer_f_arm_n_does_not_admit_a_non_f4271d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_outer_f_arm_n_does_not_admit_a_non_f4271d_protocol : IGProtocol the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 = the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 (idempotent)
  (.seq (.prod (.arrow the_outer_f_arm_n_does_not_admit_a_non_f4271d_l0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4) (.arrow the_outer_f_arm_n_does_not_admit_a_non_f4271d_l0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4)) (.arrow the_outer_f_arm_n_does_not_admit_a_non_f4271d_l4 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- false arm
noncomputable def the_outer_f_arm_n_does_not_admit_a_non_f4271d_false_arm : IGProtocol the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4 :=
  (the_outer_f_arm_n_does_not_admit_a_non_f4271d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def the_outer_f_arm_n_does_not_admit_a_non_f4271d_tier_ground : OuroboricityTier := TierFunctor.obj the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0
def the_outer_f_arm_n_does_not_admit_a_non_f4271d_tier : OuroboricityTier := TierFunctor.obj the_outer_f_arm_n_does_not_admit_a_non_f4271d_s4
#eval the_outer_f_arm_n_does_not_admit_a_non_f4271d_tier_ground  -- tier of the ground (pre-transformation)
#eval the_outer_f_arm_n_does_not_admit_a_non_f4271d_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_outer_f_arm_n_does_not_admit_a_non_f4271d_frobenius :
    igFrobeniusAlg.mul the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 = the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0 :=
  igFrobAlg_self_fusion the_outer_f_arm_n_does_not_admit_a_non_f4271d_s0
