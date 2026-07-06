-- IGProtocol scaffold: VINIT → AFWD → AREV → CLINK → TANCH → FSPLIT → EVALT → EVALF → FFUSE → IMSCRIB → ENGAGR → IFIX → IMSCRIB
-- Class: 5-way proof
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑗  | forward morphism — bidirectional arrow
--   [2] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [3] CLINK     fid    := 𐑱               𐑗 → 𐑡  | composition — regime coherence
--   [4] TANCH     top    := 𐑡               𐑱 → 𐑚  | terminal object — connectivity boundary
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [10] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [12] IMSCRIB   gram   := 𐑠               𐑭 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def 5_way_proof_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 5_way_proof_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 5_way_proof_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 5_way_proof_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def 5_way_proof_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def 5_way_proof_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def 5_way_proof_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def 5_way_proof_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 5_way_proof_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def 5_way_proof_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def 5_way_proof_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def 5_way_proof_protocol : IGProtocol 5_way_proof_s0 5_way_proof_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct 5_way_proof_s8 5_way_proof_s8 = 5_way_proof_s8 (idempotent)
  (.seq (.arrow 5_way_proof_l0 5_way_proof_s0 5_way_proof_s1) (.seq (.arrow 5_way_proof_l1 5_way_proof_s1 5_way_proof_s2) (.seq (.arrow 5_way_proof_l2 5_way_proof_s2 5_way_proof_s3) (.seq (.arrow 5_way_proof_l3 5_way_proof_s3 5_way_proof_s4) (.seq (.arrow 5_way_proof_l4 5_way_proof_s4 5_way_proof_s5) (.seq (.prod (.arrow 5_way_proof_l5 5_way_proof_s5 5_way_proof_s8) (.arrow 5_way_proof_l5 5_way_proof_s5 5_way_proof_s8)) (.seq (.arrow 5_way_proof_l8 5_way_proof_s8 5_way_proof_s8) (.seq (.arrow 5_way_proof_l8 5_way_proof_s8 5_way_proof_s9) (.seq (.arrow 5_way_proof_l9 5_way_proof_s9 5_way_proof_s10) (.seq (.arrow 5_way_proof_l10 5_way_proof_s10 5_way_proof_s11) (.arrow 5_way_proof_l11 5_way_proof_s11 5_way_proof_s12)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def 5_way_proof_true_arm : IGProtocol 5_way_proof_s0 5_way_proof_s12 :=
  (5_way_proof_protocol).restrictToEVALT

-- false arm
noncomputable def 5_way_proof_false_arm : IGProtocol 5_way_proof_s0 5_way_proof_s12 :=
  (5_way_proof_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def 5_way_proof_tier : OuroboricityTier := TierFunctor.obj 5_way_proof_s0
#eval 5_way_proof_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem 5_way_proof_frobenius :
    igFrobeniusAlg.mul 5_way_proof_s0 5_way_proof_s0 = 5_way_proof_s0 :=
  igFrobAlg_self_fusion 5_way_proof_s0
