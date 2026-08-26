-- IGProtocol scaffold: ⊡ → ⊢ → ⊣ → ≻ → ⋈ → ⊙ → ≻ → ∈ → ⊤ → ⊥ → ⋈ → ∋ → ≻ → ⊞ → ≺ → ⊥ → ⋈ → ≻ → ⊣
-- Class: cpython_instruction_set
-- Fingerprint: sig=(12,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(7, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊡      prot   := 𐑭               𐑭 → 𐑼  | irreversible fixation — winding number
--   [1] ⊢     dim    := 𐑼               𐑭 → 𐑡  | initial object — ground of distinction
--   [2] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [3] ≻      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [4] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [5] ⊙   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [6] ≻      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [7] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [12] ≻      rel    := 𐑾               𐑙 → 𐑳  | forward morphism — bidirectional arrow
--   [13] ⊞    stoi   := 𐑳               𐑾 → 𐑗  | engage paradox — B-state, both arms
--   [14] ≺      pol    := 𐑗               𐑳 → 𐑖  | reverse morphism — parity flip
--   [15] ⊥     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [16] ⋈     fid    := 𐑱               𐑖 → 𐑾  | composition — regime coherence
--   [17] ≻      rel    := 𐑾               𐑱 → 𐑡  | forward morphism — bidirectional arrow
--   [18] ⊣     top    := 𐑡               𐑾 → 𐑭  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def cpython_instruction_set_s0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def cpython_instruction_set_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def cpython_instruction_set_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def cpython_instruction_set_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def cpython_instruction_set_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def cpython_instruction_set_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def cpython_instruction_set_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def cpython_instruction_set_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def cpython_instruction_set_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def cpython_instruction_set_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def cpython_instruction_set_l0 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cpython_instruction_set_l1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cpython_instruction_set_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def cpython_instruction_set_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cpython_instruction_set_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cpython_instruction_set_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def cpython_instruction_set_protocol : IGProtocol cpython_instruction_set_s0 cpython_instruction_set_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct cpython_instruction_set_s11 cpython_instruction_set_s11 = cpython_instruction_set_s11 (idempotent)
  (.seq (.arrow cpython_instruction_set_l0 cpython_instruction_set_s0 cpython_instruction_set_s1) (.seq (.arrow cpython_instruction_set_l1 cpython_instruction_set_s1 cpython_instruction_set_s2) (.seq (.arrow cpython_instruction_set_l2 cpython_instruction_set_s2 cpython_instruction_set_s3) (.seq (.arrow cpython_instruction_set_l3 cpython_instruction_set_s3 cpython_instruction_set_s4) (.seq (.arrow cpython_instruction_set_l4 cpython_instruction_set_s4 cpython_instruction_set_s5) (.seq (.arrow cpython_instruction_set_l5 cpython_instruction_set_s5 cpython_instruction_set_s6) (.seq (.arrow cpython_instruction_set_l6 cpython_instruction_set_s6 cpython_instruction_set_s7) (.seq (.prod (.arrow cpython_instruction_set_l7 cpython_instruction_set_s7 cpython_instruction_set_s11) (.arrow cpython_instruction_set_l7 cpython_instruction_set_s7 cpython_instruction_set_s11)) (.seq (.arrow cpython_instruction_set_l11 cpython_instruction_set_s11 cpython_instruction_set_s11) (.seq (.arrow cpython_instruction_set_l11 cpython_instruction_set_s11 cpython_instruction_set_s12) (.seq (.arrow cpython_instruction_set_l12 cpython_instruction_set_s12 cpython_instruction_set_s13) (.seq (.arrow cpython_instruction_set_l13 cpython_instruction_set_s13 cpython_instruction_set_s14) (.seq (.arrow cpython_instruction_set_l14 cpython_instruction_set_s14 cpython_instruction_set_s15) (.seq (.arrow cpython_instruction_set_l15 cpython_instruction_set_s15 cpython_instruction_set_s16) (.seq (.arrow cpython_instruction_set_l16 cpython_instruction_set_s16 cpython_instruction_set_s17) (.arrow cpython_instruction_set_l17 cpython_instruction_set_s17 cpython_instruction_set_s18))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def cpython_instruction_set_true_arm : IGProtocol cpython_instruction_set_s0 cpython_instruction_set_s18 :=
  (cpython_instruction_set_protocol).restrictToEVALT

-- false arm
noncomputable def cpython_instruction_set_false_arm : IGProtocol cpython_instruction_set_s0 cpython_instruction_set_s18 :=
  (cpython_instruction_set_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def cpython_instruction_set_tier_ground : OuroboricityTier := TierFunctor.obj cpython_instruction_set_s0
def cpython_instruction_set_tier : OuroboricityTier := TierFunctor.obj cpython_instruction_set_s18
#eval cpython_instruction_set_tier_ground  -- tier of the ground (pre-transformation)
#eval cpython_instruction_set_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem cpython_instruction_set_frobenius :
    igFrobeniusAlg.mul cpython_instruction_set_s0 cpython_instruction_set_s0 = cpython_instruction_set_s0 :=
  igFrobAlg_self_fusion cpython_instruction_set_s0
