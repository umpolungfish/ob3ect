-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⊣
-- Class: Nested decision, does the quotient q admit further decomposition? Forks again. T-arm: q is composite, has sub-factors. F-arm: q is prime, no further decomposition.
-- Fingerprint: sig=(2,2,3,0)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=7
-- Expected tier: O₁
-- ∈/∋ pairs: [(1, 4)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [5] ⊞    stoi   := 𐑳               𐑙 → 𐑡  | engage paradox — B-state, both arms
--   [6] ⊣     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def nested_decision_does_the_quotient_q_efee14_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def nested_decision_does_the_quotient_q_efee14_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def nested_decision_does_the_quotient_q_efee14_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def nested_decision_does_the_quotient_q_efee14_protocol : IGProtocol nested_decision_does_the_quotient_q_efee14_s0 nested_decision_does_the_quotient_q_efee14_s6 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct nested_decision_does_the_quotient_q_efee14_s4 nested_decision_does_the_quotient_q_efee14_s4 = nested_decision_does_the_quotient_q_efee14_s4 (idempotent)
  (.seq (.arrow nested_decision_does_the_quotient_q_efee14_l0 nested_decision_does_the_quotient_q_efee14_s0 nested_decision_does_the_quotient_q_efee14_s1) (.seq (.prod (.arrow nested_decision_does_the_quotient_q_efee14_l1 nested_decision_does_the_quotient_q_efee14_s1 nested_decision_does_the_quotient_q_efee14_s4) (.arrow nested_decision_does_the_quotient_q_efee14_l1 nested_decision_does_the_quotient_q_efee14_s1 nested_decision_does_the_quotient_q_efee14_s4)) (.seq (.arrow nested_decision_does_the_quotient_q_efee14_l4 nested_decision_does_the_quotient_q_efee14_s4 nested_decision_does_the_quotient_q_efee14_s4) (.seq (.arrow nested_decision_does_the_quotient_q_efee14_l4 nested_decision_does_the_quotient_q_efee14_s4 nested_decision_does_the_quotient_q_efee14_s5) (.arrow nested_decision_does_the_quotient_q_efee14_l5 nested_decision_does_the_quotient_q_efee14_s5 nested_decision_does_the_quotient_q_efee14_s6)))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def nested_decision_does_the_quotient_q_efee14_true_arm : IGProtocol nested_decision_does_the_quotient_q_efee14_s0 nested_decision_does_the_quotient_q_efee14_s6 :=
  (nested_decision_does_the_quotient_q_efee14_protocol).restrictToEVALT

-- false arm
noncomputable def nested_decision_does_the_quotient_q_efee14_false_arm : IGProtocol nested_decision_does_the_quotient_q_efee14_s0 nested_decision_does_the_quotient_q_efee14_s6 :=
  (nested_decision_does_the_quotient_q_efee14_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def nested_decision_does_the_quotient_q_efee14_tier_ground : OuroboricityTier := TierFunctor.obj nested_decision_does_the_quotient_q_efee14_s0
def nested_decision_does_the_quotient_q_efee14_tier : OuroboricityTier := TierFunctor.obj nested_decision_does_the_quotient_q_efee14_s6
#eval nested_decision_does_the_quotient_q_efee14_tier_ground  -- tier of the ground (pre-transformation)
#eval nested_decision_does_the_quotient_q_efee14_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem nested_decision_does_the_quotient_q_efee14_frobenius :
    igFrobeniusAlg.mul nested_decision_does_the_quotient_q_efee14_s0 nested_decision_does_the_quotient_q_efee14_s0 = nested_decision_does_the_quotient_q_efee14_s0 :=
  igFrobAlg_self_fusion nested_decision_does_the_quotient_q_efee14_s0
