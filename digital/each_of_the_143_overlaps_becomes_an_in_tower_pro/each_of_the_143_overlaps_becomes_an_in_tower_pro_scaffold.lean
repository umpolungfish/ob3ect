-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IFIX → AFWD → CLINK → FSPLIT → EVALT → AREV → FFUSE → EVALT → ENGAGR → IFIX → TANCH
-- Class: each of the 143 overlaps becomes an in-tower product whose complex conjugation is the explicit tower involution fixing every magnitude root and inverting every phase, so that the overlap times its conjugate reduces in-tower to the rational one-thirteenth and the overlap's descent must land exactly on its pinned minimal polynomial of degree at most 32, converting the floor-certified antecedents of the per-overlap equiangularity theorems into proved statements about the constructed coordinates
-- Fingerprint: sig=(7,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑾  | irreversible fixation — winding number
--   [4] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [10] EVALT     crit   := ⊙               𐑙 → 𐑳  | evaluate-true — criticality gate open
--   [11] ENGAGR    stoi   := 𐑳               ⊙ → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def each_of_the_143_overlaps_becomes_an_in_a3b222_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def each_of_the_143_overlaps_becomes_an_in_a3b222_protocol : IGProtocol each_of_the_143_overlaps_becomes_an_in_a3b222_s0 each_of_the_143_overlaps_becomes_an_in_a3b222_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct each_of_the_143_overlaps_becomes_an_in_a3b222_s9 each_of_the_143_overlaps_becomes_an_in_a3b222_s9 = each_of_the_143_overlaps_becomes_an_in_a3b222_s9 (idempotent)
  (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l0 each_of_the_143_overlaps_becomes_an_in_a3b222_s0 each_of_the_143_overlaps_becomes_an_in_a3b222_s1) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l1 each_of_the_143_overlaps_becomes_an_in_a3b222_s1 each_of_the_143_overlaps_becomes_an_in_a3b222_s2) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l2 each_of_the_143_overlaps_becomes_an_in_a3b222_s2 each_of_the_143_overlaps_becomes_an_in_a3b222_s3) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l3 each_of_the_143_overlaps_becomes_an_in_a3b222_s3 each_of_the_143_overlaps_becomes_an_in_a3b222_s4) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l4 each_of_the_143_overlaps_becomes_an_in_a3b222_s4 each_of_the_143_overlaps_becomes_an_in_a3b222_s5) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l5 each_of_the_143_overlaps_becomes_an_in_a3b222_s5 each_of_the_143_overlaps_becomes_an_in_a3b222_s6) (.seq (.prod (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l6 each_of_the_143_overlaps_becomes_an_in_a3b222_s6 each_of_the_143_overlaps_becomes_an_in_a3b222_s9) (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l6 each_of_the_143_overlaps_becomes_an_in_a3b222_s6 each_of_the_143_overlaps_becomes_an_in_a3b222_s9)) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l9 each_of_the_143_overlaps_becomes_an_in_a3b222_s9 each_of_the_143_overlaps_becomes_an_in_a3b222_s9) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l9 each_of_the_143_overlaps_becomes_an_in_a3b222_s9 each_of_the_143_overlaps_becomes_an_in_a3b222_s10) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l10 each_of_the_143_overlaps_becomes_an_in_a3b222_s10 each_of_the_143_overlaps_becomes_an_in_a3b222_s11) (.seq (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l11 each_of_the_143_overlaps_becomes_an_in_a3b222_s11 each_of_the_143_overlaps_becomes_an_in_a3b222_s12) (.arrow each_of_the_143_overlaps_becomes_an_in_a3b222_l12 each_of_the_143_overlaps_becomes_an_in_a3b222_s12 each_of_the_143_overlaps_becomes_an_in_a3b222_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def each_of_the_143_overlaps_becomes_an_in_a3b222_true_arm : IGProtocol each_of_the_143_overlaps_becomes_an_in_a3b222_s0 each_of_the_143_overlaps_becomes_an_in_a3b222_s13 :=
  (each_of_the_143_overlaps_becomes_an_in_a3b222_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def each_of_the_143_overlaps_becomes_an_in_a3b222_tier : OuroboricityTier := TierFunctor.obj each_of_the_143_overlaps_becomes_an_in_a3b222_s0
#eval each_of_the_143_overlaps_becomes_an_in_a3b222_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem each_of_the_143_overlaps_becomes_an_in_a3b222_frobenius :
    igFrobeniusAlg.mul each_of_the_143_overlaps_becomes_an_in_a3b222_s0 each_of_the_143_overlaps_becomes_an_in_a3b222_s0 = each_of_the_143_overlaps_becomes_an_in_a3b222_s0 :=
  igFrobAlg_self_fusion each_of_the_143_overlaps_becomes_an_in_a3b222_s0
