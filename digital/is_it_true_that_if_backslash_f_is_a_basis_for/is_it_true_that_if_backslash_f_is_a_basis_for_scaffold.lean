-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AREV → IMSCRIB → EVALT → FFUSE → CLINK → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → IFIX → TANCH
-- Class: Is it true that if \backslash F$ is a basis for all finite sets $ then $ must have a restricted order? What if they are all bases of the same order?
-- Fingerprint: sig=(6,4,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(2, 6), (8, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [13] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def is_it_true_that_if_backslash_f_is_a_7982cd_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s9 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s10 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s11 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s12 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s13 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def is_it_true_that_if_backslash_f_is_a_7982cd_s14 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def is_it_true_that_if_backslash_f_is_a_7982cd_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def is_it_true_that_if_backslash_f_is_a_7982cd_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def is_it_true_that_if_backslash_f_is_a_7982cd_protocol : IGProtocol is_it_true_that_if_backslash_f_is_a_7982cd_s0 is_it_true_that_if_backslash_f_is_a_7982cd_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct is_it_true_that_if_backslash_f_is_a_7982cd_s6 is_it_true_that_if_backslash_f_is_a_7982cd_s6 = is_it_true_that_if_backslash_f_is_a_7982cd_s6 (idempotent)
  (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l0 is_it_true_that_if_backslash_f_is_a_7982cd_s0 is_it_true_that_if_backslash_f_is_a_7982cd_s1) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l1 is_it_true_that_if_backslash_f_is_a_7982cd_s1 is_it_true_that_if_backslash_f_is_a_7982cd_s2) (.seq (.prod (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l2 is_it_true_that_if_backslash_f_is_a_7982cd_s2 is_it_true_that_if_backslash_f_is_a_7982cd_s6) (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l2 is_it_true_that_if_backslash_f_is_a_7982cd_s2 is_it_true_that_if_backslash_f_is_a_7982cd_s6)) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l6 is_it_true_that_if_backslash_f_is_a_7982cd_s6 is_it_true_that_if_backslash_f_is_a_7982cd_s6) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l6 is_it_true_that_if_backslash_f_is_a_7982cd_s6 is_it_true_that_if_backslash_f_is_a_7982cd_s7) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l7 is_it_true_that_if_backslash_f_is_a_7982cd_s7 is_it_true_that_if_backslash_f_is_a_7982cd_s8) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l8 is_it_true_that_if_backslash_f_is_a_7982cd_s8 is_it_true_that_if_backslash_f_is_a_7982cd_s9) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l9 is_it_true_that_if_backslash_f_is_a_7982cd_s9 is_it_true_that_if_backslash_f_is_a_7982cd_s10) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l10 is_it_true_that_if_backslash_f_is_a_7982cd_s10 is_it_true_that_if_backslash_f_is_a_7982cd_s11) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l11 is_it_true_that_if_backslash_f_is_a_7982cd_s11 is_it_true_that_if_backslash_f_is_a_7982cd_s12) (.seq (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l12 is_it_true_that_if_backslash_f_is_a_7982cd_s12 is_it_true_that_if_backslash_f_is_a_7982cd_s13) (.arrow is_it_true_that_if_backslash_f_is_a_7982cd_l13 is_it_true_that_if_backslash_f_is_a_7982cd_s13 is_it_true_that_if_backslash_f_is_a_7982cd_s14))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def is_it_true_that_if_backslash_f_is_a_7982cd_true_arm : IGProtocol is_it_true_that_if_backslash_f_is_a_7982cd_s0 is_it_true_that_if_backslash_f_is_a_7982cd_s14 :=
  (is_it_true_that_if_backslash_f_is_a_7982cd_protocol).restrictToEVALT

-- false arm
noncomputable def is_it_true_that_if_backslash_f_is_a_7982cd_false_arm : IGProtocol is_it_true_that_if_backslash_f_is_a_7982cd_s0 is_it_true_that_if_backslash_f_is_a_7982cd_s14 :=
  (is_it_true_that_if_backslash_f_is_a_7982cd_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₀.
def is_it_true_that_if_backslash_f_is_a_7982cd_tier : OuroboricityTier := TierFunctor.obj is_it_true_that_if_backslash_f_is_a_7982cd_s0
#eval is_it_true_that_if_backslash_f_is_a_7982cd_tier  -- the Grammar's own verdict on its tier
