-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → FFUSE → IMSCRIB → AFWD → CLINK → ENGAGR → AREV → TANCH → IFIX → IMSCRIB
-- Class: trilattice SIXTEEN_3
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [6] IMSCRIB   gram   := 𐑠               𐑙 → 𐑾  | identity — self-imscription
--   [7] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑾 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑗  | engage paradox — B-state, both arms
--   [10] AREV      pol    := 𐑗               𐑳 → 𐑡  | reverse morphism — parity flip
--   [11] TANCH     top    := 𐑡               𐑗 → 𐑭  | terminal object — connectivity boundary
--   [12] IFIX      prot   := 𐑭               𐑡 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def trilattice_sixteen_3_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def trilattice_sixteen_3_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def trilattice_sixteen_3_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def trilattice_sixteen_3_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def trilattice_sixteen_3_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def trilattice_sixteen_3_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def trilattice_sixteen_3_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def trilattice_sixteen_3_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def trilattice_sixteen_3_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def trilattice_sixteen_3_protocol : IGProtocol trilattice_sixteen_3_s0 trilattice_sixteen_3_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct trilattice_sixteen_3_s5 trilattice_sixteen_3_s5 = trilattice_sixteen_3_s5 (idempotent)
  (.seq (.arrow trilattice_sixteen_3_l0 trilattice_sixteen_3_s0 trilattice_sixteen_3_s1) (.seq (.arrow trilattice_sixteen_3_l1 trilattice_sixteen_3_s1 trilattice_sixteen_3_s2) (.seq (.prod (.arrow trilattice_sixteen_3_l2 trilattice_sixteen_3_s2 trilattice_sixteen_3_s5) (.arrow trilattice_sixteen_3_l2 trilattice_sixteen_3_s2 trilattice_sixteen_3_s5)) (.seq (.arrow trilattice_sixteen_3_l5 trilattice_sixteen_3_s5 trilattice_sixteen_3_s5) (.seq (.arrow trilattice_sixteen_3_l5 trilattice_sixteen_3_s5 trilattice_sixteen_3_s6) (.seq (.arrow trilattice_sixteen_3_l6 trilattice_sixteen_3_s6 trilattice_sixteen_3_s7) (.seq (.arrow trilattice_sixteen_3_l7 trilattice_sixteen_3_s7 trilattice_sixteen_3_s8) (.seq (.arrow trilattice_sixteen_3_l8 trilattice_sixteen_3_s8 trilattice_sixteen_3_s9) (.seq (.arrow trilattice_sixteen_3_l9 trilattice_sixteen_3_s9 trilattice_sixteen_3_s10) (.seq (.arrow trilattice_sixteen_3_l10 trilattice_sixteen_3_s10 trilattice_sixteen_3_s11) (.seq (.arrow trilattice_sixteen_3_l11 trilattice_sixteen_3_s11 trilattice_sixteen_3_s12) (.arrow trilattice_sixteen_3_l12 trilattice_sixteen_3_s12 trilattice_sixteen_3_s13))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def trilattice_sixteen_3_true_arm : IGProtocol trilattice_sixteen_3_s0 trilattice_sixteen_3_s13 :=
  (trilattice_sixteen_3_protocol).restrictToEVALT

-- false arm
noncomputable def trilattice_sixteen_3_false_arm : IGProtocol trilattice_sixteen_3_s0 trilattice_sixteen_3_s13 :=
  (trilattice_sixteen_3_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def trilattice_sixteen_3_tier : OuroboricityTier := TierFunctor.obj trilattice_sixteen_3_s0
#eval trilattice_sixteen_3_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem trilattice_sixteen_3_frobenius :
    igFrobeniusAlg.mul trilattice_sixteen_3_s0 trilattice_sixteen_3_s0 = trilattice_sixteen_3_s0 :=
  igFrobAlg_self_fusion trilattice_sixteen_3_s0
