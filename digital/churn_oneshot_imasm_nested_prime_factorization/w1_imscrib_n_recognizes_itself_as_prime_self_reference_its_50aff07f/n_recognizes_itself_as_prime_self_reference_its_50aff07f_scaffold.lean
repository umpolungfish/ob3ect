-- IGProtocol scaffold: ⊢ → ∈ → ⊤ → ⊡ → ≻ → ∈ → ⊤ → ⊥ → ∋ → ⊞ → ⋈ → ⊥ → ⊙ → ≺ → ∋ → ⊣
-- Class: n recognizes itself as prime, self-reference. Its own complete factorization is itself. The element is itself, the stone that knows itself.
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
private def n_recognizes_itself_as_prime_self_157e59_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def n_recognizes_itself_as_prime_self_157e59_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def n_recognizes_itself_as_prime_self_157e59_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def n_recognizes_itself_as_prime_self_157e59_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def n_recognizes_itself_as_prime_self_157e59_protocol : IGProtocol n_recognizes_itself_as_prime_self_157e59_s0 n_recognizes_itself_as_prime_self_157e59_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct n_recognizes_itself_as_prime_self_157e59_s8 n_recognizes_itself_as_prime_self_157e59_s8 = n_recognizes_itself_as_prime_self_157e59_s8 (idempotent)
  (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l0 n_recognizes_itself_as_prime_self_157e59_s0 n_recognizes_itself_as_prime_self_157e59_s1) (.seq (.prod (.arrow n_recognizes_itself_as_prime_self_157e59_l1 n_recognizes_itself_as_prime_self_157e59_s1 n_recognizes_itself_as_prime_self_157e59_s8) (.arrow n_recognizes_itself_as_prime_self_157e59_l1 n_recognizes_itself_as_prime_self_157e59_s1 n_recognizes_itself_as_prime_self_157e59_s8)) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l8 n_recognizes_itself_as_prime_self_157e59_s8 n_recognizes_itself_as_prime_self_157e59_s8) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l8 n_recognizes_itself_as_prime_self_157e59_s8 n_recognizes_itself_as_prime_self_157e59_s9) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l9 n_recognizes_itself_as_prime_self_157e59_s9 n_recognizes_itself_as_prime_self_157e59_s10) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l10 n_recognizes_itself_as_prime_self_157e59_s10 n_recognizes_itself_as_prime_self_157e59_s11) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l11 n_recognizes_itself_as_prime_self_157e59_s11 n_recognizes_itself_as_prime_self_157e59_s12) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l12 n_recognizes_itself_as_prime_self_157e59_s12 n_recognizes_itself_as_prime_self_157e59_s13) (.seq (.arrow n_recognizes_itself_as_prime_self_157e59_l13 n_recognizes_itself_as_prime_self_157e59_s13 n_recognizes_itself_as_prime_self_157e59_s14) (.arrow n_recognizes_itself_as_prime_self_157e59_l14 n_recognizes_itself_as_prime_self_157e59_s14 n_recognizes_itself_as_prime_self_157e59_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def n_recognizes_itself_as_prime_self_157e59_true_arm : IGProtocol n_recognizes_itself_as_prime_self_157e59_s0 n_recognizes_itself_as_prime_self_157e59_s15 :=
  (n_recognizes_itself_as_prime_self_157e59_protocol).restrictToEVALT

-- false arm
noncomputable def n_recognizes_itself_as_prime_self_157e59_false_arm : IGProtocol n_recognizes_itself_as_prime_self_157e59_s0 n_recognizes_itself_as_prime_self_157e59_s15 :=
  (n_recognizes_itself_as_prime_self_157e59_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def n_recognizes_itself_as_prime_self_157e59_tier_ground : OuroboricityTier := TierFunctor.obj n_recognizes_itself_as_prime_self_157e59_s0
def n_recognizes_itself_as_prime_self_157e59_tier : OuroboricityTier := TierFunctor.obj n_recognizes_itself_as_prime_self_157e59_s15
#eval n_recognizes_itself_as_prime_self_157e59_tier_ground  -- tier of the ground (pre-transformation)
#eval n_recognizes_itself_as_prime_self_157e59_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem n_recognizes_itself_as_prime_self_157e59_frobenius :
    igFrobeniusAlg.mul n_recognizes_itself_as_prime_self_157e59_s0 n_recognizes_itself_as_prime_self_157e59_s0 = n_recognizes_itself_as_prime_self_157e59_s0 :=
  igFrobAlg_self_fusion n_recognizes_itself_as_prime_self_157e59_s0
