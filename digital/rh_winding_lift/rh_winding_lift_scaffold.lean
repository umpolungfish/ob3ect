-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ⋈ → ⊙ → ∋ → ◻ → ⊣
-- Class: rh_winding_lift
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] ◻      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def rh_winding_lift_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_winding_lift_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rh_winding_lift_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rh_winding_lift_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def rh_winding_lift_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rh_winding_lift_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def rh_winding_lift_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def rh_winding_lift_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def rh_winding_lift_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def rh_winding_lift_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rh_winding_lift_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def rh_winding_lift_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def rh_winding_lift_protocol : IGProtocol rh_winding_lift_s0 rh_winding_lift_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct rh_winding_lift_s9 rh_winding_lift_s9 = rh_winding_lift_s9 (idempotent)
  (.seq (.arrow rh_winding_lift_l0 rh_winding_lift_s0 rh_winding_lift_s1) (.seq (.prod (.arrow rh_winding_lift_l1 rh_winding_lift_s1 rh_winding_lift_s9) (.arrow rh_winding_lift_l1 rh_winding_lift_s1 rh_winding_lift_s9)) (.seq (.arrow rh_winding_lift_l9 rh_winding_lift_s9 rh_winding_lift_s9) (.seq (.arrow rh_winding_lift_l9 rh_winding_lift_s9 rh_winding_lift_s10) (.arrow rh_winding_lift_l10 rh_winding_lift_s10 rh_winding_lift_s11)))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def rh_winding_lift_true_arm : IGProtocol rh_winding_lift_s0 rh_winding_lift_s11 :=
  (rh_winding_lift_protocol).restrictToEVALT

-- false arm
noncomputable def rh_winding_lift_false_arm : IGProtocol rh_winding_lift_s0 rh_winding_lift_s11 :=
  (rh_winding_lift_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def rh_winding_lift_tier_ground : OuroboricityTier := TierFunctor.obj rh_winding_lift_s0
def rh_winding_lift_tier : OuroboricityTier := TierFunctor.obj rh_winding_lift_s11
#eval rh_winding_lift_tier_ground  -- tier of the ground (pre-transformation)
#eval rh_winding_lift_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem rh_winding_lift_frobenius :
    igFrobeniusAlg.mul rh_winding_lift_s0 rh_winding_lift_s0 = rh_winding_lift_s0 :=
  igFrobAlg_self_fusion rh_winding_lift_s0
