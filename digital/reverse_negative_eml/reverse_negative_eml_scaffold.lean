-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⊞ → ⋈ → ⊡ → ⊣
-- Class: Reverse_Negative_EML
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [8] ⊞    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [9] ⋈     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [10] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def reverse_negative_eml_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def reverse_negative_eml_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def reverse_negative_eml_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def reverse_negative_eml_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def reverse_negative_eml_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def reverse_negative_eml_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def reverse_negative_eml_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def reverse_negative_eml_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def reverse_negative_eml_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def reverse_negative_eml_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def reverse_negative_eml_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def reverse_negative_eml_protocol : IGProtocol reverse_negative_eml_s0 reverse_negative_eml_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct reverse_negative_eml_s7 reverse_negative_eml_s7 = reverse_negative_eml_s7 (idempotent)
  (.seq (.arrow reverse_negative_eml_l0 reverse_negative_eml_s0 reverse_negative_eml_s1) (.seq (.arrow reverse_negative_eml_l1 reverse_negative_eml_s1 reverse_negative_eml_s2) (.seq (.prod (.arrow reverse_negative_eml_l2 reverse_negative_eml_s2 reverse_negative_eml_s7) (.arrow reverse_negative_eml_l2 reverse_negative_eml_s2 reverse_negative_eml_s7)) (.seq (.arrow reverse_negative_eml_l7 reverse_negative_eml_s7 reverse_negative_eml_s7) (.seq (.arrow reverse_negative_eml_l7 reverse_negative_eml_s7 reverse_negative_eml_s8) (.seq (.arrow reverse_negative_eml_l8 reverse_negative_eml_s8 reverse_negative_eml_s9) (.seq (.arrow reverse_negative_eml_l9 reverse_negative_eml_s9 reverse_negative_eml_s10) (.arrow reverse_negative_eml_l10 reverse_negative_eml_s10 reverse_negative_eml_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def reverse_negative_eml_true_arm : IGProtocol reverse_negative_eml_s0 reverse_negative_eml_s11 :=
  (reverse_negative_eml_protocol).restrictToEVALT

-- false arm
noncomputable def reverse_negative_eml_false_arm : IGProtocol reverse_negative_eml_s0 reverse_negative_eml_s11 :=
  (reverse_negative_eml_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def reverse_negative_eml_tier_ground : OuroboricityTier := TierFunctor.obj reverse_negative_eml_s0
def reverse_negative_eml_tier : OuroboricityTier := TierFunctor.obj reverse_negative_eml_s11
#eval reverse_negative_eml_tier_ground  -- tier of the ground (pre-transformation)
#eval reverse_negative_eml_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem reverse_negative_eml_frobenius :
    igFrobeniusAlg.mul reverse_negative_eml_s0 reverse_negative_eml_s0 = reverse_negative_eml_s0 :=
  igFrobAlg_self_fusion reverse_negative_eml_s0
