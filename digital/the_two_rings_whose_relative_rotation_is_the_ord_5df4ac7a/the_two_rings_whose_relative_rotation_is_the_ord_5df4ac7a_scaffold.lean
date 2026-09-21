-- IGProtocol scaffold: ⊢ → ⊙ → ∈ → ≻ → ⊤ → ⋈ → ≺ → ⊥ → ⋈ → ⊞ → ∋ → ⊡ → ⋈ → ⊙ → ⊣
-- Class: the two rings whose relative rotation is the order are the two short words that differ by one ⊤/⊥ deposit (∈∋⊤≻⊡ vs ∈∋⊥≻⊡ from VOX_SEMANTICS), carried through the modular gate per orbit step; the coordinate that flips tracks the winding
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 10)]

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
--   [8] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] ⊡      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [12] ⋈     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [13] ⊙   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [14] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_two_rings_whose_relative_rotation_7b3c41_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_7b3c41_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_7b3c41_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_7b3c41_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_two_rings_whose_relative_rotation_7b3c41_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_7b3c41_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_7b3c41_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_two_rings_whose_relative_rotation_7b3c41_protocol : IGProtocol the_two_rings_whose_relative_rotation_7b3c41_s0 the_two_rings_whose_relative_rotation_7b3c41_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_two_rings_whose_relative_rotation_7b3c41_s10 the_two_rings_whose_relative_rotation_7b3c41_s10 = the_two_rings_whose_relative_rotation_7b3c41_s10 (idempotent)
  (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l0 the_two_rings_whose_relative_rotation_7b3c41_s0 the_two_rings_whose_relative_rotation_7b3c41_s1) (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l1 the_two_rings_whose_relative_rotation_7b3c41_s1 the_two_rings_whose_relative_rotation_7b3c41_s2) (.seq (.prod (.arrow the_two_rings_whose_relative_rotation_7b3c41_l2 the_two_rings_whose_relative_rotation_7b3c41_s2 the_two_rings_whose_relative_rotation_7b3c41_s10) (.arrow the_two_rings_whose_relative_rotation_7b3c41_l2 the_two_rings_whose_relative_rotation_7b3c41_s2 the_two_rings_whose_relative_rotation_7b3c41_s10)) (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l10 the_two_rings_whose_relative_rotation_7b3c41_s10 the_two_rings_whose_relative_rotation_7b3c41_s10) (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l10 the_two_rings_whose_relative_rotation_7b3c41_s10 the_two_rings_whose_relative_rotation_7b3c41_s11) (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l11 the_two_rings_whose_relative_rotation_7b3c41_s11 the_two_rings_whose_relative_rotation_7b3c41_s12) (.seq (.arrow the_two_rings_whose_relative_rotation_7b3c41_l12 the_two_rings_whose_relative_rotation_7b3c41_s12 the_two_rings_whose_relative_rotation_7b3c41_s13) (.arrow the_two_rings_whose_relative_rotation_7b3c41_l13 the_two_rings_whose_relative_rotation_7b3c41_s13 the_two_rings_whose_relative_rotation_7b3c41_s14))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_two_rings_whose_relative_rotation_7b3c41_true_arm : IGProtocol the_two_rings_whose_relative_rotation_7b3c41_s0 the_two_rings_whose_relative_rotation_7b3c41_s14 :=
  (the_two_rings_whose_relative_rotation_7b3c41_protocol).restrictToEVALT

-- false arm
noncomputable def the_two_rings_whose_relative_rotation_7b3c41_false_arm : IGProtocol the_two_rings_whose_relative_rotation_7b3c41_s0 the_two_rings_whose_relative_rotation_7b3c41_s14 :=
  (the_two_rings_whose_relative_rotation_7b3c41_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_two_rings_whose_relative_rotation_7b3c41_tier_ground : OuroboricityTier := TierFunctor.obj the_two_rings_whose_relative_rotation_7b3c41_s0
def the_two_rings_whose_relative_rotation_7b3c41_tier : OuroboricityTier := TierFunctor.obj the_two_rings_whose_relative_rotation_7b3c41_s14
#eval the_two_rings_whose_relative_rotation_7b3c41_tier_ground  -- tier of the ground (pre-transformation)
#eval the_two_rings_whose_relative_rotation_7b3c41_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_two_rings_whose_relative_rotation_7b3c41_frobenius :
    igFrobeniusAlg.mul the_two_rings_whose_relative_rotation_7b3c41_s0 the_two_rings_whose_relative_rotation_7b3c41_s0 = the_two_rings_whose_relative_rotation_7b3c41_s0 :=
  igFrobAlg_self_fusion the_two_rings_whose_relative_rotation_7b3c41_s0
