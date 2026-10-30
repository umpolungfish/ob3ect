-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ⊣ → ∈ → ⊤ → ≻ → ⊥ → ≺ → ⊞ → ∋ → ⊙ → ⊡ → ⋈ → ⊣
-- Class: efl_negate
-- Fingerprint: sig=(13,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(8, 14)]

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
--   [6] ⋈     fid    := 𐑱               𐑾 → 𐑡  | composition — regime coherence
--   [7] ⊣     top    := 𐑡               𐑱 → 𐑚  | terminal object — connectivity boundary
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] ⊙   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [16] ⊡      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [17] ⋈     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [18] ⊣     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def efl_negate_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_negate_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def efl_negate_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def efl_negate_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def efl_negate_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def efl_negate_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def efl_negate_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def efl_negate_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def efl_negate_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def efl_negate_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def efl_negate_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def efl_negate_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def efl_negate_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_negate_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def efl_negate_protocol : IGProtocol efl_negate_s0 efl_negate_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct efl_negate_s14 efl_negate_s14 = efl_negate_s14 (idempotent)
  (.seq (.arrow efl_negate_l0 efl_negate_s0 efl_negate_s1) (.seq (.arrow efl_negate_l1 efl_negate_s1 efl_negate_s2) (.seq (.arrow efl_negate_l2 efl_negate_s2 efl_negate_s3) (.seq (.arrow efl_negate_l3 efl_negate_s3 efl_negate_s4) (.seq (.arrow efl_negate_l4 efl_negate_s4 efl_negate_s5) (.seq (.arrow efl_negate_l5 efl_negate_s5 efl_negate_s6) (.seq (.arrow efl_negate_l6 efl_negate_s6 efl_negate_s7) (.seq (.arrow efl_negate_l7 efl_negate_s7 efl_negate_s8) (.seq (.prod (.arrow efl_negate_l8 efl_negate_s8 efl_negate_s14) (.arrow efl_negate_l8 efl_negate_s8 efl_negate_s14)) (.seq (.arrow efl_negate_l14 efl_negate_s14 efl_negate_s14) (.seq (.arrow efl_negate_l14 efl_negate_s14 efl_negate_s15) (.seq (.arrow efl_negate_l15 efl_negate_s15 efl_negate_s16) (.seq (.arrow efl_negate_l16 efl_negate_s16 efl_negate_s17) (.arrow efl_negate_l17 efl_negate_s17 efl_negate_s18))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def efl_negate_true_arm : IGProtocol efl_negate_s0 efl_negate_s18 :=
  (efl_negate_protocol).restrictToEVALT

-- false arm
noncomputable def efl_negate_false_arm : IGProtocol efl_negate_s0 efl_negate_s18 :=
  (efl_negate_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def efl_negate_tier_ground : OuroboricityTier := TierFunctor.obj efl_negate_s0
def efl_negate_tier : OuroboricityTier := TierFunctor.obj efl_negate_s18
#eval efl_negate_tier_ground  -- tier of the ground (pre-transformation)
#eval efl_negate_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem efl_negate_frobenius :
    igFrobeniusAlg.mul efl_negate_s0 efl_negate_s0 = efl_negate_s0 :=
  igFrobAlg_self_fusion efl_negate_s0
