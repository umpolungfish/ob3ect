-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ⋈ → ⊙ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⊡ → ⊣
-- Class: t2_efl_negate
-- Fingerprint: sig=(12,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=18
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(9, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [4] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [5] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [6] ⋈     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [7] ⋈     fid    := 𐑱               𐑱 → 𐑠  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [9] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def t2_efl_negate_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t2_efl_negate_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t2_efl_negate_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def t2_efl_negate_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t2_efl_negate_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t2_efl_negate_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def t2_efl_negate_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def t2_efl_negate_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def t2_efl_negate_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t2_efl_negate_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def t2_efl_negate_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def t2_efl_negate_protocol : IGProtocol t2_efl_negate_s0 t2_efl_negate_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct t2_efl_negate_s15 t2_efl_negate_s15 = t2_efl_negate_s15 (idempotent)
  (.seq (.arrow t2_efl_negate_l0 t2_efl_negate_s0 t2_efl_negate_s1) (.seq (.arrow t2_efl_negate_l1 t2_efl_negate_s1 t2_efl_negate_s2) (.seq (.arrow t2_efl_negate_l2 t2_efl_negate_s2 t2_efl_negate_s3) (.seq (.arrow t2_efl_negate_l3 t2_efl_negate_s3 t2_efl_negate_s4) (.seq (.arrow t2_efl_negate_l4 t2_efl_negate_s4 t2_efl_negate_s5) (.seq (.arrow t2_efl_negate_l5 t2_efl_negate_s5 t2_efl_negate_s6) (.seq (.arrow t2_efl_negate_l6 t2_efl_negate_s6 t2_efl_negate_s7) (.seq (.arrow t2_efl_negate_l7 t2_efl_negate_s7 t2_efl_negate_s8) (.seq (.arrow t2_efl_negate_l8 t2_efl_negate_s8 t2_efl_negate_s9) (.seq (.prod (.arrow t2_efl_negate_l9 t2_efl_negate_s9 t2_efl_negate_s15) (.arrow t2_efl_negate_l9 t2_efl_negate_s9 t2_efl_negate_s15)) (.seq (.arrow t2_efl_negate_l15 t2_efl_negate_s15 t2_efl_negate_s15) (.seq (.arrow t2_efl_negate_l15 t2_efl_negate_s15 t2_efl_negate_s16) (.arrow t2_efl_negate_l16 t2_efl_negate_s16 t2_efl_negate_s17)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def t2_efl_negate_true_arm : IGProtocol t2_efl_negate_s0 t2_efl_negate_s17 :=
  (t2_efl_negate_protocol).restrictToEVALT

-- false arm
noncomputable def t2_efl_negate_false_arm : IGProtocol t2_efl_negate_s0 t2_efl_negate_s17 :=
  (t2_efl_negate_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def t2_efl_negate_tier_ground : OuroboricityTier := TierFunctor.obj t2_efl_negate_s0
def t2_efl_negate_tier : OuroboricityTier := TierFunctor.obj t2_efl_negate_s17
#eval t2_efl_negate_tier_ground  -- tier of the ground (pre-transformation)
#eval t2_efl_negate_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem t2_efl_negate_frobenius :
    igFrobeniusAlg.mul t2_efl_negate_s0 t2_efl_negate_s0 = t2_efl_negate_s0 :=
  igFrobAlg_self_fusion t2_efl_negate_s0
