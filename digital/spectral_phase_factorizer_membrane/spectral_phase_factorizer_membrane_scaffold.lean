-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⊞ → ∋ → ⊡ → ⋈ → ⊙ → ⊣
-- Class: spectral_phase_factorizer_membrane
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] ⊡      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [11] ⋈     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [12] ⊙   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [13] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def spectral_phase_factorizer_membrane_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def spectral_phase_factorizer_membrane_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def spectral_phase_factorizer_membrane_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def spectral_phase_factorizer_membrane_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def spectral_phase_factorizer_membrane_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def spectral_phase_factorizer_membrane_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def spectral_phase_factorizer_membrane_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def spectral_phase_factorizer_membrane_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def spectral_phase_factorizer_membrane_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def spectral_phase_factorizer_membrane_protocol : IGProtocol spectral_phase_factorizer_membrane_s0 spectral_phase_factorizer_membrane_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct spectral_phase_factorizer_membrane_s9 spectral_phase_factorizer_membrane_s9 = spectral_phase_factorizer_membrane_s9 (idempotent)
  (.seq (.arrow spectral_phase_factorizer_membrane_l0 spectral_phase_factorizer_membrane_s0 spectral_phase_factorizer_membrane_s1) (.seq (.arrow spectral_phase_factorizer_membrane_l1 spectral_phase_factorizer_membrane_s1 spectral_phase_factorizer_membrane_s2) (.seq (.prod (.arrow spectral_phase_factorizer_membrane_l2 spectral_phase_factorizer_membrane_s2 spectral_phase_factorizer_membrane_s9) (.arrow spectral_phase_factorizer_membrane_l2 spectral_phase_factorizer_membrane_s2 spectral_phase_factorizer_membrane_s9)) (.seq (.arrow spectral_phase_factorizer_membrane_l9 spectral_phase_factorizer_membrane_s9 spectral_phase_factorizer_membrane_s9) (.seq (.arrow spectral_phase_factorizer_membrane_l9 spectral_phase_factorizer_membrane_s9 spectral_phase_factorizer_membrane_s10) (.seq (.arrow spectral_phase_factorizer_membrane_l10 spectral_phase_factorizer_membrane_s10 spectral_phase_factorizer_membrane_s11) (.seq (.arrow spectral_phase_factorizer_membrane_l11 spectral_phase_factorizer_membrane_s11 spectral_phase_factorizer_membrane_s12) (.arrow spectral_phase_factorizer_membrane_l12 spectral_phase_factorizer_membrane_s12 spectral_phase_factorizer_membrane_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def spectral_phase_factorizer_membrane_true_arm : IGProtocol spectral_phase_factorizer_membrane_s0 spectral_phase_factorizer_membrane_s13 :=
  (spectral_phase_factorizer_membrane_protocol).restrictToEVALT

-- false arm
noncomputable def spectral_phase_factorizer_membrane_false_arm : IGProtocol spectral_phase_factorizer_membrane_s0 spectral_phase_factorizer_membrane_s13 :=
  (spectral_phase_factorizer_membrane_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def spectral_phase_factorizer_membrane_tier_ground : OuroboricityTier := TierFunctor.obj spectral_phase_factorizer_membrane_s0
def spectral_phase_factorizer_membrane_tier : OuroboricityTier := TierFunctor.obj spectral_phase_factorizer_membrane_s13
#eval spectral_phase_factorizer_membrane_tier_ground  -- tier of the ground (pre-transformation)
#eval spectral_phase_factorizer_membrane_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem spectral_phase_factorizer_membrane_frobenius :
    igFrobeniusAlg.mul spectral_phase_factorizer_membrane_s0 spectral_phase_factorizer_membrane_s0 = spectral_phase_factorizer_membrane_s0 :=
  igFrobAlg_self_fusion spectral_phase_factorizer_membrane_s0
