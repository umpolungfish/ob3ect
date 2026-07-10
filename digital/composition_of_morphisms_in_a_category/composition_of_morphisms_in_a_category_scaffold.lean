-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → AFWD → FSPLIT → EVALT → AFWD → CLINK → FFUSE → IMSCRIB → IFIX → FSPLIT → EVALT → AFWD → CLINK → CLINK → ENGAGR → FFUSE → IFIX → TANCH
-- Class: composition of morphisms in a category
-- Fingerprint: sig=(10,4,3,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 8), (11, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [3] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [16] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [19] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def composition_of_morphisms_in_a_category_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def composition_of_morphisms_in_a_category_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def composition_of_morphisms_in_a_category_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def composition_of_morphisms_in_a_category_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def composition_of_morphisms_in_a_category_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def composition_of_morphisms_in_a_category_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def composition_of_morphisms_in_a_category_protocol : IGProtocol composition_of_morphisms_in_a_category_s0 composition_of_morphisms_in_a_category_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct composition_of_morphisms_in_a_category_s8 composition_of_morphisms_in_a_category_s8 = composition_of_morphisms_in_a_category_s8 (idempotent)
  (.seq (.arrow composition_of_morphisms_in_a_category_l0 composition_of_morphisms_in_a_category_s0 composition_of_morphisms_in_a_category_s1) (.seq (.arrow composition_of_morphisms_in_a_category_l1 composition_of_morphisms_in_a_category_s1 composition_of_morphisms_in_a_category_s2) (.seq (.arrow composition_of_morphisms_in_a_category_l2 composition_of_morphisms_in_a_category_s2 composition_of_morphisms_in_a_category_s3) (.seq (.arrow composition_of_morphisms_in_a_category_l3 composition_of_morphisms_in_a_category_s3 composition_of_morphisms_in_a_category_s4) (.seq (.prod (.arrow composition_of_morphisms_in_a_category_l4 composition_of_morphisms_in_a_category_s4 composition_of_morphisms_in_a_category_s8) (.arrow composition_of_morphisms_in_a_category_l4 composition_of_morphisms_in_a_category_s4 composition_of_morphisms_in_a_category_s8)) (.seq (.arrow composition_of_morphisms_in_a_category_l8 composition_of_morphisms_in_a_category_s8 composition_of_morphisms_in_a_category_s8) (.seq (.arrow composition_of_morphisms_in_a_category_l8 composition_of_morphisms_in_a_category_s8 composition_of_morphisms_in_a_category_s9) (.seq (.arrow composition_of_morphisms_in_a_category_l9 composition_of_morphisms_in_a_category_s9 composition_of_morphisms_in_a_category_s10) (.seq (.arrow composition_of_morphisms_in_a_category_l10 composition_of_morphisms_in_a_category_s10 composition_of_morphisms_in_a_category_s11) (.seq (.arrow composition_of_morphisms_in_a_category_l11 composition_of_morphisms_in_a_category_s11 composition_of_morphisms_in_a_category_s12) (.seq (.arrow composition_of_morphisms_in_a_category_l12 composition_of_morphisms_in_a_category_s12 composition_of_morphisms_in_a_category_s13) (.seq (.arrow composition_of_morphisms_in_a_category_l13 composition_of_morphisms_in_a_category_s13 composition_of_morphisms_in_a_category_s14) (.seq (.arrow composition_of_morphisms_in_a_category_l14 composition_of_morphisms_in_a_category_s14 composition_of_morphisms_in_a_category_s15) (.seq (.arrow composition_of_morphisms_in_a_category_l15 composition_of_morphisms_in_a_category_s15 composition_of_morphisms_in_a_category_s16) (.seq (.arrow composition_of_morphisms_in_a_category_l16 composition_of_morphisms_in_a_category_s16 composition_of_morphisms_in_a_category_s17) (.seq (.arrow composition_of_morphisms_in_a_category_l17 composition_of_morphisms_in_a_category_s17 composition_of_morphisms_in_a_category_s18) (.arrow composition_of_morphisms_in_a_category_l18 composition_of_morphisms_in_a_category_s18 composition_of_morphisms_in_a_category_s19)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def composition_of_morphisms_in_a_category_true_arm : IGProtocol composition_of_morphisms_in_a_category_s0 composition_of_morphisms_in_a_category_s19 :=
  (composition_of_morphisms_in_a_category_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def composition_of_morphisms_in_a_category_tier : OuroboricityTier := TierFunctor.obj composition_of_morphisms_in_a_category_s0
#eval composition_of_morphisms_in_a_category_tier  -- the Grammar's own verdict on its tier
