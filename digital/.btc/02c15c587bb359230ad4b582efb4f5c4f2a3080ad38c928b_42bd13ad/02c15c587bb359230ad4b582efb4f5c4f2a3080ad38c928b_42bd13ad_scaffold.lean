-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: 02c15c587bb359230ad4b582efb4f5c4f2a3080ad38c928b9fa2fa7919ff1b27c4
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(2, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [10] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [11] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_protocol : IGProtocol 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 = 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 (idempotent)
  (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s1) (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l1 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s1 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s2) (.seq (.prod (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l2 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s2 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8) (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l2 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s2 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8)) (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l8 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8) (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l8 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s8 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s9) (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l9 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s9 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s10) (.seq (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l10 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s10 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s11) (.arrow 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_l11 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s11 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_true_arm : IGProtocol 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12 :=
  (02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_protocol).restrictToEVALT

-- false arm
noncomputable def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_false_arm : IGProtocol 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12 :=
  (02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_tier_ground : OuroboricityTier := TierFunctor.obj 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0
def 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_tier : OuroboricityTier := TierFunctor.obj 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s12
#eval 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_tier_ground  -- tier of the ground (pre-transformation)
#eval 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_frobenius :
    igFrobeniusAlg.mul 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 = 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0 :=
  igFrobAlg_self_fusion 02c15c587bb359230ad4b582efb4f5c4f2a3080a_42bd13_s0
