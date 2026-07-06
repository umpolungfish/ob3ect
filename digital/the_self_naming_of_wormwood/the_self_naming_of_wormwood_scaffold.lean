-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IFIX → FSPLIT → EVALT → AREV → CLINK → EVALF → FFUSE → ENGAGR → IMSCRIB → CLINK → IFIX → TANCH
-- Class: The Self-Naming of Wormwood
-- Fingerprint: sig=(8,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [3] IFIX      prot   := 𐑭               𐑾 → 𐑚  | irreversible fixation — winding number
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [11] IMSCRIB   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [12] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_self_naming_of_wormwood_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_self_naming_of_wormwood_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_self_naming_of_wormwood_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_self_naming_of_wormwood_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_self_naming_of_wormwood_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_self_naming_of_wormwood_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_self_naming_of_wormwood_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_self_naming_of_wormwood_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_self_naming_of_wormwood_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_self_naming_of_wormwood_protocol : IGProtocol the_self_naming_of_wormwood_s0 the_self_naming_of_wormwood_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_self_naming_of_wormwood_s9 the_self_naming_of_wormwood_s9 = the_self_naming_of_wormwood_s9 (idempotent)
  (.seq (.arrow the_self_naming_of_wormwood_l0 the_self_naming_of_wormwood_s0 the_self_naming_of_wormwood_s1) (.seq (.arrow the_self_naming_of_wormwood_l1 the_self_naming_of_wormwood_s1 the_self_naming_of_wormwood_s2) (.seq (.arrow the_self_naming_of_wormwood_l2 the_self_naming_of_wormwood_s2 the_self_naming_of_wormwood_s3) (.seq (.arrow the_self_naming_of_wormwood_l3 the_self_naming_of_wormwood_s3 the_self_naming_of_wormwood_s4) (.seq (.prod (.arrow the_self_naming_of_wormwood_l4 the_self_naming_of_wormwood_s4 the_self_naming_of_wormwood_s9) (.arrow the_self_naming_of_wormwood_l4 the_self_naming_of_wormwood_s4 the_self_naming_of_wormwood_s9)) (.seq (.arrow the_self_naming_of_wormwood_l9 the_self_naming_of_wormwood_s9 the_self_naming_of_wormwood_s9) (.seq (.arrow the_self_naming_of_wormwood_l9 the_self_naming_of_wormwood_s9 the_self_naming_of_wormwood_s10) (.seq (.arrow the_self_naming_of_wormwood_l10 the_self_naming_of_wormwood_s10 the_self_naming_of_wormwood_s11) (.seq (.arrow the_self_naming_of_wormwood_l11 the_self_naming_of_wormwood_s11 the_self_naming_of_wormwood_s12) (.seq (.arrow the_self_naming_of_wormwood_l12 the_self_naming_of_wormwood_s12 the_self_naming_of_wormwood_s13) (.arrow the_self_naming_of_wormwood_l13 the_self_naming_of_wormwood_s13 the_self_naming_of_wormwood_s14)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_self_naming_of_wormwood_true_arm : IGProtocol the_self_naming_of_wormwood_s0 the_self_naming_of_wormwood_s14 :=
  (the_self_naming_of_wormwood_protocol).restrictToEVALT

-- false arm
noncomputable def the_self_naming_of_wormwood_false_arm : IGProtocol the_self_naming_of_wormwood_s0 the_self_naming_of_wormwood_s14 :=
  (the_self_naming_of_wormwood_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_self_naming_of_wormwood_tier : OuroboricityTier := TierFunctor.obj the_self_naming_of_wormwood_s0
#eval the_self_naming_of_wormwood_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_self_naming_of_wormwood_frobenius :
    igFrobeniusAlg.mul the_self_naming_of_wormwood_s0 the_self_naming_of_wormwood_s0 = the_self_naming_of_wormwood_s0 :=
  igFrobAlg_self_fusion the_self_naming_of_wormwood_s0
