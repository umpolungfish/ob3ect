-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → CLINK → AFWD → FSPLIT → EVALF → AREV → FFUSE → CLINK → AFWD → FSPLIT → ENGAGR → FFUSE → EVALT → IFIX → TANCH
-- Class: the frame-potential plateau at d=2048: the seed-independent common attractor at objective 0.7815 inside the 683-dimensional Zauner sector, where every first-order method stalls. Parseval fixes the second moment of the ambiguity function on the unit sphere, so the least-squares overlap objective and the fourth-moment frame potential differ by a constant: no rewriting of the loss escapes the shelf. This is the false-branch resistance of the geometric lift, the ramified double cover pushing back. With full Frobenius closure and Lean 4 verification scaffold.
-- Fingerprint: sig=(8,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 8), (11, 13)]

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
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [10] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [14] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [15] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_frame_potential_plateau_at_d_2048_63dcf3_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := up, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_frame_potential_plateau_at_d_2048_63dcf3_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_frame_potential_plateau_at_d_2048_63dcf3_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_frame_potential_plateau_at_d_2048_63dcf3_protocol : IGProtocol the_frame_potential_plateau_at_d_2048_63dcf3_s0 the_frame_potential_plateau_at_d_2048_63dcf3_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_frame_potential_plateau_at_d_2048_63dcf3_s8 the_frame_potential_plateau_at_d_2048_63dcf3_s8 = the_frame_potential_plateau_at_d_2048_63dcf3_s8 (idempotent)
  (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l0 the_frame_potential_plateau_at_d_2048_63dcf3_s0 the_frame_potential_plateau_at_d_2048_63dcf3_s1) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l1 the_frame_potential_plateau_at_d_2048_63dcf3_s1 the_frame_potential_plateau_at_d_2048_63dcf3_s2) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l2 the_frame_potential_plateau_at_d_2048_63dcf3_s2 the_frame_potential_plateau_at_d_2048_63dcf3_s3) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l3 the_frame_potential_plateau_at_d_2048_63dcf3_s3 the_frame_potential_plateau_at_d_2048_63dcf3_s4) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l4 the_frame_potential_plateau_at_d_2048_63dcf3_s4 the_frame_potential_plateau_at_d_2048_63dcf3_s5) (.seq (.prod (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l5 the_frame_potential_plateau_at_d_2048_63dcf3_s5 the_frame_potential_plateau_at_d_2048_63dcf3_s8) (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l5 the_frame_potential_plateau_at_d_2048_63dcf3_s5 the_frame_potential_plateau_at_d_2048_63dcf3_s8)) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l8 the_frame_potential_plateau_at_d_2048_63dcf3_s8 the_frame_potential_plateau_at_d_2048_63dcf3_s8) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l8 the_frame_potential_plateau_at_d_2048_63dcf3_s8 the_frame_potential_plateau_at_d_2048_63dcf3_s9) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l9 the_frame_potential_plateau_at_d_2048_63dcf3_s9 the_frame_potential_plateau_at_d_2048_63dcf3_s10) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l10 the_frame_potential_plateau_at_d_2048_63dcf3_s10 the_frame_potential_plateau_at_d_2048_63dcf3_s11) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l11 the_frame_potential_plateau_at_d_2048_63dcf3_s11 the_frame_potential_plateau_at_d_2048_63dcf3_s12) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l12 the_frame_potential_plateau_at_d_2048_63dcf3_s12 the_frame_potential_plateau_at_d_2048_63dcf3_s13) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l13 the_frame_potential_plateau_at_d_2048_63dcf3_s13 the_frame_potential_plateau_at_d_2048_63dcf3_s14) (.seq (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l14 the_frame_potential_plateau_at_d_2048_63dcf3_s14 the_frame_potential_plateau_at_d_2048_63dcf3_s15) (.arrow the_frame_potential_plateau_at_d_2048_63dcf3_l15 the_frame_potential_plateau_at_d_2048_63dcf3_s15 the_frame_potential_plateau_at_d_2048_63dcf3_s16)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_frame_potential_plateau_at_d_2048_63dcf3_true_arm : IGProtocol the_frame_potential_plateau_at_d_2048_63dcf3_s0 the_frame_potential_plateau_at_d_2048_63dcf3_s16 :=
  (the_frame_potential_plateau_at_d_2048_63dcf3_protocol).restrictToEVALT

-- false arm
noncomputable def the_frame_potential_plateau_at_d_2048_63dcf3_false_arm : IGProtocol the_frame_potential_plateau_at_d_2048_63dcf3_s0 the_frame_potential_plateau_at_d_2048_63dcf3_s16 :=
  (the_frame_potential_plateau_at_d_2048_63dcf3_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_frame_potential_plateau_at_d_2048_63dcf3_tier : OuroboricityTier := TierFunctor.obj the_frame_potential_plateau_at_d_2048_63dcf3_s0
#eval the_frame_potential_plateau_at_d_2048_63dcf3_tier  -- the Grammar's own verdict on its tier
