-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ∈ → ⊥ → ≺ → ⊤ → ⋈ → ⋈ → ∈ → ⊞ → ≻ → ≻ → ⊙ → ∈ → ⊤ → ⊥ → ∋ → ⊡ → ⊣
-- Class: square_congruence_from_smooth_relations
-- Fingerprint: sig=(10,4,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(14, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑾 → 𐑖  | split δ — range decomposition
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑗  | evaluate-false — chirality check
--   [5] ≺      pol    := 𐑗               𐑖 → ⊙  | reverse morphism — parity flip
--   [6] ⊤     crit   := ⊙               𐑗 → 𐑱  | evaluate-true — criticality gate open
--   [7] ⋈     fid    := 𐑱               ⊙ → 𐑱  | composition — regime coherence
--   [8] ⋈     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [9] ∈    gran   := 𐑚               𐑱 → 𐑳  | split δ — range decomposition
--   [10] ⊞    stoi   := 𐑳               𐑚 → 𐑾  | engage paradox — B-state, both arms
--   [11] ≻      rel    := 𐑾               𐑳 → 𐑾  | forward morphism — bidirectional arrow
--   [12] ≻      rel    := 𐑾               𐑾 → 𐑠  | forward morphism — bidirectional arrow
--   [13] ⊙   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [14] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [19] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def square_congruence_from_smooth_relations_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def square_congruence_from_smooth_relations_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def square_congruence_from_smooth_relations_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def square_congruence_from_smooth_relations_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def square_congruence_from_smooth_relations_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def square_congruence_from_smooth_relations_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def square_congruence_from_smooth_relations_protocol : IGProtocol square_congruence_from_smooth_relations_s0 square_congruence_from_smooth_relations_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct square_congruence_from_smooth_relations_s17 square_congruence_from_smooth_relations_s17 = square_congruence_from_smooth_relations_s17 (idempotent)
  (.seq (.arrow square_congruence_from_smooth_relations_l0 square_congruence_from_smooth_relations_s0 square_congruence_from_smooth_relations_s1) (.seq (.arrow square_congruence_from_smooth_relations_l1 square_congruence_from_smooth_relations_s1 square_congruence_from_smooth_relations_s2) (.seq (.arrow square_congruence_from_smooth_relations_l2 square_congruence_from_smooth_relations_s2 square_congruence_from_smooth_relations_s3) (.seq (.arrow square_congruence_from_smooth_relations_l3 square_congruence_from_smooth_relations_s3 square_congruence_from_smooth_relations_s4) (.seq (.arrow square_congruence_from_smooth_relations_l4 square_congruence_from_smooth_relations_s4 square_congruence_from_smooth_relations_s5) (.seq (.arrow square_congruence_from_smooth_relations_l5 square_congruence_from_smooth_relations_s5 square_congruence_from_smooth_relations_s6) (.seq (.arrow square_congruence_from_smooth_relations_l6 square_congruence_from_smooth_relations_s6 square_congruence_from_smooth_relations_s7) (.seq (.arrow square_congruence_from_smooth_relations_l7 square_congruence_from_smooth_relations_s7 square_congruence_from_smooth_relations_s8) (.seq (.arrow square_congruence_from_smooth_relations_l8 square_congruence_from_smooth_relations_s8 square_congruence_from_smooth_relations_s9) (.seq (.arrow square_congruence_from_smooth_relations_l9 square_congruence_from_smooth_relations_s9 square_congruence_from_smooth_relations_s10) (.seq (.arrow square_congruence_from_smooth_relations_l10 square_congruence_from_smooth_relations_s10 square_congruence_from_smooth_relations_s11) (.seq (.arrow square_congruence_from_smooth_relations_l11 square_congruence_from_smooth_relations_s11 square_congruence_from_smooth_relations_s12) (.seq (.arrow square_congruence_from_smooth_relations_l12 square_congruence_from_smooth_relations_s12 square_congruence_from_smooth_relations_s13) (.seq (.arrow square_congruence_from_smooth_relations_l13 square_congruence_from_smooth_relations_s13 square_congruence_from_smooth_relations_s14) (.seq (.prod (.arrow square_congruence_from_smooth_relations_l14 square_congruence_from_smooth_relations_s14 square_congruence_from_smooth_relations_s17) (.arrow square_congruence_from_smooth_relations_l14 square_congruence_from_smooth_relations_s14 square_congruence_from_smooth_relations_s17)) (.seq (.arrow square_congruence_from_smooth_relations_l17 square_congruence_from_smooth_relations_s17 square_congruence_from_smooth_relations_s17) (.seq (.arrow square_congruence_from_smooth_relations_l17 square_congruence_from_smooth_relations_s17 square_congruence_from_smooth_relations_s18) (.arrow square_congruence_from_smooth_relations_l18 square_congruence_from_smooth_relations_s18 square_congruence_from_smooth_relations_s19))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def square_congruence_from_smooth_relations_true_arm : IGProtocol square_congruence_from_smooth_relations_s0 square_congruence_from_smooth_relations_s19 :=
  (square_congruence_from_smooth_relations_protocol).restrictToEVALT

-- false arm
noncomputable def square_congruence_from_smooth_relations_false_arm : IGProtocol square_congruence_from_smooth_relations_s0 square_congruence_from_smooth_relations_s19 :=
  (square_congruence_from_smooth_relations_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def square_congruence_from_smooth_relations_tier_ground : OuroboricityTier := TierFunctor.obj square_congruence_from_smooth_relations_s0
def square_congruence_from_smooth_relations_tier : OuroboricityTier := TierFunctor.obj square_congruence_from_smooth_relations_s19
#eval square_congruence_from_smooth_relations_tier_ground  -- tier of the ground (pre-transformation)
#eval square_congruence_from_smooth_relations_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem square_congruence_from_smooth_relations_frobenius :
    igFrobeniusAlg.mul square_congruence_from_smooth_relations_s0 square_congruence_from_smooth_relations_s0 = square_congruence_from_smooth_relations_s0 :=
  igFrobAlg_self_fusion square_congruence_from_smooth_relations_s0
