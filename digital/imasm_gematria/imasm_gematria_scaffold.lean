-- IGProtocol scaffold: ⊢ → ≻ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⋈ → ≺ → ⊙ → ⊡ → ⊣
-- Class: IMASM Gematria
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 6)]

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
--   [5] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] ⋈     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [8] ≺      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [9] ⊙   gram   := 𐑠               𐑗 → 𐑭  | identity — self-imscription
--   [10] ⊡      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [11] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def imasm_gematria_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def imasm_gematria_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imasm_gematria_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def imasm_gematria_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imasm_gematria_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def imasm_gematria_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imasm_gematria_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def imasm_gematria_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def imasm_gematria_protocol : IGProtocol imasm_gematria_s0 imasm_gematria_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct imasm_gematria_s6 imasm_gematria_s6 = imasm_gematria_s6 (idempotent)
  (.seq (.arrow imasm_gematria_l0 imasm_gematria_s0 imasm_gematria_s1) (.seq (.arrow imasm_gematria_l1 imasm_gematria_s1 imasm_gematria_s2) (.seq (.prod (.arrow imasm_gematria_l2 imasm_gematria_s2 imasm_gematria_s6) (.arrow imasm_gematria_l2 imasm_gematria_s2 imasm_gematria_s6)) (.seq (.arrow imasm_gematria_l6 imasm_gematria_s6 imasm_gematria_s6) (.seq (.arrow imasm_gematria_l6 imasm_gematria_s6 imasm_gematria_s7) (.seq (.arrow imasm_gematria_l7 imasm_gematria_s7 imasm_gematria_s8) (.seq (.arrow imasm_gematria_l8 imasm_gematria_s8 imasm_gematria_s9) (.seq (.arrow imasm_gematria_l9 imasm_gematria_s9 imasm_gematria_s10) (.arrow imasm_gematria_l10 imasm_gematria_s10 imasm_gematria_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def imasm_gematria_true_arm : IGProtocol imasm_gematria_s0 imasm_gematria_s11 :=
  (imasm_gematria_protocol).restrictToEVALT

-- false arm
noncomputable def imasm_gematria_false_arm : IGProtocol imasm_gematria_s0 imasm_gematria_s11 :=
  (imasm_gematria_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def imasm_gematria_tier_ground : OuroboricityTier := TierFunctor.obj imasm_gematria_s0
def imasm_gematria_tier : OuroboricityTier := TierFunctor.obj imasm_gematria_s11
#eval imasm_gematria_tier_ground  -- tier of the ground (pre-transformation)
#eval imasm_gematria_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem imasm_gematria_frobenius :
    igFrobeniusAlg.mul imasm_gematria_s0 imasm_gematria_s0 = imasm_gematria_s0 :=
  igFrobAlg_self_fusion imasm_gematria_s0
