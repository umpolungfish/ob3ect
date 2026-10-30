-- IGProtocol scaffold: VINIT → IMSCRIB → TANCH → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → ENGAGR → CLINK → IFIX
-- Class: the largest girth available to a graph of given order and chromatic number, as a structural ob3ect
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑡  | identity — self-imscription
--   [2] TANCH     top    := 𐑡               𐑠 → 𐑚  | terminal object — connectivity boundary
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [10] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [11] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_largest_girth_available_to_a_graph_000dca_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_largest_girth_available_to_a_graph_000dca_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_largest_girth_available_to_a_graph_000dca_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_largest_girth_available_to_a_graph_000dca_protocol : IGProtocol the_largest_girth_available_to_a_graph_000dca_s0 the_largest_girth_available_to_a_graph_000dca_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_largest_girth_available_to_a_graph_000dca_s8 the_largest_girth_available_to_a_graph_000dca_s8 = the_largest_girth_available_to_a_graph_000dca_s8 (idempotent)
  (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l0 the_largest_girth_available_to_a_graph_000dca_s0 the_largest_girth_available_to_a_graph_000dca_s1) (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l1 the_largest_girth_available_to_a_graph_000dca_s1 the_largest_girth_available_to_a_graph_000dca_s2) (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l2 the_largest_girth_available_to_a_graph_000dca_s2 the_largest_girth_available_to_a_graph_000dca_s3) (.seq (.prod (.arrow the_largest_girth_available_to_a_graph_000dca_l3 the_largest_girth_available_to_a_graph_000dca_s3 the_largest_girth_available_to_a_graph_000dca_s8) (.arrow the_largest_girth_available_to_a_graph_000dca_l3 the_largest_girth_available_to_a_graph_000dca_s3 the_largest_girth_available_to_a_graph_000dca_s8)) (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l8 the_largest_girth_available_to_a_graph_000dca_s8 the_largest_girth_available_to_a_graph_000dca_s8) (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l8 the_largest_girth_available_to_a_graph_000dca_s8 the_largest_girth_available_to_a_graph_000dca_s9) (.seq (.arrow the_largest_girth_available_to_a_graph_000dca_l9 the_largest_girth_available_to_a_graph_000dca_s9 the_largest_girth_available_to_a_graph_000dca_s10) (.arrow the_largest_girth_available_to_a_graph_000dca_l10 the_largest_girth_available_to_a_graph_000dca_s10 the_largest_girth_available_to_a_graph_000dca_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_largest_girth_available_to_a_graph_000dca_true_arm : IGProtocol the_largest_girth_available_to_a_graph_000dca_s0 the_largest_girth_available_to_a_graph_000dca_s11 :=
  (the_largest_girth_available_to_a_graph_000dca_protocol).restrictToEVALT

-- false arm
noncomputable def the_largest_girth_available_to_a_graph_000dca_false_arm : IGProtocol the_largest_girth_available_to_a_graph_000dca_s0 the_largest_girth_available_to_a_graph_000dca_s11 :=
  (the_largest_girth_available_to_a_graph_000dca_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_largest_girth_available_to_a_graph_000dca_tier_ground : OuroboricityTier := TierFunctor.obj the_largest_girth_available_to_a_graph_000dca_s0
def the_largest_girth_available_to_a_graph_000dca_tier : OuroboricityTier := TierFunctor.obj the_largest_girth_available_to_a_graph_000dca_s11
#eval the_largest_girth_available_to_a_graph_000dca_tier_ground  -- tier of the ground (pre-transformation)
#eval the_largest_girth_available_to_a_graph_000dca_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_largest_girth_available_to_a_graph_000dca_frobenius :
    igFrobeniusAlg.mul the_largest_girth_available_to_a_graph_000dca_s0 the_largest_girth_available_to_a_graph_000dca_s0 = the_largest_girth_available_to_a_graph_000dca_s0 :=
  igFrobAlg_self_fusion the_largest_girth_available_to_a_graph_000dca_s0
