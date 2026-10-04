-- IGProtocol scaffold: ⊢ → ≻ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ⊙ → ≺ → ⊥ → ⊞ → ⊡ → ≻ → ⋈ → ∈ → ⊤ → ⊥ → ∋ → ⊣
-- Class: ob3ect_sequence
-- Fingerprint: sig=(8,4,6,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 5), (14, 17)]

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
--   [4] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [7] ⊙   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [8] ≺      pol    := 𐑗               𐑠 → 𐑖  | reverse morphism — parity flip
--   [9] ⊥     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [10] ⊞    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [11] ⊡      prot   := 𐑭               𐑳 → 𐑾  | irreversible fixation — winding number
--   [12] ≻      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [13] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [14] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [18] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ob3ect_sequence_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def ob3ect_sequence_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ob3ect_sequence_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ob3ect_sequence_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ob3ect_sequence_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ob3ect_sequence_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ob3ect_sequence_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ob3ect_sequence_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ob3ect_sequence_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ob3ect_sequence_protocol : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct ob3ect_sequence_s5 ob3ect_sequence_s5 = ob3ect_sequence_s5 (idempotent)
  (.seq (.arrow ob3ect_sequence_l0 ob3ect_sequence_s0 ob3ect_sequence_s1) (.seq (.arrow ob3ect_sequence_l1 ob3ect_sequence_s1 ob3ect_sequence_s2) (.seq (.prod (.arrow ob3ect_sequence_l2 ob3ect_sequence_s2 ob3ect_sequence_s5) (.arrow ob3ect_sequence_l2 ob3ect_sequence_s2 ob3ect_sequence_s5)) (.seq (.arrow ob3ect_sequence_l5 ob3ect_sequence_s5 ob3ect_sequence_s5) (.seq (.arrow ob3ect_sequence_l5 ob3ect_sequence_s5 ob3ect_sequence_s6) (.seq (.arrow ob3ect_sequence_l6 ob3ect_sequence_s6 ob3ect_sequence_s7) (.seq (.arrow ob3ect_sequence_l7 ob3ect_sequence_s7 ob3ect_sequence_s8) (.seq (.arrow ob3ect_sequence_l8 ob3ect_sequence_s8 ob3ect_sequence_s9) (.seq (.arrow ob3ect_sequence_l9 ob3ect_sequence_s9 ob3ect_sequence_s10) (.seq (.arrow ob3ect_sequence_l10 ob3ect_sequence_s10 ob3ect_sequence_s11) (.seq (.arrow ob3ect_sequence_l11 ob3ect_sequence_s11 ob3ect_sequence_s12) (.seq (.arrow ob3ect_sequence_l12 ob3ect_sequence_s12 ob3ect_sequence_s13) (.seq (.arrow ob3ect_sequence_l13 ob3ect_sequence_s13 ob3ect_sequence_s14) (.seq (.arrow ob3ect_sequence_l14 ob3ect_sequence_s14 ob3ect_sequence_s15) (.seq (.arrow ob3ect_sequence_l15 ob3ect_sequence_s15 ob3ect_sequence_s16) (.seq (.arrow ob3ect_sequence_l16 ob3ect_sequence_s16 ob3ect_sequence_s17) (.arrow ob3ect_sequence_l17 ob3ect_sequence_s17 ob3ect_sequence_s18)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s18 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol ob3ect_sequence_s0 ob3ect_sequence_s18 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def ob3ect_sequence_tier_ground : OuroboricityTier := TierFunctor.obj ob3ect_sequence_s0
def ob3ect_sequence_tier : OuroboricityTier := TierFunctor.obj ob3ect_sequence_s18
#eval ob3ect_sequence_tier_ground  -- tier of the ground (pre-transformation)
#eval ob3ect_sequence_tier  -- the Grammar's own verdict on the closed object
