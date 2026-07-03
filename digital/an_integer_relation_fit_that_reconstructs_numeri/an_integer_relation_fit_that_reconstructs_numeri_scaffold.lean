-- IGProtocol scaffold: VINIT → CLINK → FSPLIT → EVALT → AFWD → EVALF → ENGAGR → FFUSE → FSPLIT → EVALT → AFWD → EVALT → IMSCRIB → FFUSE → IFIX → TANCH
-- Class: an integer-relation fit that reconstructs numerically but has runaway denominators becomes a Belnap B-state, simultaneously true-at-low-precision and false-at-high-precision, resolved only by the doubling test rather than accepted as a coordinate
-- Fingerprint: sig=(6,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7), (8, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑚  | composition — regime coherence
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [14] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def an_integer_relation_fit_that_fe0274_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def an_integer_relation_fit_that_fe0274_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def an_integer_relation_fit_that_fe0274_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def an_integer_relation_fit_that_fe0274_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def an_integer_relation_fit_that_fe0274_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_integer_relation_fit_that_fe0274_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_integer_relation_fit_that_fe0274_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def an_integer_relation_fit_that_fe0274_protocol : IGProtocol an_integer_relation_fit_that_fe0274_s0 an_integer_relation_fit_that_fe0274_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct an_integer_relation_fit_that_fe0274_s7 an_integer_relation_fit_that_fe0274_s7 = an_integer_relation_fit_that_fe0274_s7 (idempotent)
  (.seq (.arrow an_integer_relation_fit_that_fe0274_l0 an_integer_relation_fit_that_fe0274_s0 an_integer_relation_fit_that_fe0274_s1) (.seq (.arrow an_integer_relation_fit_that_fe0274_l1 an_integer_relation_fit_that_fe0274_s1 an_integer_relation_fit_that_fe0274_s2) (.seq (.prod (.arrow an_integer_relation_fit_that_fe0274_l2 an_integer_relation_fit_that_fe0274_s2 an_integer_relation_fit_that_fe0274_s7) (.arrow an_integer_relation_fit_that_fe0274_l2 an_integer_relation_fit_that_fe0274_s2 an_integer_relation_fit_that_fe0274_s7)) (.seq (.arrow an_integer_relation_fit_that_fe0274_l7 an_integer_relation_fit_that_fe0274_s7 an_integer_relation_fit_that_fe0274_s7) (.seq (.arrow an_integer_relation_fit_that_fe0274_l7 an_integer_relation_fit_that_fe0274_s7 an_integer_relation_fit_that_fe0274_s8) (.seq (.arrow an_integer_relation_fit_that_fe0274_l8 an_integer_relation_fit_that_fe0274_s8 an_integer_relation_fit_that_fe0274_s9) (.seq (.arrow an_integer_relation_fit_that_fe0274_l9 an_integer_relation_fit_that_fe0274_s9 an_integer_relation_fit_that_fe0274_s10) (.seq (.arrow an_integer_relation_fit_that_fe0274_l10 an_integer_relation_fit_that_fe0274_s10 an_integer_relation_fit_that_fe0274_s11) (.seq (.arrow an_integer_relation_fit_that_fe0274_l11 an_integer_relation_fit_that_fe0274_s11 an_integer_relation_fit_that_fe0274_s12) (.seq (.arrow an_integer_relation_fit_that_fe0274_l12 an_integer_relation_fit_that_fe0274_s12 an_integer_relation_fit_that_fe0274_s13) (.seq (.arrow an_integer_relation_fit_that_fe0274_l13 an_integer_relation_fit_that_fe0274_s13 an_integer_relation_fit_that_fe0274_s14) (.arrow an_integer_relation_fit_that_fe0274_l14 an_integer_relation_fit_that_fe0274_s14 an_integer_relation_fit_that_fe0274_s15))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def an_integer_relation_fit_that_fe0274_true_arm : IGProtocol an_integer_relation_fit_that_fe0274_s0 an_integer_relation_fit_that_fe0274_s15 :=
  (an_integer_relation_fit_that_fe0274_protocol).restrictToEVALT

-- false arm
noncomputable def an_integer_relation_fit_that_fe0274_false_arm : IGProtocol an_integer_relation_fit_that_fe0274_s0 an_integer_relation_fit_that_fe0274_s15 :=
  (an_integer_relation_fit_that_fe0274_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def an_integer_relation_fit_that_fe0274_tier : OuroboricityTier := TierFunctor.obj an_integer_relation_fit_that_fe0274_s0
#eval an_integer_relation_fit_that_fe0274_tier  -- the Grammar's own verdict on its tier
