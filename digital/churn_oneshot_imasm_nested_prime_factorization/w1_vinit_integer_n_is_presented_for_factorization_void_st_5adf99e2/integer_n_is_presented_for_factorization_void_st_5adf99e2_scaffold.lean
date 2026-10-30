-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ⊡ → ≻ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⋈ → ⊥ → ⊙ → ≺ → ∋ → ⊣
-- Class: Integer n is presented for factorization. Void state, the number exists but no factors are known, the register is empty at 00.
-- Fingerprint: sig=(6,4,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(5, 8), (1, 14)]

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
--   [3] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [4] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [15] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def integer_n_is_presented_for_45a6a7_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def integer_n_is_presented_for_45a6a7_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def integer_n_is_presented_for_45a6a7_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def integer_n_is_presented_for_45a6a7_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def integer_n_is_presented_for_45a6a7_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def integer_n_is_presented_for_45a6a7_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def integer_n_is_presented_for_45a6a7_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def integer_n_is_presented_for_45a6a7_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def integer_n_is_presented_for_45a6a7_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def integer_n_is_presented_for_45a6a7_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def integer_n_is_presented_for_45a6a7_protocol : IGProtocol integer_n_is_presented_for_45a6a7_s0 integer_n_is_presented_for_45a6a7_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct integer_n_is_presented_for_45a6a7_s8 integer_n_is_presented_for_45a6a7_s8 = integer_n_is_presented_for_45a6a7_s8 (idempotent)
  (.seq (.arrow integer_n_is_presented_for_45a6a7_l0 integer_n_is_presented_for_45a6a7_s0 integer_n_is_presented_for_45a6a7_s1) (.seq (.prod (.arrow integer_n_is_presented_for_45a6a7_l1 integer_n_is_presented_for_45a6a7_s1 integer_n_is_presented_for_45a6a7_s8) (.arrow integer_n_is_presented_for_45a6a7_l1 integer_n_is_presented_for_45a6a7_s1 integer_n_is_presented_for_45a6a7_s8)) (.seq (.arrow integer_n_is_presented_for_45a6a7_l8 integer_n_is_presented_for_45a6a7_s8 integer_n_is_presented_for_45a6a7_s8) (.seq (.arrow integer_n_is_presented_for_45a6a7_l8 integer_n_is_presented_for_45a6a7_s8 integer_n_is_presented_for_45a6a7_s9) (.seq (.arrow integer_n_is_presented_for_45a6a7_l9 integer_n_is_presented_for_45a6a7_s9 integer_n_is_presented_for_45a6a7_s10) (.seq (.arrow integer_n_is_presented_for_45a6a7_l10 integer_n_is_presented_for_45a6a7_s10 integer_n_is_presented_for_45a6a7_s11) (.seq (.arrow integer_n_is_presented_for_45a6a7_l11 integer_n_is_presented_for_45a6a7_s11 integer_n_is_presented_for_45a6a7_s12) (.seq (.arrow integer_n_is_presented_for_45a6a7_l12 integer_n_is_presented_for_45a6a7_s12 integer_n_is_presented_for_45a6a7_s13) (.seq (.arrow integer_n_is_presented_for_45a6a7_l13 integer_n_is_presented_for_45a6a7_s13 integer_n_is_presented_for_45a6a7_s14) (.arrow integer_n_is_presented_for_45a6a7_l14 integer_n_is_presented_for_45a6a7_s14 integer_n_is_presented_for_45a6a7_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def integer_n_is_presented_for_45a6a7_true_arm : IGProtocol integer_n_is_presented_for_45a6a7_s0 integer_n_is_presented_for_45a6a7_s15 :=
  (integer_n_is_presented_for_45a6a7_protocol).restrictToEVALT

-- false arm
noncomputable def integer_n_is_presented_for_45a6a7_false_arm : IGProtocol integer_n_is_presented_for_45a6a7_s0 integer_n_is_presented_for_45a6a7_s15 :=
  (integer_n_is_presented_for_45a6a7_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def integer_n_is_presented_for_45a6a7_tier_ground : OuroboricityTier := TierFunctor.obj integer_n_is_presented_for_45a6a7_s0
def integer_n_is_presented_for_45a6a7_tier : OuroboricityTier := TierFunctor.obj integer_n_is_presented_for_45a6a7_s15
#eval integer_n_is_presented_for_45a6a7_tier_ground  -- tier of the ground (pre-transformation)
#eval integer_n_is_presented_for_45a6a7_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem integer_n_is_presented_for_45a6a7_frobenius :
    igFrobeniusAlg.mul integer_n_is_presented_for_45a6a7_s0 integer_n_is_presented_for_45a6a7_s0 = integer_n_is_presented_for_45a6a7_s0 :=
  igFrobAlg_self_fusion integer_n_is_presented_for_45a6a7_s0
