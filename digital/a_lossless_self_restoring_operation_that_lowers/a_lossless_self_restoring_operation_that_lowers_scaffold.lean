-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → IFIX → FFUSE → AREV → IMSCRIB → TANCH
-- Class: a lossless, self-restoring operation that lowers the threshold for two fragments to fuse, enabling a fusion their charges alone could not reach, and returns to itself unchanged once the fusion completes
-- Fingerprint: sig=(7,2,1,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑠  | reverse morphism — parity flip
--   [9] IMSCRIB   gram   := 𐑠               𐑗 → 𐑡  | identity — self-imscription
--   [10] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_lossless_self_restoring_operation_214301_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_lossless_self_restoring_operation_214301_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_lossless_self_restoring_operation_214301_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_lossless_self_restoring_operation_214301_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_lossless_self_restoring_operation_214301_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_lossless_self_restoring_operation_214301_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_lossless_self_restoring_operation_214301_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_self_restoring_operation_214301_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_lossless_self_restoring_operation_214301_protocol : IGProtocol a_lossless_self_restoring_operation_214301_s0 a_lossless_self_restoring_operation_214301_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_lossless_self_restoring_operation_214301_s7 a_lossless_self_restoring_operation_214301_s7 = a_lossless_self_restoring_operation_214301_s7 (idempotent)
  (.seq (.arrow a_lossless_self_restoring_operation_214301_l0 a_lossless_self_restoring_operation_214301_s0 a_lossless_self_restoring_operation_214301_s1) (.seq (.arrow a_lossless_self_restoring_operation_214301_l1 a_lossless_self_restoring_operation_214301_s1 a_lossless_self_restoring_operation_214301_s2) (.seq (.arrow a_lossless_self_restoring_operation_214301_l2 a_lossless_self_restoring_operation_214301_s2 a_lossless_self_restoring_operation_214301_s3) (.seq (.arrow a_lossless_self_restoring_operation_214301_l3 a_lossless_self_restoring_operation_214301_s3 a_lossless_self_restoring_operation_214301_s4) (.seq (.prod (.arrow a_lossless_self_restoring_operation_214301_l4 a_lossless_self_restoring_operation_214301_s4 a_lossless_self_restoring_operation_214301_s7) (.arrow a_lossless_self_restoring_operation_214301_l4 a_lossless_self_restoring_operation_214301_s4 a_lossless_self_restoring_operation_214301_s7)) (.seq (.arrow a_lossless_self_restoring_operation_214301_l7 a_lossless_self_restoring_operation_214301_s7 a_lossless_self_restoring_operation_214301_s7) (.seq (.arrow a_lossless_self_restoring_operation_214301_l7 a_lossless_self_restoring_operation_214301_s7 a_lossless_self_restoring_operation_214301_s8) (.seq (.arrow a_lossless_self_restoring_operation_214301_l8 a_lossless_self_restoring_operation_214301_s8 a_lossless_self_restoring_operation_214301_s9) (.arrow a_lossless_self_restoring_operation_214301_l9 a_lossless_self_restoring_operation_214301_s9 a_lossless_self_restoring_operation_214301_s10)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_lossless_self_restoring_operation_214301_true_arm : IGProtocol a_lossless_self_restoring_operation_214301_s0 a_lossless_self_restoring_operation_214301_s10 :=
  (a_lossless_self_restoring_operation_214301_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_lossless_self_restoring_operation_214301_tier : OuroboricityTier := TierFunctor.obj a_lossless_self_restoring_operation_214301_s0
#eval a_lossless_self_restoring_operation_214301_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_lossless_self_restoring_operation_214301_frobenius :
    igFrobeniusAlg.mul a_lossless_self_restoring_operation_214301_s0 a_lossless_self_restoring_operation_214301_s0 = a_lossless_self_restoring_operation_214301_s0 :=
  igFrobAlg_self_fusion a_lossless_self_restoring_operation_214301_s0
