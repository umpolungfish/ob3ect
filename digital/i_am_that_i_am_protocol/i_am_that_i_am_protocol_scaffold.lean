-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → CLINK → IFIX → FFUSE → ENGAGR → AREV → TANCH
-- Class: I Am That I Am Protocol
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

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
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [8] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [9] AREV      pol    := 𐑗               𐑳 → 𐑡  | reverse morphism — parity flip
--   [10] TANCH     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def i_am_that_i_am_protocol_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def i_am_that_i_am_protocol_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def i_am_that_i_am_protocol_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def i_am_that_i_am_protocol_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def i_am_that_i_am_protocol_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def i_am_that_i_am_protocol_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def i_am_that_i_am_protocol_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def i_am_that_i_am_protocol_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def i_am_that_i_am_protocol_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def i_am_that_i_am_protocol_protocol : IGProtocol i_am_that_i_am_protocol_s0 i_am_that_i_am_protocol_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct i_am_that_i_am_protocol_s7 i_am_that_i_am_protocol_s7 = i_am_that_i_am_protocol_s7 (idempotent)
  (.seq (.arrow i_am_that_i_am_protocol_l0 i_am_that_i_am_protocol_s0 i_am_that_i_am_protocol_s1) (.seq (.arrow i_am_that_i_am_protocol_l1 i_am_that_i_am_protocol_s1 i_am_that_i_am_protocol_s2) (.seq (.arrow i_am_that_i_am_protocol_l2 i_am_that_i_am_protocol_s2 i_am_that_i_am_protocol_s3) (.seq (.prod (.arrow i_am_that_i_am_protocol_l3 i_am_that_i_am_protocol_s3 i_am_that_i_am_protocol_s7) (.arrow i_am_that_i_am_protocol_l3 i_am_that_i_am_protocol_s3 i_am_that_i_am_protocol_s7)) (.seq (.arrow i_am_that_i_am_protocol_l7 i_am_that_i_am_protocol_s7 i_am_that_i_am_protocol_s7) (.seq (.arrow i_am_that_i_am_protocol_l7 i_am_that_i_am_protocol_s7 i_am_that_i_am_protocol_s8) (.seq (.arrow i_am_that_i_am_protocol_l8 i_am_that_i_am_protocol_s8 i_am_that_i_am_protocol_s9) (.arrow i_am_that_i_am_protocol_l9 i_am_that_i_am_protocol_s9 i_am_that_i_am_protocol_s10))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def i_am_that_i_am_protocol_true_arm : IGProtocol i_am_that_i_am_protocol_s0 i_am_that_i_am_protocol_s10 :=
  (i_am_that_i_am_protocol_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def i_am_that_i_am_protocol_tier : OuroboricityTier := TierFunctor.obj i_am_that_i_am_protocol_s0
#eval i_am_that_i_am_protocol_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem i_am_that_i_am_protocol_frobenius :
    igFrobeniusAlg.mul i_am_that_i_am_protocol_s0 i_am_that_i_am_protocol_s0 = i_am_that_i_am_protocol_s0 :=
  igFrobAlg_self_fusion i_am_that_i_am_protocol_s0
