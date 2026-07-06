-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → CLINK → ENGAGR → IFIX → TANCH
-- Class: Wormwood-Sage Dual-Link SIC-POVM
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [10] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def wormwood_sage_dual_link_sic_povm_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def wormwood_sage_dual_link_sic_povm_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def wormwood_sage_dual_link_sic_povm_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def wormwood_sage_dual_link_sic_povm_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def wormwood_sage_dual_link_sic_povm_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def wormwood_sage_dual_link_sic_povm_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def wormwood_sage_dual_link_sic_povm_protocol : IGProtocol wormwood_sage_dual_link_sic_povm_s0 wormwood_sage_dual_link_sic_povm_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct wormwood_sage_dual_link_sic_povm_s7 wormwood_sage_dual_link_sic_povm_s7 = wormwood_sage_dual_link_sic_povm_s7 (idempotent)
  (.seq (.arrow wormwood_sage_dual_link_sic_povm_l0 wormwood_sage_dual_link_sic_povm_s0 wormwood_sage_dual_link_sic_povm_s1) (.seq (.arrow wormwood_sage_dual_link_sic_povm_l1 wormwood_sage_dual_link_sic_povm_s1 wormwood_sage_dual_link_sic_povm_s2) (.seq (.prod (.arrow wormwood_sage_dual_link_sic_povm_l2 wormwood_sage_dual_link_sic_povm_s2 wormwood_sage_dual_link_sic_povm_s7) (.arrow wormwood_sage_dual_link_sic_povm_l2 wormwood_sage_dual_link_sic_povm_s2 wormwood_sage_dual_link_sic_povm_s7)) (.seq (.arrow wormwood_sage_dual_link_sic_povm_l7 wormwood_sage_dual_link_sic_povm_s7 wormwood_sage_dual_link_sic_povm_s7) (.seq (.arrow wormwood_sage_dual_link_sic_povm_l7 wormwood_sage_dual_link_sic_povm_s7 wormwood_sage_dual_link_sic_povm_s8) (.seq (.arrow wormwood_sage_dual_link_sic_povm_l8 wormwood_sage_dual_link_sic_povm_s8 wormwood_sage_dual_link_sic_povm_s9) (.seq (.arrow wormwood_sage_dual_link_sic_povm_l9 wormwood_sage_dual_link_sic_povm_s9 wormwood_sage_dual_link_sic_povm_s10) (.arrow wormwood_sage_dual_link_sic_povm_l10 wormwood_sage_dual_link_sic_povm_s10 wormwood_sage_dual_link_sic_povm_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def wormwood_sage_dual_link_sic_povm_true_arm : IGProtocol wormwood_sage_dual_link_sic_povm_s0 wormwood_sage_dual_link_sic_povm_s11 :=
  (wormwood_sage_dual_link_sic_povm_protocol).restrictToEVALT

-- false arm
noncomputable def wormwood_sage_dual_link_sic_povm_false_arm : IGProtocol wormwood_sage_dual_link_sic_povm_s0 wormwood_sage_dual_link_sic_povm_s11 :=
  (wormwood_sage_dual_link_sic_povm_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def wormwood_sage_dual_link_sic_povm_tier : OuroboricityTier := TierFunctor.obj wormwood_sage_dual_link_sic_povm_s0
#eval wormwood_sage_dual_link_sic_povm_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem wormwood_sage_dual_link_sic_povm_frobenius :
    igFrobeniusAlg.mul wormwood_sage_dual_link_sic_povm_s0 wormwood_sage_dual_link_sic_povm_s0 = wormwood_sage_dual_link_sic_povm_s0 :=
  igFrobAlg_self_fusion wormwood_sage_dual_link_sic_povm_s0
