-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → AREV → EVALF → CLINK → IFIX → FFUSE → ENGAGR → TANCH
-- Class: an adjoint pair of functors
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑡  | engage paradox — B-state, both arms
--   [13] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def an_adjoint_pair_of_functors_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def an_adjoint_pair_of_functors_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def an_adjoint_pair_of_functors_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_adjoint_pair_of_functors_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_adjoint_pair_of_functors_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def an_adjoint_pair_of_functors_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def an_adjoint_pair_of_functors_protocol : IGProtocol an_adjoint_pair_of_functors_s0 an_adjoint_pair_of_functors_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct an_adjoint_pair_of_functors_s11 an_adjoint_pair_of_functors_s11 = an_adjoint_pair_of_functors_s11 (idempotent)
  (.seq (.arrow an_adjoint_pair_of_functors_l0 an_adjoint_pair_of_functors_s0 an_adjoint_pair_of_functors_s1) (.seq (.arrow an_adjoint_pair_of_functors_l1 an_adjoint_pair_of_functors_s1 an_adjoint_pair_of_functors_s2) (.seq (.arrow an_adjoint_pair_of_functors_l2 an_adjoint_pair_of_functors_s2 an_adjoint_pair_of_functors_s3) (.seq (.prod (.arrow an_adjoint_pair_of_functors_l3 an_adjoint_pair_of_functors_s3 an_adjoint_pair_of_functors_s11) (.arrow an_adjoint_pair_of_functors_l3 an_adjoint_pair_of_functors_s3 an_adjoint_pair_of_functors_s11)) (.seq (.arrow an_adjoint_pair_of_functors_l11 an_adjoint_pair_of_functors_s11 an_adjoint_pair_of_functors_s11) (.seq (.arrow an_adjoint_pair_of_functors_l11 an_adjoint_pair_of_functors_s11 an_adjoint_pair_of_functors_s12) (.arrow an_adjoint_pair_of_functors_l12 an_adjoint_pair_of_functors_s12 an_adjoint_pair_of_functors_s13)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def an_adjoint_pair_of_functors_true_arm : IGProtocol an_adjoint_pair_of_functors_s0 an_adjoint_pair_of_functors_s13 :=
  (an_adjoint_pair_of_functors_protocol).restrictToEVALT

-- false arm
noncomputable def an_adjoint_pair_of_functors_false_arm : IGProtocol an_adjoint_pair_of_functors_s0 an_adjoint_pair_of_functors_s13 :=
  (an_adjoint_pair_of_functors_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def an_adjoint_pair_of_functors_tier : OuroboricityTier := TierFunctor.obj an_adjoint_pair_of_functors_s0
#eval an_adjoint_pair_of_functors_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem an_adjoint_pair_of_functors_frobenius :
    igFrobeniusAlg.mul an_adjoint_pair_of_functors_s0 an_adjoint_pair_of_functors_s0 = an_adjoint_pair_of_functors_s0 :=
  igFrobAlg_self_fusion an_adjoint_pair_of_functors_s0
