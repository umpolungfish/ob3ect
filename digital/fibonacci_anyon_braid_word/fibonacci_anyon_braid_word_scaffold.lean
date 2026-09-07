-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⋈ → ⊤ → ≻ → ⊥ → ⊞ → ≺ → ⋈ → ∈ → ⊤ → ⊥ → ∋ → ⊡ → ⋈ → ≻ → ⊙ → ∋ → ⊣
-- Class: Fibonacci anyon braid word
-- Fingerprint: sig=(11,4,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=21
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(11, 14), (2, 19)]

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
--   [4] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [15] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [17] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [18] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [19] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [20] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def fibonacci_anyon_braid_word_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def fibonacci_anyon_braid_word_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def fibonacci_anyon_braid_word_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def fibonacci_anyon_braid_word_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fibonacci_anyon_braid_word_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def fibonacci_anyon_braid_word_protocol : IGProtocol fibonacci_anyon_braid_word_s0 fibonacci_anyon_braid_word_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct fibonacci_anyon_braid_word_s14 fibonacci_anyon_braid_word_s14 = fibonacci_anyon_braid_word_s14 (idempotent)
  (.seq (.arrow fibonacci_anyon_braid_word_l0 fibonacci_anyon_braid_word_s0 fibonacci_anyon_braid_word_s1) (.seq (.arrow fibonacci_anyon_braid_word_l1 fibonacci_anyon_braid_word_s1 fibonacci_anyon_braid_word_s2) (.seq (.prod (.arrow fibonacci_anyon_braid_word_l2 fibonacci_anyon_braid_word_s2 fibonacci_anyon_braid_word_s14) (.arrow fibonacci_anyon_braid_word_l2 fibonacci_anyon_braid_word_s2 fibonacci_anyon_braid_word_s14)) (.seq (.arrow fibonacci_anyon_braid_word_l14 fibonacci_anyon_braid_word_s14 fibonacci_anyon_braid_word_s14) (.seq (.arrow fibonacci_anyon_braid_word_l14 fibonacci_anyon_braid_word_s14 fibonacci_anyon_braid_word_s15) (.seq (.arrow fibonacci_anyon_braid_word_l15 fibonacci_anyon_braid_word_s15 fibonacci_anyon_braid_word_s16) (.seq (.arrow fibonacci_anyon_braid_word_l16 fibonacci_anyon_braid_word_s16 fibonacci_anyon_braid_word_s17) (.seq (.arrow fibonacci_anyon_braid_word_l17 fibonacci_anyon_braid_word_s17 fibonacci_anyon_braid_word_s18) (.seq (.arrow fibonacci_anyon_braid_word_l18 fibonacci_anyon_braid_word_s18 fibonacci_anyon_braid_word_s19) (.arrow fibonacci_anyon_braid_word_l19 fibonacci_anyon_braid_word_s19 fibonacci_anyon_braid_word_s20))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def fibonacci_anyon_braid_word_true_arm : IGProtocol fibonacci_anyon_braid_word_s0 fibonacci_anyon_braid_word_s20 :=
  (fibonacci_anyon_braid_word_protocol).restrictToEVALT

-- false arm
noncomputable def fibonacci_anyon_braid_word_false_arm : IGProtocol fibonacci_anyon_braid_word_s0 fibonacci_anyon_braid_word_s20 :=
  (fibonacci_anyon_braid_word_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def fibonacci_anyon_braid_word_tier_ground : OuroboricityTier := TierFunctor.obj fibonacci_anyon_braid_word_s0
def fibonacci_anyon_braid_word_tier : OuroboricityTier := TierFunctor.obj fibonacci_anyon_braid_word_s20
#eval fibonacci_anyon_braid_word_tier_ground  -- tier of the ground (pre-transformation)
#eval fibonacci_anyon_braid_word_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem fibonacci_anyon_braid_word_frobenius :
    igFrobeniusAlg.mul fibonacci_anyon_braid_word_s0 fibonacci_anyon_braid_word_s0 = fibonacci_anyon_braid_word_s0 :=
  igFrobAlg_self_fusion fibonacci_anyon_braid_word_s0
