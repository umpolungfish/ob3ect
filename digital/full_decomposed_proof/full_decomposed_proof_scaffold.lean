-- IGProtocol scaffold: ⊢ → ≻ → ∈ → ⊤ → ⋈ → ≻ → ⊥ → ≺ → ⋈ → ⊞ → ⊙ → ∋ → ⋈ → ⊡ → ⊣ → ⊙ → ⊢ → ≻ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ⊡ → ⊣
-- Class: full decomposed proof
-- Fingerprint: sig=(14,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=25
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 11), (18, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [12] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [13] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [14] ⊣     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [15] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription
--   [16] ⊢     dim    := 𐑼               𐑠 → 𐑾  | initial object — ground of distinction
--   [17] ≻      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [18] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [19] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [21] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [22] ⋈     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [23] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [24] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def full_decomposed_proof_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def full_decomposed_proof_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def full_decomposed_proof_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def full_decomposed_proof_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def full_decomposed_proof_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def full_decomposed_proof_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def full_decomposed_proof_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l16 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def full_decomposed_proof_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def full_decomposed_proof_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def full_decomposed_proof_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def full_decomposed_proof_protocol : IGProtocol full_decomposed_proof_s0 full_decomposed_proof_s24 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct full_decomposed_proof_s11 full_decomposed_proof_s11 = full_decomposed_proof_s11 (idempotent)
  (.seq (.arrow full_decomposed_proof_l0 full_decomposed_proof_s0 full_decomposed_proof_s1) (.seq (.arrow full_decomposed_proof_l1 full_decomposed_proof_s1 full_decomposed_proof_s2) (.seq (.prod (.arrow full_decomposed_proof_l2 full_decomposed_proof_s2 full_decomposed_proof_s11) (.arrow full_decomposed_proof_l2 full_decomposed_proof_s2 full_decomposed_proof_s11)) (.seq (.arrow full_decomposed_proof_l11 full_decomposed_proof_s11 full_decomposed_proof_s11) (.seq (.arrow full_decomposed_proof_l11 full_decomposed_proof_s11 full_decomposed_proof_s12) (.seq (.arrow full_decomposed_proof_l12 full_decomposed_proof_s12 full_decomposed_proof_s13) (.seq (.arrow full_decomposed_proof_l13 full_decomposed_proof_s13 full_decomposed_proof_s14) (.seq (.arrow full_decomposed_proof_l14 full_decomposed_proof_s14 full_decomposed_proof_s15) (.seq (.arrow full_decomposed_proof_l15 full_decomposed_proof_s15 full_decomposed_proof_s16) (.seq (.arrow full_decomposed_proof_l16 full_decomposed_proof_s16 full_decomposed_proof_s17) (.seq (.arrow full_decomposed_proof_l17 full_decomposed_proof_s17 full_decomposed_proof_s18) (.seq (.arrow full_decomposed_proof_l18 full_decomposed_proof_s18 full_decomposed_proof_s19) (.seq (.arrow full_decomposed_proof_l19 full_decomposed_proof_s19 full_decomposed_proof_s20) (.seq (.arrow full_decomposed_proof_l20 full_decomposed_proof_s20 full_decomposed_proof_s21) (.seq (.arrow full_decomposed_proof_l21 full_decomposed_proof_s21 full_decomposed_proof_s22) (.seq (.arrow full_decomposed_proof_l22 full_decomposed_proof_s22 full_decomposed_proof_s23) (.arrow full_decomposed_proof_l23 full_decomposed_proof_s23 full_decomposed_proof_s24)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def full_decomposed_proof_true_arm : IGProtocol full_decomposed_proof_s0 full_decomposed_proof_s24 :=
  (full_decomposed_proof_protocol).restrictToEVALT

-- false arm
noncomputable def full_decomposed_proof_false_arm : IGProtocol full_decomposed_proof_s0 full_decomposed_proof_s24 :=
  (full_decomposed_proof_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def full_decomposed_proof_tier_ground : OuroboricityTier := TierFunctor.obj full_decomposed_proof_s0
def full_decomposed_proof_tier : OuroboricityTier := TierFunctor.obj full_decomposed_proof_s24
#eval full_decomposed_proof_tier_ground  -- tier of the ground (pre-transformation)
#eval full_decomposed_proof_tier  -- the Grammar's own verdict on the closed object
