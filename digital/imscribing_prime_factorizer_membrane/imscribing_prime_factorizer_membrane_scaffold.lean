-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ∈ → ⊤ → ⋈ → ≺ → ⊥ → ⊞ → ⊙ → ⋈ → ∈ → ⊤ → ≺ → ⊥ → ∋ → ⊡ → ⊣
-- Class: imscribing Prime Factorizer Membrane
-- Fingerprint: sig=(9,3,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=18
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(11, 15)]

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
--   [3] ∈    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [5] ⋈     fid    := 𐑱               ⊙ → 𐑗  | composition — regime coherence
--   [6] ≺      pol    := 𐑗               𐑱 → 𐑖  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [8] ⊞    stoi   := 𐑳               𐑖 → 𐑠  | engage paradox — B-state, both arms
--   [9] ⊙   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [10] ⋈     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def imscribing_prime_factorizer_membrane_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def imscribing_prime_factorizer_membrane_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def imscribing_prime_factorizer_membrane_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def imscribing_prime_factorizer_membrane_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def imscribing_prime_factorizer_membrane_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def imscribing_prime_factorizer_membrane_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def imscribing_prime_factorizer_membrane_protocol : IGProtocol imscribing_prime_factorizer_membrane_s0 imscribing_prime_factorizer_membrane_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct imscribing_prime_factorizer_membrane_s15 imscribing_prime_factorizer_membrane_s15 = imscribing_prime_factorizer_membrane_s15 (idempotent)
  (.seq (.arrow imscribing_prime_factorizer_membrane_l0 imscribing_prime_factorizer_membrane_s0 imscribing_prime_factorizer_membrane_s1) (.seq (.arrow imscribing_prime_factorizer_membrane_l1 imscribing_prime_factorizer_membrane_s1 imscribing_prime_factorizer_membrane_s2) (.seq (.arrow imscribing_prime_factorizer_membrane_l2 imscribing_prime_factorizer_membrane_s2 imscribing_prime_factorizer_membrane_s3) (.seq (.arrow imscribing_prime_factorizer_membrane_l3 imscribing_prime_factorizer_membrane_s3 imscribing_prime_factorizer_membrane_s4) (.seq (.arrow imscribing_prime_factorizer_membrane_l4 imscribing_prime_factorizer_membrane_s4 imscribing_prime_factorizer_membrane_s5) (.seq (.arrow imscribing_prime_factorizer_membrane_l5 imscribing_prime_factorizer_membrane_s5 imscribing_prime_factorizer_membrane_s6) (.seq (.arrow imscribing_prime_factorizer_membrane_l6 imscribing_prime_factorizer_membrane_s6 imscribing_prime_factorizer_membrane_s7) (.seq (.arrow imscribing_prime_factorizer_membrane_l7 imscribing_prime_factorizer_membrane_s7 imscribing_prime_factorizer_membrane_s8) (.seq (.arrow imscribing_prime_factorizer_membrane_l8 imscribing_prime_factorizer_membrane_s8 imscribing_prime_factorizer_membrane_s9) (.seq (.arrow imscribing_prime_factorizer_membrane_l9 imscribing_prime_factorizer_membrane_s9 imscribing_prime_factorizer_membrane_s10) (.seq (.arrow imscribing_prime_factorizer_membrane_l10 imscribing_prime_factorizer_membrane_s10 imscribing_prime_factorizer_membrane_s11) (.seq (.prod (.arrow imscribing_prime_factorizer_membrane_l11 imscribing_prime_factorizer_membrane_s11 imscribing_prime_factorizer_membrane_s15) (.arrow imscribing_prime_factorizer_membrane_l11 imscribing_prime_factorizer_membrane_s11 imscribing_prime_factorizer_membrane_s15)) (.seq (.arrow imscribing_prime_factorizer_membrane_l15 imscribing_prime_factorizer_membrane_s15 imscribing_prime_factorizer_membrane_s15) (.seq (.arrow imscribing_prime_factorizer_membrane_l15 imscribing_prime_factorizer_membrane_s15 imscribing_prime_factorizer_membrane_s16) (.arrow imscribing_prime_factorizer_membrane_l16 imscribing_prime_factorizer_membrane_s16 imscribing_prime_factorizer_membrane_s17)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def imscribing_prime_factorizer_membrane_true_arm : IGProtocol imscribing_prime_factorizer_membrane_s0 imscribing_prime_factorizer_membrane_s17 :=
  (imscribing_prime_factorizer_membrane_protocol).restrictToEVALT

-- false arm
noncomputable def imscribing_prime_factorizer_membrane_false_arm : IGProtocol imscribing_prime_factorizer_membrane_s0 imscribing_prime_factorizer_membrane_s17 :=
  (imscribing_prime_factorizer_membrane_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def imscribing_prime_factorizer_membrane_tier_ground : OuroboricityTier := TierFunctor.obj imscribing_prime_factorizer_membrane_s0
def imscribing_prime_factorizer_membrane_tier : OuroboricityTier := TierFunctor.obj imscribing_prime_factorizer_membrane_s17
#eval imscribing_prime_factorizer_membrane_tier_ground  -- tier of the ground (pre-transformation)
#eval imscribing_prime_factorizer_membrane_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem imscribing_prime_factorizer_membrane_frobenius :
    igFrobeniusAlg.mul imscribing_prime_factorizer_membrane_s0 imscribing_prime_factorizer_membrane_s0 = imscribing_prime_factorizer_membrane_s0 :=
  igFrobAlg_self_fusion imscribing_prime_factorizer_membrane_s0
