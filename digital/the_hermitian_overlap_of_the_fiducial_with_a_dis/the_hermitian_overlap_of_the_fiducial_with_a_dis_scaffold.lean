-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → AFWD → AREV → EVALT → FFUSE → CLINK → IMSCRIB → EVALT → IFIX → ENGAGR → TANCH
-- Class: the Hermitian overlap of the fiducial with a displaced copy becomes a computable inner product over the tower using conjC, reducing each Weyl-Heisenberg overlap to one tower element
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑱 → ⊙  | identity — self-imscription
--   [11] EVALT     crit   := ⊙               𐑠 → 𐑭  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               ⊙ → 𐑳  | irreversible fixation — winding number
--   [13] ENGAGR    stoi   := 𐑳               𐑭 → 𐑡  | engage paradox — B-state, both arms
--   [14] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_hermitian_overlap_of_the_fiducial_36e0df_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_hermitian_overlap_of_the_fiducial_36e0df_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_hermitian_overlap_of_the_fiducial_36e0df_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_hermitian_overlap_of_the_fiducial_36e0df_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_hermitian_overlap_of_the_fiducial_36e0df_protocol : IGProtocol the_hermitian_overlap_of_the_fiducial_36e0df_s0 the_hermitian_overlap_of_the_fiducial_36e0df_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_hermitian_overlap_of_the_fiducial_36e0df_s8 the_hermitian_overlap_of_the_fiducial_36e0df_s8 = the_hermitian_overlap_of_the_fiducial_36e0df_s8 (idempotent)
  (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l0 the_hermitian_overlap_of_the_fiducial_36e0df_s0 the_hermitian_overlap_of_the_fiducial_36e0df_s1) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l1 the_hermitian_overlap_of_the_fiducial_36e0df_s1 the_hermitian_overlap_of_the_fiducial_36e0df_s2) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l2 the_hermitian_overlap_of_the_fiducial_36e0df_s2 the_hermitian_overlap_of_the_fiducial_36e0df_s3) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l3 the_hermitian_overlap_of_the_fiducial_36e0df_s3 the_hermitian_overlap_of_the_fiducial_36e0df_s4) (.seq (.prod (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l4 the_hermitian_overlap_of_the_fiducial_36e0df_s4 the_hermitian_overlap_of_the_fiducial_36e0df_s8) (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l4 the_hermitian_overlap_of_the_fiducial_36e0df_s4 the_hermitian_overlap_of_the_fiducial_36e0df_s8)) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l8 the_hermitian_overlap_of_the_fiducial_36e0df_s8 the_hermitian_overlap_of_the_fiducial_36e0df_s8) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l8 the_hermitian_overlap_of_the_fiducial_36e0df_s8 the_hermitian_overlap_of_the_fiducial_36e0df_s9) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l9 the_hermitian_overlap_of_the_fiducial_36e0df_s9 the_hermitian_overlap_of_the_fiducial_36e0df_s10) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l10 the_hermitian_overlap_of_the_fiducial_36e0df_s10 the_hermitian_overlap_of_the_fiducial_36e0df_s11) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l11 the_hermitian_overlap_of_the_fiducial_36e0df_s11 the_hermitian_overlap_of_the_fiducial_36e0df_s12) (.seq (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l12 the_hermitian_overlap_of_the_fiducial_36e0df_s12 the_hermitian_overlap_of_the_fiducial_36e0df_s13) (.arrow the_hermitian_overlap_of_the_fiducial_36e0df_l13 the_hermitian_overlap_of_the_fiducial_36e0df_s13 the_hermitian_overlap_of_the_fiducial_36e0df_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_hermitian_overlap_of_the_fiducial_36e0df_true_arm : IGProtocol the_hermitian_overlap_of_the_fiducial_36e0df_s0 the_hermitian_overlap_of_the_fiducial_36e0df_s14 :=
  (the_hermitian_overlap_of_the_fiducial_36e0df_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_hermitian_overlap_of_the_fiducial_36e0df_tier : OuroboricityTier := TierFunctor.obj the_hermitian_overlap_of_the_fiducial_36e0df_s0
#eval the_hermitian_overlap_of_the_fiducial_36e0df_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_hermitian_overlap_of_the_fiducial_36e0df_frobenius :
    igFrobeniusAlg.mul the_hermitian_overlap_of_the_fiducial_36e0df_s0 the_hermitian_overlap_of_the_fiducial_36e0df_s0 = the_hermitian_overlap_of_the_fiducial_36e0df_s0 :=
  igFrobAlg_self_fusion the_hermitian_overlap_of_the_fiducial_36e0df_s0
