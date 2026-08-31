-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⋈ → ⊞ → ⊙ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⋈ → ⊞ → ⋈ → ∋ → ⊡ → ⊣ → ⊙
-- Class: collatz_cycle_period_fde_dive
-- Fingerprint: sig=(12,3,6,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(10, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑼 → 𐑾  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → ⊙  | forward morphism — bidirectional arrow
--   [3] ⊤     crit   := ⊙               𐑾 → 𐑗  | evaluate-true — criticality gate open
--   [4] ≺      pol    := 𐑗               ⊙ → 𐑖  | reverse morphism — parity flip
--   [5] ⊥     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [6] ⋈     fid    := 𐑱               𐑖 → 𐑳  | composition — regime coherence
--   [7] ⊞    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [8] ⊙   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [9] ⋈     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [16] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [17] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [18] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [19] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [20] ⊣     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [21] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatz_cycle_period_fde_dive_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_cycle_period_fde_dive_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_cycle_period_fde_dive_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatz_cycle_period_fde_dive_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_cycle_period_fde_dive_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_cycle_period_fde_dive_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_cycle_period_fde_dive_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatz_cycle_period_fde_dive_protocol : IGProtocol collatz_cycle_period_fde_dive_s0 collatz_cycle_period_fde_dive_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatz_cycle_period_fde_dive_s18 collatz_cycle_period_fde_dive_s18 = collatz_cycle_period_fde_dive_s18 (idempotent)
  (.seq (.arrow collatz_cycle_period_fde_dive_l0 collatz_cycle_period_fde_dive_s0 collatz_cycle_period_fde_dive_s1) (.seq (.arrow collatz_cycle_period_fde_dive_l1 collatz_cycle_period_fde_dive_s1 collatz_cycle_period_fde_dive_s2) (.seq (.arrow collatz_cycle_period_fde_dive_l2 collatz_cycle_period_fde_dive_s2 collatz_cycle_period_fde_dive_s3) (.seq (.arrow collatz_cycle_period_fde_dive_l3 collatz_cycle_period_fde_dive_s3 collatz_cycle_period_fde_dive_s4) (.seq (.arrow collatz_cycle_period_fde_dive_l4 collatz_cycle_period_fde_dive_s4 collatz_cycle_period_fde_dive_s5) (.seq (.arrow collatz_cycle_period_fde_dive_l5 collatz_cycle_period_fde_dive_s5 collatz_cycle_period_fde_dive_s6) (.seq (.arrow collatz_cycle_period_fde_dive_l6 collatz_cycle_period_fde_dive_s6 collatz_cycle_period_fde_dive_s7) (.seq (.arrow collatz_cycle_period_fde_dive_l7 collatz_cycle_period_fde_dive_s7 collatz_cycle_period_fde_dive_s8) (.seq (.arrow collatz_cycle_period_fde_dive_l8 collatz_cycle_period_fde_dive_s8 collatz_cycle_period_fde_dive_s9) (.seq (.arrow collatz_cycle_period_fde_dive_l9 collatz_cycle_period_fde_dive_s9 collatz_cycle_period_fde_dive_s10) (.seq (.prod (.arrow collatz_cycle_period_fde_dive_l10 collatz_cycle_period_fde_dive_s10 collatz_cycle_period_fde_dive_s18) (.arrow collatz_cycle_period_fde_dive_l10 collatz_cycle_period_fde_dive_s10 collatz_cycle_period_fde_dive_s18)) (.seq (.arrow collatz_cycle_period_fde_dive_l18 collatz_cycle_period_fde_dive_s18 collatz_cycle_period_fde_dive_s18) (.seq (.arrow collatz_cycle_period_fde_dive_l18 collatz_cycle_period_fde_dive_s18 collatz_cycle_period_fde_dive_s19) (.seq (.arrow collatz_cycle_period_fde_dive_l19 collatz_cycle_period_fde_dive_s19 collatz_cycle_period_fde_dive_s20) (.arrow collatz_cycle_period_fde_dive_l20 collatz_cycle_period_fde_dive_s20 collatz_cycle_period_fde_dive_s21)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatz_cycle_period_fde_dive_true_arm : IGProtocol collatz_cycle_period_fde_dive_s0 collatz_cycle_period_fde_dive_s21 :=
  (collatz_cycle_period_fde_dive_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_cycle_period_fde_dive_false_arm : IGProtocol collatz_cycle_period_fde_dive_s0 collatz_cycle_period_fde_dive_s21 :=
  (collatz_cycle_period_fde_dive_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatz_cycle_period_fde_dive_tier_ground : OuroboricityTier := TierFunctor.obj collatz_cycle_period_fde_dive_s0
def collatz_cycle_period_fde_dive_tier : OuroboricityTier := TierFunctor.obj collatz_cycle_period_fde_dive_s21
#eval collatz_cycle_period_fde_dive_tier_ground  -- tier of the ground (pre-transformation)
#eval collatz_cycle_period_fde_dive_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem collatz_cycle_period_fde_dive_frobenius :
    igFrobeniusAlg.mul collatz_cycle_period_fde_dive_s0 collatz_cycle_period_fde_dive_s0 = collatz_cycle_period_fde_dive_s0 :=
  igFrobAlg_self_fusion collatz_cycle_period_fde_dive_s0
