-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ⊤ → ≻ → ◻ → ⊥ → ≺ → ⊞ → ⋈ → ∈ → ⊤ → ≻ → ◻ → ⊥ → ≺ → ⊞ → ⋈ → ∋ → ⊣ → ⊙ → ◻
-- Class: Let  \n\n\[f(n)=\begin{cases}n/2, & n \text{ even},\3n+1, & n \text{ odd}.\end{cases}\]\n\nFor every positive integer \(n\), repeatedly applying \(f\) eventually reaches \(1\). That is, for all \(n\in\mathbb{Z}_{>0}\), there exists \(k\ge 0\) such that  \n\n\[f^k(n)=1\]
-- Fingerprint: sig=(10,3,6,3)
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
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑠 → ⊙  | split δ — range decomposition
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] ≻      rel    := 𐑾               ⊙ → 𐑭  | forward morphism — bidirectional arrow
--   [5] ◻      prot   := 𐑭               𐑾 → 𐑖  | irreversible fixation — winding number
--   [6] ⊥     chir   := 𐑖               𐑭 → 𐑗  | evaluate-false — chirality check
--   [7] ≺      pol    := 𐑗               𐑖 → 𐑳  | reverse morphism — parity flip
--   [8] ⊞    stoi   := 𐑳               𐑗 → 𐑱  | engage paradox — B-state, both arms
--   [9] ⋈     fid    := 𐑱               𐑳 → 𐑚  | composition — regime coherence
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] ◻      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [17] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [18] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [19] ⊣     top    := 𐑡               𐑙 → 𐑠  | terminal object — connectivity boundary
--   [20] ⊙   gram   := 𐑠               𐑡 → 𐑭  | identity — self-imscription
--   [21] ◻      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_protocol : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 = let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 (idempotent)
  (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s1) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l1 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s1 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s2) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l2 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s2 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s3) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l3 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s3 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s4) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l4 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s4 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s5) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l5 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s5 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s6) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l6 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s6 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s7) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l7 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s7 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s8) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l8 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s8 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s9) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l9 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s9 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s10) (.seq (.prod (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l10 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s10 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18) (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l10 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s10 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18)) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l18 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l18 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s18 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s19) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l19 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s19 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s20) (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_l20 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s20 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_true_arm : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21 :=
  (let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_protocol).restrictToEVALT

-- false arm
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_false_arm : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21 :=
  (let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_tier_ground : OuroboricityTier := TierFunctor.obj let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0
def let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_tier : OuroboricityTier := TierFunctor.obj let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s21
#eval let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_tier_ground  -- tier of the ground (pre-transformation)
#eval let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_frobenius :
    igFrobeniusAlg.mul let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 = let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0 :=
  igFrobAlg_self_fusion let_n_n_f_n_begin_cases_n_2_n_text_even_769e03_s0
