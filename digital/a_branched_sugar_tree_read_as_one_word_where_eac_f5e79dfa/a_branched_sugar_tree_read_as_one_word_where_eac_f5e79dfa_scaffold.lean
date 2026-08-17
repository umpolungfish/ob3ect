-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ⋈ → ⊙ → ∈ → ≻ → ⋈ → ⊙ → ⊣ → ≻ → ⋈ → ⊙ → ⊣ → ∋ → ⊤ → ⊥ → ⊞ → ◻ → ⊣
-- Class: A branched sugar tree read as one word, where each branch point is a split and the reducing end is the anchor. Report how the tree's branching becomes fork/fuse structure and what closure the whole glycan carries.
-- Fingerprint: sig=(14,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] ⊣     top    := 𐑡               𐑚 → 𐑙  | terminal object — connectivity boundary
--   [10] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] ⊣     top    := 𐑡               𐑚 → 𐑙  | terminal object — connectivity boundary
--   [14] ∋     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [15] ⊤     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [16] ⊥     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [17] ⊞    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [18] ◻      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [19] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_branched_sugar_tree_read_as_one_word_8c7eb6_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_branched_sugar_tree_read_as_one_word_8c7eb6_protocol : IGProtocol a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 = a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 (idempotent)
  (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s1) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l1 a_branched_sugar_tree_read_as_one_word_8c7eb6_s1 a_branched_sugar_tree_read_as_one_word_8c7eb6_s2) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l2 a_branched_sugar_tree_read_as_one_word_8c7eb6_s2 a_branched_sugar_tree_read_as_one_word_8c7eb6_s3) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l3 a_branched_sugar_tree_read_as_one_word_8c7eb6_s3 a_branched_sugar_tree_read_as_one_word_8c7eb6_s4) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l4 a_branched_sugar_tree_read_as_one_word_8c7eb6_s4 a_branched_sugar_tree_read_as_one_word_8c7eb6_s5) (.seq (.prod (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l5 a_branched_sugar_tree_read_as_one_word_8c7eb6_s5 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14) (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l5 a_branched_sugar_tree_read_as_one_word_8c7eb6_s5 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14)) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l14 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l14 a_branched_sugar_tree_read_as_one_word_8c7eb6_s14 a_branched_sugar_tree_read_as_one_word_8c7eb6_s15) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l15 a_branched_sugar_tree_read_as_one_word_8c7eb6_s15 a_branched_sugar_tree_read_as_one_word_8c7eb6_s16) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l16 a_branched_sugar_tree_read_as_one_word_8c7eb6_s16 a_branched_sugar_tree_read_as_one_word_8c7eb6_s17) (.seq (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l17 a_branched_sugar_tree_read_as_one_word_8c7eb6_s17 a_branched_sugar_tree_read_as_one_word_8c7eb6_s18) (.arrow a_branched_sugar_tree_read_as_one_word_8c7eb6_l18 a_branched_sugar_tree_read_as_one_word_8c7eb6_s18 a_branched_sugar_tree_read_as_one_word_8c7eb6_s19))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_branched_sugar_tree_read_as_one_word_8c7eb6_true_arm : IGProtocol a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s19 :=
  (a_branched_sugar_tree_read_as_one_word_8c7eb6_protocol).restrictToEVALT

-- false arm
noncomputable def a_branched_sugar_tree_read_as_one_word_8c7eb6_false_arm : IGProtocol a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s19 :=
  (a_branched_sugar_tree_read_as_one_word_8c7eb6_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def a_branched_sugar_tree_read_as_one_word_8c7eb6_tier_ground : OuroboricityTier := TierFunctor.obj a_branched_sugar_tree_read_as_one_word_8c7eb6_s0
def a_branched_sugar_tree_read_as_one_word_8c7eb6_tier : OuroboricityTier := TierFunctor.obj a_branched_sugar_tree_read_as_one_word_8c7eb6_s19
#eval a_branched_sugar_tree_read_as_one_word_8c7eb6_tier_ground  -- tier of the ground (pre-transformation)
#eval a_branched_sugar_tree_read_as_one_word_8c7eb6_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_branched_sugar_tree_read_as_one_word_8c7eb6_frobenius :
    igFrobeniusAlg.mul a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 = a_branched_sugar_tree_read_as_one_word_8c7eb6_s0 :=
  igFrobAlg_self_fusion a_branched_sugar_tree_read_as_one_word_8c7eb6_s0
