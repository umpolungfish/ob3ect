-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → AFWD → IMSCRIB → IFIX → CLINK → AREV → FFUSE → FSPLIT → EVALF → AFWD → IMSCRIB → IFIX → CLINK → FFUSE → TANCH
-- Class: The operation that selects which of several possible ordered forms a pool of units settles into by introducing one already-ordered unit as a template whose handedness and arrangement the growing lattice copies; a choice of one form among the several a mixture could otherwise adopt, distinct from the untemplated growth that takes whichever ordered form is lowest by default.
-- Fingerprint: sig=(9,4,2,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(1, 8), (9, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [16] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_selects_which_of_4f3a99_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_selects_which_of_4f3a99_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_selects_which_of_4f3a99_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_selects_which_of_4f3a99_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_selects_which_of_4f3a99_protocol : IGProtocol the_operation_that_selects_which_of_4f3a99_s0 the_operation_that_selects_which_of_4f3a99_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_selects_which_of_4f3a99_s8 the_operation_that_selects_which_of_4f3a99_s8 = the_operation_that_selects_which_of_4f3a99_s8 (idempotent)
  (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l0 the_operation_that_selects_which_of_4f3a99_s0 the_operation_that_selects_which_of_4f3a99_s1) (.seq (.prod (.arrow the_operation_that_selects_which_of_4f3a99_l1 the_operation_that_selects_which_of_4f3a99_s1 the_operation_that_selects_which_of_4f3a99_s8) (.arrow the_operation_that_selects_which_of_4f3a99_l1 the_operation_that_selects_which_of_4f3a99_s1 the_operation_that_selects_which_of_4f3a99_s8)) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l8 the_operation_that_selects_which_of_4f3a99_s8 the_operation_that_selects_which_of_4f3a99_s8) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l8 the_operation_that_selects_which_of_4f3a99_s8 the_operation_that_selects_which_of_4f3a99_s9) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l9 the_operation_that_selects_which_of_4f3a99_s9 the_operation_that_selects_which_of_4f3a99_s10) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l10 the_operation_that_selects_which_of_4f3a99_s10 the_operation_that_selects_which_of_4f3a99_s11) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l11 the_operation_that_selects_which_of_4f3a99_s11 the_operation_that_selects_which_of_4f3a99_s12) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l12 the_operation_that_selects_which_of_4f3a99_s12 the_operation_that_selects_which_of_4f3a99_s13) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l13 the_operation_that_selects_which_of_4f3a99_s13 the_operation_that_selects_which_of_4f3a99_s14) (.seq (.arrow the_operation_that_selects_which_of_4f3a99_l14 the_operation_that_selects_which_of_4f3a99_s14 the_operation_that_selects_which_of_4f3a99_s15) (.arrow the_operation_that_selects_which_of_4f3a99_l15 the_operation_that_selects_which_of_4f3a99_s15 the_operation_that_selects_which_of_4f3a99_s16)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_selects_which_of_4f3a99_true_arm : IGProtocol the_operation_that_selects_which_of_4f3a99_s0 the_operation_that_selects_which_of_4f3a99_s16 :=
  (the_operation_that_selects_which_of_4f3a99_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_selects_which_of_4f3a99_false_arm : IGProtocol the_operation_that_selects_which_of_4f3a99_s0 the_operation_that_selects_which_of_4f3a99_s16 :=
  (the_operation_that_selects_which_of_4f3a99_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_selects_which_of_4f3a99_tier : OuroboricityTier := TierFunctor.obj the_operation_that_selects_which_of_4f3a99_s0
#eval the_operation_that_selects_which_of_4f3a99_tier  -- the Grammar's own verdict on its tier
