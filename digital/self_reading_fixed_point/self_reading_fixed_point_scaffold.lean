-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ≺ → ⋈ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⊡ → ⊣
-- Class: self-reading fixed point
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑼  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [3] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [4] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [7] ⊥     chir   := 𐑖               𐑖 → 𐑖  | evaluate-false — chirality check
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [10] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def self_reading_fixed_point_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def self_reading_fixed_point_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def self_reading_fixed_point_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def self_reading_fixed_point_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def self_reading_fixed_point_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def self_reading_fixed_point_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def self_reading_fixed_point_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def self_reading_fixed_point_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def self_reading_fixed_point_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def self_reading_fixed_point_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def self_reading_fixed_point_protocol : IGProtocol self_reading_fixed_point_initial self_reading_fixed_point_s11 :=
  .withGram Grammar.measure <|
  (.seq (.arrow self_reading_fixed_point_l0 self_reading_fixed_point_initial self_reading_fixed_point_s0) (.seq (.arrow self_reading_fixed_point_l1 self_reading_fixed_point_s0 self_reading_fixed_point_s1) (.seq (.arrow self_reading_fixed_point_l2 self_reading_fixed_point_s1 self_reading_fixed_point_s2) (.seq (.arrow self_reading_fixed_point_l3 self_reading_fixed_point_s2 self_reading_fixed_point_s3) (.seq (.arrow self_reading_fixed_point_l4 self_reading_fixed_point_s3 self_reading_fixed_point_s4) (.seq (.arrow self_reading_fixed_point_l5 self_reading_fixed_point_s4 self_reading_fixed_point_s5) (.seq (.prod (.arrow self_reading_fixed_point_l6 self_reading_fixed_point_s5 self_reading_fixed_point_s6) (.arrow self_reading_fixed_point_l7 self_reading_fixed_point_s5 self_reading_fixed_point_s7)) (.seq (.arrow self_reading_fixed_point_l8 (tensorProduct self_reading_fixed_point_s6 self_reading_fixed_point_s7) self_reading_fixed_point_s8) (.seq (.arrow self_reading_fixed_point_l9 self_reading_fixed_point_s8 self_reading_fixed_point_s9) (.seq (.arrow self_reading_fixed_point_l10 self_reading_fixed_point_s9 self_reading_fixed_point_s10) (.arrow self_reading_fixed_point_l11 self_reading_fixed_point_s10 self_reading_fixed_point_s11)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def self_reading_fixed_point_true_arm : IGProtocol self_reading_fixed_point_initial self_reading_fixed_point_s11 :=
  (self_reading_fixed_point_protocol).restrictToEVALT

-- false arm
noncomputable def self_reading_fixed_point_false_arm : IGProtocol self_reading_fixed_point_initial self_reading_fixed_point_s11 :=
  (self_reading_fixed_point_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def self_reading_fixed_point_tier_ground : OuroboricityTier := TierFunctor.obj self_reading_fixed_point_initial
def self_reading_fixed_point_tier : OuroboricityTier := TierFunctor.obj self_reading_fixed_point_s11
#eval self_reading_fixed_point_tier_ground  -- tier of the ground (pre-transformation)
#eval self_reading_fixed_point_tier  -- the Grammar's tuple-tier verdict

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem self_reading_fixed_point_frobenius :
    igFrobeniusAlg.mul self_reading_fixed_point_initial self_reading_fixed_point_initial = self_reading_fixed_point_initial :=
  igFrobAlg_self_fusion self_reading_fixed_point_initial

theorem self_reading_fixed_point_protocol_depth :
    self_reading_fixed_point_protocol.depth = 11 := by rfl

end Imscribing