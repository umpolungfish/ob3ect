-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → IFIX → CLINK → TANCH → FSPLIT → EVALT → AFWD → IMSCRIB → FFUSE → IFIX
-- Class: the primitive type called out
-- Fingerprint: sig=(6,2,1,13)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=22
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(16, 20)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑭  | irreversible fixation — winding number
--   [3] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [4] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [5] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [6] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [7] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [8] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [9] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [10] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [11] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [12] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [13] IFIX      prot   := 𐑭               𐑭 → 𐑱  | irreversible fixation — winding number
--   [14] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [15] TANCH     top    := 𐑡               𐑱 → 𐑚  | terminal object — connectivity boundary
--   [16] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [19] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [21] IFIX      prot   := 𐑭               𐑙 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_primitive_type_called_out_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s10 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s11 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s12 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s13 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s14 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s15 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s16 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s17 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_primitive_type_called_out_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_primitive_type_called_out_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_primitive_type_called_out_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_primitive_type_called_out_protocol : IGProtocol the_primitive_type_called_out_s0 the_primitive_type_called_out_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_primitive_type_called_out_s20 the_primitive_type_called_out_s20 = the_primitive_type_called_out_s20 (idempotent)
  (.seq (.arrow the_primitive_type_called_out_l0 the_primitive_type_called_out_s0 the_primitive_type_called_out_s1) (.seq (.arrow the_primitive_type_called_out_l1 the_primitive_type_called_out_s1 the_primitive_type_called_out_s2) (.seq (.arrow the_primitive_type_called_out_l2 the_primitive_type_called_out_s2 the_primitive_type_called_out_s3) (.seq (.arrow the_primitive_type_called_out_l3 the_primitive_type_called_out_s3 the_primitive_type_called_out_s4) (.seq (.arrow the_primitive_type_called_out_l4 the_primitive_type_called_out_s4 the_primitive_type_called_out_s5) (.seq (.arrow the_primitive_type_called_out_l5 the_primitive_type_called_out_s5 the_primitive_type_called_out_s6) (.seq (.arrow the_primitive_type_called_out_l6 the_primitive_type_called_out_s6 the_primitive_type_called_out_s7) (.seq (.arrow the_primitive_type_called_out_l7 the_primitive_type_called_out_s7 the_primitive_type_called_out_s8) (.seq (.arrow the_primitive_type_called_out_l8 the_primitive_type_called_out_s8 the_primitive_type_called_out_s9) (.seq (.arrow the_primitive_type_called_out_l9 the_primitive_type_called_out_s9 the_primitive_type_called_out_s10) (.seq (.arrow the_primitive_type_called_out_l10 the_primitive_type_called_out_s10 the_primitive_type_called_out_s11) (.seq (.arrow the_primitive_type_called_out_l11 the_primitive_type_called_out_s11 the_primitive_type_called_out_s12) (.seq (.arrow the_primitive_type_called_out_l12 the_primitive_type_called_out_s12 the_primitive_type_called_out_s13) (.seq (.arrow the_primitive_type_called_out_l13 the_primitive_type_called_out_s13 the_primitive_type_called_out_s14) (.seq (.arrow the_primitive_type_called_out_l14 the_primitive_type_called_out_s14 the_primitive_type_called_out_s15) (.seq (.arrow the_primitive_type_called_out_l15 the_primitive_type_called_out_s15 the_primitive_type_called_out_s16) (.seq (.prod (.arrow the_primitive_type_called_out_l16 the_primitive_type_called_out_s16 the_primitive_type_called_out_s20) (.arrow the_primitive_type_called_out_l16 the_primitive_type_called_out_s16 the_primitive_type_called_out_s20)) (.seq (.arrow the_primitive_type_called_out_l20 the_primitive_type_called_out_s20 the_primitive_type_called_out_s20) (.arrow the_primitive_type_called_out_l20 the_primitive_type_called_out_s20 the_primitive_type_called_out_s21)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_primitive_type_called_out_true_arm : IGProtocol the_primitive_type_called_out_s0 the_primitive_type_called_out_s21 :=
  (the_primitive_type_called_out_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_primitive_type_called_out_tier : OuroboricityTier := TierFunctor.obj the_primitive_type_called_out_s0
#eval the_primitive_type_called_out_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_primitive_type_called_out_frobenius :
    igFrobeniusAlg.mul the_primitive_type_called_out_s0 the_primitive_type_called_out_s0 = the_primitive_type_called_out_s0 :=
  igFrobAlg_self_fusion the_primitive_type_called_out_s0
