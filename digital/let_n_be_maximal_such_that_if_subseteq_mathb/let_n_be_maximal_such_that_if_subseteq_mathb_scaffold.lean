-- IGProtocol scaffold: VINIT → AFWD → CLINK → AREV → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IFIX → TANCH
-- Class: Let (n)$ be maximal such that if \subseteq\mathbb{N}$ has $\lvert A\rvert=n$ then $\prod_{a\neq b\in A}(a+b)$ has at least (n)$ distinct prime factors. Is it true that (n)/\log n\to\infty0
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑗  | composition — regime coherence
--   [3] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [4] IMSCRIB   gram   := 𐑠               𐑗 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def let_n_be_maximal_such_that_if_subseteq_05c58f_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def let_n_be_maximal_such_that_if_subseteq_05c58f_protocol : IGProtocol let_n_be_maximal_such_that_if_subseteq_05c58f_s0 let_n_be_maximal_such_that_if_subseteq_05c58f_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct let_n_be_maximal_such_that_if_subseteq_05c58f_s9 let_n_be_maximal_such_that_if_subseteq_05c58f_s9 = let_n_be_maximal_such_that_if_subseteq_05c58f_s9 (idempotent)
  (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l0 let_n_be_maximal_such_that_if_subseteq_05c58f_s0 let_n_be_maximal_such_that_if_subseteq_05c58f_s1) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l1 let_n_be_maximal_such_that_if_subseteq_05c58f_s1 let_n_be_maximal_such_that_if_subseteq_05c58f_s2) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l2 let_n_be_maximal_such_that_if_subseteq_05c58f_s2 let_n_be_maximal_such_that_if_subseteq_05c58f_s3) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l3 let_n_be_maximal_such_that_if_subseteq_05c58f_s3 let_n_be_maximal_such_that_if_subseteq_05c58f_s4) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l4 let_n_be_maximal_such_that_if_subseteq_05c58f_s4 let_n_be_maximal_such_that_if_subseteq_05c58f_s5) (.seq (.prod (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l5 let_n_be_maximal_such_that_if_subseteq_05c58f_s5 let_n_be_maximal_such_that_if_subseteq_05c58f_s9) (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l5 let_n_be_maximal_such_that_if_subseteq_05c58f_s5 let_n_be_maximal_such_that_if_subseteq_05c58f_s9)) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l9 let_n_be_maximal_such_that_if_subseteq_05c58f_s9 let_n_be_maximal_such_that_if_subseteq_05c58f_s9) (.seq (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l9 let_n_be_maximal_such_that_if_subseteq_05c58f_s9 let_n_be_maximal_such_that_if_subseteq_05c58f_s10) (.arrow let_n_be_maximal_such_that_if_subseteq_05c58f_l10 let_n_be_maximal_such_that_if_subseteq_05c58f_s10 let_n_be_maximal_such_that_if_subseteq_05c58f_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def let_n_be_maximal_such_that_if_subseteq_05c58f_true_arm : IGProtocol let_n_be_maximal_such_that_if_subseteq_05c58f_s0 let_n_be_maximal_such_that_if_subseteq_05c58f_s11 :=
  (let_n_be_maximal_such_that_if_subseteq_05c58f_protocol).restrictToEVALT

-- false arm
noncomputable def let_n_be_maximal_such_that_if_subseteq_05c58f_false_arm : IGProtocol let_n_be_maximal_such_that_if_subseteq_05c58f_s0 let_n_be_maximal_such_that_if_subseteq_05c58f_s11 :=
  (let_n_be_maximal_such_that_if_subseteq_05c58f_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def let_n_be_maximal_such_that_if_subseteq_05c58f_tier : OuroboricityTier := TierFunctor.obj let_n_be_maximal_such_that_if_subseteq_05c58f_s0
#eval let_n_be_maximal_such_that_if_subseteq_05c58f_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem let_n_be_maximal_such_that_if_subseteq_05c58f_frobenius :
    igFrobeniusAlg.mul let_n_be_maximal_such_that_if_subseteq_05c58f_s0 let_n_be_maximal_such_that_if_subseteq_05c58f_s0 = let_n_be_maximal_such_that_if_subseteq_05c58f_s0 :=
  igFrobAlg_self_fusion let_n_be_maximal_such_that_if_subseteq_05c58f_s0
