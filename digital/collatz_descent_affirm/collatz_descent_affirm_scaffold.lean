-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≺ → ⊥ → ≻ → ≺ → ∋ → ⋈ → ⊞ → ⊡ → ⊙ → ∈ → ⊤ → ≺ → ⊥ → ≻ → ≺ → ∋ → ⋈ → ⊡ → ⊣
-- Class: collatz_descent_affirm
-- Fingerprint: sig=(11,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 7), (12, 18)]

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
--   [3] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] ⋈     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [10] ⊡      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [11] ⊙   gram   := 𐑠               𐑭 → 𐑚  | identity — self-imscription
--   [12] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [13] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [16] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [18] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [19] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [20] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [21] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def collatz_descent_affirm_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def collatz_descent_affirm_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def collatz_descent_affirm_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_descent_affirm_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_descent_affirm_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def collatz_descent_affirm_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def collatz_descent_affirm_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def collatz_descent_affirm_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_descent_affirm_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def collatz_descent_affirm_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def collatz_descent_affirm_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def collatz_descent_affirm_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def collatz_descent_affirm_protocol : IGProtocol collatz_descent_affirm_s0 collatz_descent_affirm_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct collatz_descent_affirm_s7 collatz_descent_affirm_s7 = collatz_descent_affirm_s7 (idempotent)
  (.seq (.arrow collatz_descent_affirm_l0 collatz_descent_affirm_s0 collatz_descent_affirm_s1) (.seq (.prod (.arrow collatz_descent_affirm_l1 collatz_descent_affirm_s1 collatz_descent_affirm_s7) (.arrow collatz_descent_affirm_l1 collatz_descent_affirm_s1 collatz_descent_affirm_s7)) (.seq (.arrow collatz_descent_affirm_l7 collatz_descent_affirm_s7 collatz_descent_affirm_s7) (.seq (.arrow collatz_descent_affirm_l7 collatz_descent_affirm_s7 collatz_descent_affirm_s8) (.seq (.arrow collatz_descent_affirm_l8 collatz_descent_affirm_s8 collatz_descent_affirm_s9) (.seq (.arrow collatz_descent_affirm_l9 collatz_descent_affirm_s9 collatz_descent_affirm_s10) (.seq (.arrow collatz_descent_affirm_l10 collatz_descent_affirm_s10 collatz_descent_affirm_s11) (.seq (.arrow collatz_descent_affirm_l11 collatz_descent_affirm_s11 collatz_descent_affirm_s12) (.seq (.arrow collatz_descent_affirm_l12 collatz_descent_affirm_s12 collatz_descent_affirm_s13) (.seq (.arrow collatz_descent_affirm_l13 collatz_descent_affirm_s13 collatz_descent_affirm_s14) (.seq (.arrow collatz_descent_affirm_l14 collatz_descent_affirm_s14 collatz_descent_affirm_s15) (.seq (.arrow collatz_descent_affirm_l15 collatz_descent_affirm_s15 collatz_descent_affirm_s16) (.seq (.arrow collatz_descent_affirm_l16 collatz_descent_affirm_s16 collatz_descent_affirm_s17) (.seq (.arrow collatz_descent_affirm_l17 collatz_descent_affirm_s17 collatz_descent_affirm_s18) (.seq (.arrow collatz_descent_affirm_l18 collatz_descent_affirm_s18 collatz_descent_affirm_s19) (.seq (.arrow collatz_descent_affirm_l19 collatz_descent_affirm_s19 collatz_descent_affirm_s20) (.arrow collatz_descent_affirm_l20 collatz_descent_affirm_s20 collatz_descent_affirm_s21)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def collatz_descent_affirm_true_arm : IGProtocol collatz_descent_affirm_s0 collatz_descent_affirm_s21 :=
  (collatz_descent_affirm_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_descent_affirm_false_arm : IGProtocol collatz_descent_affirm_s0 collatz_descent_affirm_s21 :=
  (collatz_descent_affirm_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def collatz_descent_affirm_tier_ground : OuroboricityTier := TierFunctor.obj collatz_descent_affirm_s0
def collatz_descent_affirm_tier : OuroboricityTier := TierFunctor.obj collatz_descent_affirm_s21
#eval collatz_descent_affirm_tier_ground  -- tier of the ground (pre-transformation)
#eval collatz_descent_affirm_tier  -- the Grammar's own verdict on the closed object
