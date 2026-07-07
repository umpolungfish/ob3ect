-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → CLINK → AFWD → FSPLIT → EVALF → AREV → ENGAGR → CLINK → AFWD → EVALT → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: structural imscription of the frame-potential plateau at d=2048: the seed-independent common attractor at objective 0.7815 inside the 683-dimensional Zauner sector, where every first-order method stalls. Parseval fixes the second moment of the ambiguity function on the unit sphere, so the least-squares overlap objective and the fourth-moment frame potential differ by a constant: no rewriting of the loss escapes the shelf. This is the false-branch resistance of the geometric lift, the ramified double cover pushing back. With full Frobenius closure and Lean 4 verification scaffold.
-- Fingerprint: sig=(9,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [3] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [13] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def structural_imscription_of_the_frame_29cb16_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def structural_imscription_of_the_frame_29cb16_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_frame_29cb16_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_frame_29cb16_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def structural_imscription_of_the_frame_29cb16_protocol : IGProtocol structural_imscription_of_the_frame_29cb16_s0 structural_imscription_of_the_frame_29cb16_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct structural_imscription_of_the_frame_29cb16_s12 structural_imscription_of_the_frame_29cb16_s12 = structural_imscription_of_the_frame_29cb16_s12 (idempotent)
  (.seq (.arrow structural_imscription_of_the_frame_29cb16_l0 structural_imscription_of_the_frame_29cb16_s0 structural_imscription_of_the_frame_29cb16_s1) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l1 structural_imscription_of_the_frame_29cb16_s1 structural_imscription_of_the_frame_29cb16_s2) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l2 structural_imscription_of_the_frame_29cb16_s2 structural_imscription_of_the_frame_29cb16_s3) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l3 structural_imscription_of_the_frame_29cb16_s3 structural_imscription_of_the_frame_29cb16_s4) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l4 structural_imscription_of_the_frame_29cb16_s4 structural_imscription_of_the_frame_29cb16_s5) (.seq (.prod (.arrow structural_imscription_of_the_frame_29cb16_l5 structural_imscription_of_the_frame_29cb16_s5 structural_imscription_of_the_frame_29cb16_s12) (.arrow structural_imscription_of_the_frame_29cb16_l5 structural_imscription_of_the_frame_29cb16_s5 structural_imscription_of_the_frame_29cb16_s12)) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l12 structural_imscription_of_the_frame_29cb16_s12 structural_imscription_of_the_frame_29cb16_s12) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l12 structural_imscription_of_the_frame_29cb16_s12 structural_imscription_of_the_frame_29cb16_s13) (.seq (.arrow structural_imscription_of_the_frame_29cb16_l13 structural_imscription_of_the_frame_29cb16_s13 structural_imscription_of_the_frame_29cb16_s14) (.arrow structural_imscription_of_the_frame_29cb16_l14 structural_imscription_of_the_frame_29cb16_s14 structural_imscription_of_the_frame_29cb16_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def structural_imscription_of_the_frame_29cb16_true_arm : IGProtocol structural_imscription_of_the_frame_29cb16_s0 structural_imscription_of_the_frame_29cb16_s15 :=
  (structural_imscription_of_the_frame_29cb16_protocol).restrictToEVALT

-- false arm
noncomputable def structural_imscription_of_the_frame_29cb16_false_arm : IGProtocol structural_imscription_of_the_frame_29cb16_s0 structural_imscription_of_the_frame_29cb16_s15 :=
  (structural_imscription_of_the_frame_29cb16_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def structural_imscription_of_the_frame_29cb16_tier : OuroboricityTier := TierFunctor.obj structural_imscription_of_the_frame_29cb16_s0
#eval structural_imscription_of_the_frame_29cb16_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem structural_imscription_of_the_frame_29cb16_frobenius :
    igFrobeniusAlg.mul structural_imscription_of_the_frame_29cb16_s0 structural_imscription_of_the_frame_29cb16_s0 = structural_imscription_of_the_frame_29cb16_s0 :=
  igFrobAlg_self_fusion structural_imscription_of_the_frame_29cb16_s0
