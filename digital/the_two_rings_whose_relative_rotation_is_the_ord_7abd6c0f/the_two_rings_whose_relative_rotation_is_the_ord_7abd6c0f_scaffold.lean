-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⋈ → ⊤ → ≺ → ⊥ → ⋈ → ⊙ → ⊞ → ∋ → ⊡ → ⊣
-- Class: the two rings whose relative rotation is the order are the orbit ring vs unit ring, where the membrane steps the multiply-by-a gate to build one ring, holds the identity/unit ring as the other, and reads their relative rotation; the gates build the ring, not precomputed cells
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [9] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] ⊡      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [12] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_two_rings_whose_relative_rotation_97d667_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_97d667_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_two_rings_whose_relative_rotation_97d667_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_two_rings_whose_relative_rotation_97d667_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_two_rings_whose_relative_rotation_97d667_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_two_rings_whose_relative_rotation_97d667_protocol : IGProtocol the_two_rings_whose_relative_rotation_97d667_s0 the_two_rings_whose_relative_rotation_97d667_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_two_rings_whose_relative_rotation_97d667_s10 the_two_rings_whose_relative_rotation_97d667_s10 = the_two_rings_whose_relative_rotation_97d667_s10 (idempotent)
  (.seq (.arrow the_two_rings_whose_relative_rotation_97d667_l0 the_two_rings_whose_relative_rotation_97d667_s0 the_two_rings_whose_relative_rotation_97d667_s1) (.seq (.prod (.arrow the_two_rings_whose_relative_rotation_97d667_l1 the_two_rings_whose_relative_rotation_97d667_s1 the_two_rings_whose_relative_rotation_97d667_s10) (.arrow the_two_rings_whose_relative_rotation_97d667_l1 the_two_rings_whose_relative_rotation_97d667_s1 the_two_rings_whose_relative_rotation_97d667_s10)) (.seq (.arrow the_two_rings_whose_relative_rotation_97d667_l10 the_two_rings_whose_relative_rotation_97d667_s10 the_two_rings_whose_relative_rotation_97d667_s10) (.seq (.arrow the_two_rings_whose_relative_rotation_97d667_l10 the_two_rings_whose_relative_rotation_97d667_s10 the_two_rings_whose_relative_rotation_97d667_s11) (.arrow the_two_rings_whose_relative_rotation_97d667_l11 the_two_rings_whose_relative_rotation_97d667_s11 the_two_rings_whose_relative_rotation_97d667_s12)))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_two_rings_whose_relative_rotation_97d667_true_arm : IGProtocol the_two_rings_whose_relative_rotation_97d667_s0 the_two_rings_whose_relative_rotation_97d667_s12 :=
  (the_two_rings_whose_relative_rotation_97d667_protocol).restrictToEVALT

-- false arm
noncomputable def the_two_rings_whose_relative_rotation_97d667_false_arm : IGProtocol the_two_rings_whose_relative_rotation_97d667_s0 the_two_rings_whose_relative_rotation_97d667_s12 :=
  (the_two_rings_whose_relative_rotation_97d667_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_two_rings_whose_relative_rotation_97d667_tier_ground : OuroboricityTier := TierFunctor.obj the_two_rings_whose_relative_rotation_97d667_s0
def the_two_rings_whose_relative_rotation_97d667_tier : OuroboricityTier := TierFunctor.obj the_two_rings_whose_relative_rotation_97d667_s12
#eval the_two_rings_whose_relative_rotation_97d667_tier_ground  -- tier of the ground (pre-transformation)
#eval the_two_rings_whose_relative_rotation_97d667_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_two_rings_whose_relative_rotation_97d667_frobenius :
    igFrobeniusAlg.mul the_two_rings_whose_relative_rotation_97d667_s0 the_two_rings_whose_relative_rotation_97d667_s0 = the_two_rings_whose_relative_rotation_97d667_s0 :=
  igFrobAlg_self_fusion the_two_rings_whose_relative_rotation_97d667_s0
