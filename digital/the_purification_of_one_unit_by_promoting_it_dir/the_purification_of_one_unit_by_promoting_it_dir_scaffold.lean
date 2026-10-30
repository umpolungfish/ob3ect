-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → AFWD → CLINK → IFIX → FFUSE → FSPLIT → EVALF → AREV → FFUSE → IMSCRIB → TANCH
-- Class: The purification of one unit by promoting it directly across two states while skipping the intermediate state entirely, so a unit that possesses a clean skip-path passes over pure while a unit lacking one is left behind as residue; a transition that omits the middle register, distinct from a stepwise promotion that must pass through every intervening state.
-- Fingerprint: sig=(8,4,2,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 8), (9, 12)]

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
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [13] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_purification_of_one_unit_by_e0983d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_purification_of_one_unit_by_e0983d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_purification_of_one_unit_by_e0983d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_purification_of_one_unit_by_e0983d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_purification_of_one_unit_by_e0983d_protocol : IGProtocol the_purification_of_one_unit_by_e0983d_s0 the_purification_of_one_unit_by_e0983d_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_purification_of_one_unit_by_e0983d_s8 the_purification_of_one_unit_by_e0983d_s8 = the_purification_of_one_unit_by_e0983d_s8 (idempotent)
  (.seq (.arrow the_purification_of_one_unit_by_e0983d_l0 the_purification_of_one_unit_by_e0983d_s0 the_purification_of_one_unit_by_e0983d_s1) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l1 the_purification_of_one_unit_by_e0983d_s1 the_purification_of_one_unit_by_e0983d_s2) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l2 the_purification_of_one_unit_by_e0983d_s2 the_purification_of_one_unit_by_e0983d_s3) (.seq (.prod (.arrow the_purification_of_one_unit_by_e0983d_l3 the_purification_of_one_unit_by_e0983d_s3 the_purification_of_one_unit_by_e0983d_s8) (.arrow the_purification_of_one_unit_by_e0983d_l3 the_purification_of_one_unit_by_e0983d_s3 the_purification_of_one_unit_by_e0983d_s8)) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l8 the_purification_of_one_unit_by_e0983d_s8 the_purification_of_one_unit_by_e0983d_s8) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l8 the_purification_of_one_unit_by_e0983d_s8 the_purification_of_one_unit_by_e0983d_s9) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l9 the_purification_of_one_unit_by_e0983d_s9 the_purification_of_one_unit_by_e0983d_s10) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l10 the_purification_of_one_unit_by_e0983d_s10 the_purification_of_one_unit_by_e0983d_s11) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l11 the_purification_of_one_unit_by_e0983d_s11 the_purification_of_one_unit_by_e0983d_s12) (.seq (.arrow the_purification_of_one_unit_by_e0983d_l12 the_purification_of_one_unit_by_e0983d_s12 the_purification_of_one_unit_by_e0983d_s13) (.arrow the_purification_of_one_unit_by_e0983d_l13 the_purification_of_one_unit_by_e0983d_s13 the_purification_of_one_unit_by_e0983d_s14)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_purification_of_one_unit_by_e0983d_true_arm : IGProtocol the_purification_of_one_unit_by_e0983d_s0 the_purification_of_one_unit_by_e0983d_s14 :=
  (the_purification_of_one_unit_by_e0983d_protocol).restrictToEVALT

-- false arm
noncomputable def the_purification_of_one_unit_by_e0983d_false_arm : IGProtocol the_purification_of_one_unit_by_e0983d_s0 the_purification_of_one_unit_by_e0983d_s14 :=
  (the_purification_of_one_unit_by_e0983d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_purification_of_one_unit_by_e0983d_tier : OuroboricityTier := TierFunctor.obj the_purification_of_one_unit_by_e0983d_s0
#eval the_purification_of_one_unit_by_e0983d_tier  -- the Grammar's own verdict on its tier
