-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → FFUSE → ENGAGR → FSPLIT → EVALT → EVALF → FFUSE → CLINK → IFIX → IMSCRIB → TANCH
-- Class: Categorical Join reconstituting the General Dimension d conjecture space
-- Fingerprint: sig=(8,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 8), (10, 13)]

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
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑚  | engage paradox — B-state, both arms
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [14] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [15] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [16] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [17] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def categorical_join_reconstituting_the_e85c8d_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def categorical_join_reconstituting_the_e85c8d_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def categorical_join_reconstituting_the_e85c8d_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def categorical_join_reconstituting_the_e85c8d_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def categorical_join_reconstituting_the_e85c8d_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def categorical_join_reconstituting_the_e85c8d_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def categorical_join_reconstituting_the_e85c8d_protocol : IGProtocol categorical_join_reconstituting_the_e85c8d_s0 categorical_join_reconstituting_the_e85c8d_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct categorical_join_reconstituting_the_e85c8d_s8 categorical_join_reconstituting_the_e85c8d_s8 = categorical_join_reconstituting_the_e85c8d_s8 (idempotent)
  (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l0 categorical_join_reconstituting_the_e85c8d_s0 categorical_join_reconstituting_the_e85c8d_s1) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l1 categorical_join_reconstituting_the_e85c8d_s1 categorical_join_reconstituting_the_e85c8d_s2) (.seq (.prod (.arrow categorical_join_reconstituting_the_e85c8d_l2 categorical_join_reconstituting_the_e85c8d_s2 categorical_join_reconstituting_the_e85c8d_s8) (.arrow categorical_join_reconstituting_the_e85c8d_l2 categorical_join_reconstituting_the_e85c8d_s2 categorical_join_reconstituting_the_e85c8d_s8)) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l8 categorical_join_reconstituting_the_e85c8d_s8 categorical_join_reconstituting_the_e85c8d_s8) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l8 categorical_join_reconstituting_the_e85c8d_s8 categorical_join_reconstituting_the_e85c8d_s9) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l9 categorical_join_reconstituting_the_e85c8d_s9 categorical_join_reconstituting_the_e85c8d_s10) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l10 categorical_join_reconstituting_the_e85c8d_s10 categorical_join_reconstituting_the_e85c8d_s11) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l11 categorical_join_reconstituting_the_e85c8d_s11 categorical_join_reconstituting_the_e85c8d_s12) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l12 categorical_join_reconstituting_the_e85c8d_s12 categorical_join_reconstituting_the_e85c8d_s13) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l13 categorical_join_reconstituting_the_e85c8d_s13 categorical_join_reconstituting_the_e85c8d_s14) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l14 categorical_join_reconstituting_the_e85c8d_s14 categorical_join_reconstituting_the_e85c8d_s15) (.seq (.arrow categorical_join_reconstituting_the_e85c8d_l15 categorical_join_reconstituting_the_e85c8d_s15 categorical_join_reconstituting_the_e85c8d_s16) (.arrow categorical_join_reconstituting_the_e85c8d_l16 categorical_join_reconstituting_the_e85c8d_s16 categorical_join_reconstituting_the_e85c8d_s17)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def categorical_join_reconstituting_the_e85c8d_true_arm : IGProtocol categorical_join_reconstituting_the_e85c8d_s0 categorical_join_reconstituting_the_e85c8d_s17 :=
  (categorical_join_reconstituting_the_e85c8d_protocol).restrictToEVALT

-- false arm
noncomputable def categorical_join_reconstituting_the_e85c8d_false_arm : IGProtocol categorical_join_reconstituting_the_e85c8d_s0 categorical_join_reconstituting_the_e85c8d_s17 :=
  (categorical_join_reconstituting_the_e85c8d_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def categorical_join_reconstituting_the_e85c8d_tier : OuroboricityTier := TierFunctor.obj categorical_join_reconstituting_the_e85c8d_s0
#eval categorical_join_reconstituting_the_e85c8d_tier  -- the Grammar's own verdict on its tier
