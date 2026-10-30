-- IGProtocol scaffold: ⊢ → ⊡ → ⊡ → ⊙ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⋈ → ∋ → ⊞ → ⋈ → ≻ → ⋈ → ⊡ → ⊣ → ⊙
-- Class: β-functions — generated from μ ∘ δ = id
-- Fingerprint: sig=(11,2,3,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] ⊡      prot   := 𐑭               𐑼 → 𐑭  | irreversible fixation — winding number
--   [2] ⊡      prot   := 𐑭               𐑭 → 𐑠  | irreversible fixation — winding number
--   [3] ⊙   gram   := 𐑠               𐑭 → 𐑚  | identity — self-imscription
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ⊞    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [13] ⋈     fid    := 𐑱               𐑳 → 𐑾  | composition — regime coherence
--   [14] ≻      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [15] ⋈     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [16] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [17] ⊣     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [18] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def functions_generated_from_id_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def functions_generated_from_id_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def functions_generated_from_id_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def functions_generated_from_id_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def functions_generated_from_id_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def functions_generated_from_id_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def functions_generated_from_id_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def functions_generated_from_id_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def functions_generated_from_id_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def functions_generated_from_id_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def functions_generated_from_id_protocol : IGProtocol functions_generated_from_id_s0 functions_generated_from_id_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct functions_generated_from_id_s11 functions_generated_from_id_s11 = functions_generated_from_id_s11 (idempotent)
  (.seq (.arrow functions_generated_from_id_l0 functions_generated_from_id_s0 functions_generated_from_id_s1) (.seq (.arrow functions_generated_from_id_l1 functions_generated_from_id_s1 functions_generated_from_id_s2) (.seq (.arrow functions_generated_from_id_l2 functions_generated_from_id_s2 functions_generated_from_id_s3) (.seq (.arrow functions_generated_from_id_l3 functions_generated_from_id_s3 functions_generated_from_id_s4) (.seq (.prod (.arrow functions_generated_from_id_l4 functions_generated_from_id_s4 functions_generated_from_id_s11) (.arrow functions_generated_from_id_l4 functions_generated_from_id_s4 functions_generated_from_id_s11)) (.seq (.arrow functions_generated_from_id_l11 functions_generated_from_id_s11 functions_generated_from_id_s11) (.seq (.arrow functions_generated_from_id_l11 functions_generated_from_id_s11 functions_generated_from_id_s12) (.seq (.arrow functions_generated_from_id_l12 functions_generated_from_id_s12 functions_generated_from_id_s13) (.seq (.arrow functions_generated_from_id_l13 functions_generated_from_id_s13 functions_generated_from_id_s14) (.seq (.arrow functions_generated_from_id_l14 functions_generated_from_id_s14 functions_generated_from_id_s15) (.seq (.arrow functions_generated_from_id_l15 functions_generated_from_id_s15 functions_generated_from_id_s16) (.seq (.arrow functions_generated_from_id_l16 functions_generated_from_id_s16 functions_generated_from_id_s17) (.arrow functions_generated_from_id_l17 functions_generated_from_id_s17 functions_generated_from_id_s18)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def functions_generated_from_id_true_arm : IGProtocol functions_generated_from_id_s0 functions_generated_from_id_s18 :=
  (functions_generated_from_id_protocol).restrictToEVALT

-- false arm
noncomputable def functions_generated_from_id_false_arm : IGProtocol functions_generated_from_id_s0 functions_generated_from_id_s18 :=
  (functions_generated_from_id_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def functions_generated_from_id_tier_ground : OuroboricityTier := TierFunctor.obj functions_generated_from_id_s0
def functions_generated_from_id_tier : OuroboricityTier := TierFunctor.obj functions_generated_from_id_s18
#eval functions_generated_from_id_tier_ground  -- tier of the ground (pre-transformation)
#eval functions_generated_from_id_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem functions_generated_from_id_frobenius :
    igFrobeniusAlg.mul functions_generated_from_id_s0 functions_generated_from_id_s0 = functions_generated_from_id_s0 :=
  igFrobAlg_self_fusion functions_generated_from_id_s0
