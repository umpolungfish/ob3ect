-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ≻ → ≺ → ⊞ → ◻ → ⊣
-- Class: collatzcombo
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 5)]

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
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] ⋈     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [7] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [8] ≺      pol    := 𐑗               𐑾 → 𐑳  | reverse morphism — parity flip
--   [9] ⊞    stoi   := 𐑳               𐑗 → 𐑭  | engage paradox — B-state, both arms
--   [10] ◻      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatzcombo_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatzcombo_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatzcombo_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatzcombo_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatzcombo_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatzcombo_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatzcombo_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatzcombo_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatzcombo_protocol : IGProtocol collatzcombo_s0 collatzcombo_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatzcombo_s5 collatzcombo_s5 = collatzcombo_s5 (idempotent)
  (.seq (.arrow collatzcombo_l0 collatzcombo_s0 collatzcombo_s1) (.seq (.arrow collatzcombo_l1 collatzcombo_s1 collatzcombo_s2) (.seq (.prod (.arrow collatzcombo_l2 collatzcombo_s2 collatzcombo_s5) (.arrow collatzcombo_l2 collatzcombo_s2 collatzcombo_s5)) (.seq (.arrow collatzcombo_l5 collatzcombo_s5 collatzcombo_s5) (.seq (.arrow collatzcombo_l5 collatzcombo_s5 collatzcombo_s6) (.seq (.arrow collatzcombo_l6 collatzcombo_s6 collatzcombo_s7) (.seq (.arrow collatzcombo_l7 collatzcombo_s7 collatzcombo_s8) (.seq (.arrow collatzcombo_l8 collatzcombo_s8 collatzcombo_s9) (.seq (.arrow collatzcombo_l9 collatzcombo_s9 collatzcombo_s10) (.arrow collatzcombo_l10 collatzcombo_s10 collatzcombo_s11))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatzcombo_true_arm : IGProtocol collatzcombo_s0 collatzcombo_s11 :=
  (collatzcombo_protocol).restrictToEVALT

-- false arm
noncomputable def collatzcombo_false_arm : IGProtocol collatzcombo_s0 collatzcombo_s11 :=
  (collatzcombo_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatzcombo_tier_ground : OuroboricityTier := TierFunctor.obj collatzcombo_s0
def collatzcombo_tier : OuroboricityTier := TierFunctor.obj collatzcombo_s11
#eval collatzcombo_tier_ground  -- tier of the ground (pre-transformation)
#eval collatzcombo_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem collatzcombo_frobenius :
    igFrobeniusAlg.mul collatzcombo_s0 collatzcombo_s0 = collatzcombo_s0 :=
  igFrobAlg_self_fusion collatzcombo_s0
