-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ≺ → ⊡ → ∋ → ∈ → ⊥ → ≻ → ⊡ → ∋ → ⋈ → ⊙ → ⊞ → ⊡ → ⊣
-- Class: Let  \n\n\[f(n)=\begin{cases}n/2, & n \text{ even},\3n+1, & n \text{ odd}.\end{cases}\]\n\nThere exists a positive integer \(n\) such that repeatedly applying \(f\) never reaches \(1\). That is, there exists \(n\in\mathbb{Z}_{>0}\) such that for all \(k\ge 0\),  \n\n\[f^k(n)\ne 1\]
-- Fingerprint: sig=(6,4,3,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 5), (6, 10)]

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
--   [4] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [5] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [6] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] ⊙   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [13] ⊞    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [14] ⊡      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [15] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_protocol : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 = let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 (idempotent)
  (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l0 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s1) (.seq (.prod (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l1 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s1 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5) (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l1 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s1 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5)) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l5 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l5 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s5 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s6) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l6 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s6 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s7) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l7 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s7 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s8) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l8 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s8 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s9) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l9 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s9 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s10) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l10 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s10 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s11) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l11 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s11 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s12) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l12 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s12 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s13) (.seq (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l13 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s13 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s14) (.arrow let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_l14 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s14 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_true_arm : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15 :=
  (let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_protocol).restrictToEVALT

-- false arm
noncomputable def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_false_arm : IGProtocol let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0 let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15 :=
  (let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_tier_ground : OuroboricityTier := TierFunctor.obj let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s0
def let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_tier : OuroboricityTier := TierFunctor.obj let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_s15
#eval let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_tier_ground  -- tier of the ground (pre-transformation)
#eval let_n_n_f_n_begin_cases_n_2_n_text_even_61ff05_tier  -- the Grammar's own verdict on the closed object
