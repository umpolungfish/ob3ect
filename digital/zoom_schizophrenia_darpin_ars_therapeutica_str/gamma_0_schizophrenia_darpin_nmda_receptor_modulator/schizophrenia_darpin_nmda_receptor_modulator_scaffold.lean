-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → FFUSE → AREV → IFIX
-- Class: Schizophrenia DARPin NMDA receptor modulator
-- Fingerprint: sig=(6,2,1,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=10
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑭  | reverse morphism — parity flip
--   [9] IFIX      prot   := 𐑭               𐑗 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def schizophrenia_darpin_nmda_receptor_06d88b_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def schizophrenia_darpin_nmda_receptor_06d88b_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def schizophrenia_darpin_nmda_receptor_06d88b_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def schizophrenia_darpin_nmda_receptor_06d88b_protocol : IGProtocol schizophrenia_darpin_nmda_receptor_06d88b_s0 schizophrenia_darpin_nmda_receptor_06d88b_s9 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct schizophrenia_darpin_nmda_receptor_06d88b_s7 schizophrenia_darpin_nmda_receptor_06d88b_s7 = schizophrenia_darpin_nmda_receptor_06d88b_s7 (idempotent)
  (.seq (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l0 schizophrenia_darpin_nmda_receptor_06d88b_s0 schizophrenia_darpin_nmda_receptor_06d88b_s1) (.seq (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l1 schizophrenia_darpin_nmda_receptor_06d88b_s1 schizophrenia_darpin_nmda_receptor_06d88b_s2) (.seq (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l2 schizophrenia_darpin_nmda_receptor_06d88b_s2 schizophrenia_darpin_nmda_receptor_06d88b_s3) (.seq (.prod (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l3 schizophrenia_darpin_nmda_receptor_06d88b_s3 schizophrenia_darpin_nmda_receptor_06d88b_s7) (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l3 schizophrenia_darpin_nmda_receptor_06d88b_s3 schizophrenia_darpin_nmda_receptor_06d88b_s7)) (.seq (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l7 schizophrenia_darpin_nmda_receptor_06d88b_s7 schizophrenia_darpin_nmda_receptor_06d88b_s7) (.seq (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l7 schizophrenia_darpin_nmda_receptor_06d88b_s7 schizophrenia_darpin_nmda_receptor_06d88b_s8) (.arrow schizophrenia_darpin_nmda_receptor_06d88b_l8 schizophrenia_darpin_nmda_receptor_06d88b_s8 schizophrenia_darpin_nmda_receptor_06d88b_s9)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def schizophrenia_darpin_nmda_receptor_06d88b_true_arm : IGProtocol schizophrenia_darpin_nmda_receptor_06d88b_s0 schizophrenia_darpin_nmda_receptor_06d88b_s9 :=
  (schizophrenia_darpin_nmda_receptor_06d88b_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def schizophrenia_darpin_nmda_receptor_06d88b_tier : OuroboricityTier := TierFunctor.obj schizophrenia_darpin_nmda_receptor_06d88b_s0
#eval schizophrenia_darpin_nmda_receptor_06d88b_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem schizophrenia_darpin_nmda_receptor_06d88b_frobenius :
    igFrobeniusAlg.mul schizophrenia_darpin_nmda_receptor_06d88b_s0 schizophrenia_darpin_nmda_receptor_06d88b_s0 = schizophrenia_darpin_nmda_receptor_06d88b_s0 :=
  igFrobAlg_self_fusion schizophrenia_darpin_nmda_receptor_06d88b_s0
