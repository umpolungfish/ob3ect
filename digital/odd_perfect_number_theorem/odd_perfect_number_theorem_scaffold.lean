-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ∈ → ⊤ → ≻ → ⋈ → ⊥ → ≺ → ⋈ → ⊞ → ⊡ → ⊙ → ≻ → ≺ → ⋈ → ⊤ → ⊥ → ⊞ → ⊡ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ⊙ → ≺ → ⊡ → ⊞ → ⊣
-- Class: odd perfect number theorem
-- Fingerprint: sig=(15,3,9,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=30
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(20, 23)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] ∈    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [5] ≻      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [6] ⋈     fid    := 𐑱               𐑾 → 𐑖  | composition — regime coherence
--   [7] ⊥     chir   := 𐑖               𐑱 → 𐑗  | evaluate-false — chirality check
--   [8] ≺      pol    := 𐑗               𐑖 → 𐑱  | reverse morphism — parity flip
--   [9] ⋈     fid    := 𐑱               𐑗 → 𐑳  | composition — regime coherence
--   [10] ⊞    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [11] ⊡      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [12] ⊙   gram   := 𐑠               𐑭 → 𐑾  | identity — self-imscription
--   [13] ≻      rel    := 𐑾               𐑠 → 𐑗  | forward morphism — bidirectional arrow
--   [14] ≺      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [15] ⋈     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [16] ⊤     crit   := ⊙               𐑱 → 𐑖  | evaluate-true — criticality gate open
--   [17] ⊥     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [18] ⊞    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [19] ⊡      prot   := 𐑭               𐑳 → 𐑚  | irreversible fixation — winding number
--   [20] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [21] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [22] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [23] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [24] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [25] ⊙   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [26] ≺      pol    := 𐑗               𐑠 → 𐑭  | reverse morphism — parity flip
--   [27] ⊡      prot   := 𐑭               𐑗 → 𐑳  | irreversible fixation — winding number
--   [28] ⊞    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [29] ⊣     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def odd_perfect_number_theorem_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def odd_perfect_number_theorem_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def odd_perfect_number_theorem_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def odd_perfect_number_theorem_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def odd_perfect_number_theorem_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def odd_perfect_number_theorem_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def odd_perfect_number_theorem_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def odd_perfect_number_theorem_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def odd_perfect_number_theorem_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def odd_perfect_number_theorem_protocol : IGProtocol odd_perfect_number_theorem_s0 odd_perfect_number_theorem_s29 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct odd_perfect_number_theorem_s23 odd_perfect_number_theorem_s23 = odd_perfect_number_theorem_s23 (idempotent)
  (.seq (.arrow odd_perfect_number_theorem_l0 odd_perfect_number_theorem_s0 odd_perfect_number_theorem_s1) (.seq (.arrow odd_perfect_number_theorem_l1 odd_perfect_number_theorem_s1 odd_perfect_number_theorem_s2) (.seq (.arrow odd_perfect_number_theorem_l2 odd_perfect_number_theorem_s2 odd_perfect_number_theorem_s3) (.seq (.arrow odd_perfect_number_theorem_l3 odd_perfect_number_theorem_s3 odd_perfect_number_theorem_s4) (.seq (.arrow odd_perfect_number_theorem_l4 odd_perfect_number_theorem_s4 odd_perfect_number_theorem_s5) (.seq (.arrow odd_perfect_number_theorem_l5 odd_perfect_number_theorem_s5 odd_perfect_number_theorem_s6) (.seq (.arrow odd_perfect_number_theorem_l6 odd_perfect_number_theorem_s6 odd_perfect_number_theorem_s7) (.seq (.arrow odd_perfect_number_theorem_l7 odd_perfect_number_theorem_s7 odd_perfect_number_theorem_s8) (.seq (.arrow odd_perfect_number_theorem_l8 odd_perfect_number_theorem_s8 odd_perfect_number_theorem_s9) (.seq (.arrow odd_perfect_number_theorem_l9 odd_perfect_number_theorem_s9 odd_perfect_number_theorem_s10) (.seq (.arrow odd_perfect_number_theorem_l10 odd_perfect_number_theorem_s10 odd_perfect_number_theorem_s11) (.seq (.arrow odd_perfect_number_theorem_l11 odd_perfect_number_theorem_s11 odd_perfect_number_theorem_s12) (.seq (.arrow odd_perfect_number_theorem_l12 odd_perfect_number_theorem_s12 odd_perfect_number_theorem_s13) (.seq (.arrow odd_perfect_number_theorem_l13 odd_perfect_number_theorem_s13 odd_perfect_number_theorem_s14) (.seq (.arrow odd_perfect_number_theorem_l14 odd_perfect_number_theorem_s14 odd_perfect_number_theorem_s15) (.seq (.arrow odd_perfect_number_theorem_l15 odd_perfect_number_theorem_s15 odd_perfect_number_theorem_s16) (.seq (.arrow odd_perfect_number_theorem_l16 odd_perfect_number_theorem_s16 odd_perfect_number_theorem_s17) (.seq (.arrow odd_perfect_number_theorem_l17 odd_perfect_number_theorem_s17 odd_perfect_number_theorem_s18) (.seq (.arrow odd_perfect_number_theorem_l18 odd_perfect_number_theorem_s18 odd_perfect_number_theorem_s19) (.seq (.arrow odd_perfect_number_theorem_l19 odd_perfect_number_theorem_s19 odd_perfect_number_theorem_s20) (.seq (.prod (.arrow odd_perfect_number_theorem_l20 odd_perfect_number_theorem_s20 odd_perfect_number_theorem_s23) (.arrow odd_perfect_number_theorem_l20 odd_perfect_number_theorem_s20 odd_perfect_number_theorem_s23)) (.seq (.arrow odd_perfect_number_theorem_l23 odd_perfect_number_theorem_s23 odd_perfect_number_theorem_s23) (.seq (.arrow odd_perfect_number_theorem_l23 odd_perfect_number_theorem_s23 odd_perfect_number_theorem_s24) (.seq (.arrow odd_perfect_number_theorem_l24 odd_perfect_number_theorem_s24 odd_perfect_number_theorem_s25) (.seq (.arrow odd_perfect_number_theorem_l25 odd_perfect_number_theorem_s25 odd_perfect_number_theorem_s26) (.seq (.arrow odd_perfect_number_theorem_l26 odd_perfect_number_theorem_s26 odd_perfect_number_theorem_s27) (.seq (.arrow odd_perfect_number_theorem_l27 odd_perfect_number_theorem_s27 odd_perfect_number_theorem_s28) (.arrow odd_perfect_number_theorem_l28 odd_perfect_number_theorem_s28 odd_perfect_number_theorem_s29))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def odd_perfect_number_theorem_true_arm : IGProtocol odd_perfect_number_theorem_s0 odd_perfect_number_theorem_s29 :=
  (odd_perfect_number_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def odd_perfect_number_theorem_false_arm : IGProtocol odd_perfect_number_theorem_s0 odd_perfect_number_theorem_s29 :=
  (odd_perfect_number_theorem_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def odd_perfect_number_theorem_tier_ground : OuroboricityTier := TierFunctor.obj odd_perfect_number_theorem_s0
def odd_perfect_number_theorem_tier : OuroboricityTier := TierFunctor.obj odd_perfect_number_theorem_s29
#eval odd_perfect_number_theorem_tier_ground  -- tier of the ground (pre-transformation)
#eval odd_perfect_number_theorem_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem odd_perfect_number_theorem_frobenius :
    igFrobeniusAlg.mul odd_perfect_number_theorem_s0 odd_perfect_number_theorem_s0 = odd_perfect_number_theorem_s0 :=
  igFrobAlg_self_fusion odd_perfect_number_theorem_s0
