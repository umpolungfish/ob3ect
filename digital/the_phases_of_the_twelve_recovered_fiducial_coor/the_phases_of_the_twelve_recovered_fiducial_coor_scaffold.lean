-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → AREV → EVALF → EVALT → ENGAGR → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: the phases of the twelve recovered fiducial coordinates become identified roots of unity by pinning the cyclotomic conductor n and PSLQ-fitting each coordinate against the basis of zeta powers times the degree-8 radical basis
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
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_phases_of_the_twelve_recovered_bc5f1c_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_phases_of_the_twelve_recovered_bc5f1c_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_phases_of_the_twelve_recovered_bc5f1c_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_phases_of_the_twelve_recovered_bc5f1c_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_phases_of_the_twelve_recovered_bc5f1c_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_phases_of_the_twelve_recovered_bc5f1c_protocol : IGProtocol the_phases_of_the_twelve_recovered_bc5f1c_s0 the_phases_of_the_twelve_recovered_bc5f1c_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_phases_of_the_twelve_recovered_bc5f1c_s7 the_phases_of_the_twelve_recovered_bc5f1c_s7 = the_phases_of_the_twelve_recovered_bc5f1c_s7 (idempotent)
  (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l0 the_phases_of_the_twelve_recovered_bc5f1c_s0 the_phases_of_the_twelve_recovered_bc5f1c_s1) (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l1 the_phases_of_the_twelve_recovered_bc5f1c_s1 the_phases_of_the_twelve_recovered_bc5f1c_s2) (.seq (.prod (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l2 the_phases_of_the_twelve_recovered_bc5f1c_s2 the_phases_of_the_twelve_recovered_bc5f1c_s7) (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l2 the_phases_of_the_twelve_recovered_bc5f1c_s2 the_phases_of_the_twelve_recovered_bc5f1c_s7)) (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l7 the_phases_of_the_twelve_recovered_bc5f1c_s7 the_phases_of_the_twelve_recovered_bc5f1c_s7) (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l7 the_phases_of_the_twelve_recovered_bc5f1c_s7 the_phases_of_the_twelve_recovered_bc5f1c_s8) (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l8 the_phases_of_the_twelve_recovered_bc5f1c_s8 the_phases_of_the_twelve_recovered_bc5f1c_s9) (.seq (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l9 the_phases_of_the_twelve_recovered_bc5f1c_s9 the_phases_of_the_twelve_recovered_bc5f1c_s10) (.arrow the_phases_of_the_twelve_recovered_bc5f1c_l10 the_phases_of_the_twelve_recovered_bc5f1c_s10 the_phases_of_the_twelve_recovered_bc5f1c_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_phases_of_the_twelve_recovered_bc5f1c_true_arm : IGProtocol the_phases_of_the_twelve_recovered_bc5f1c_s0 the_phases_of_the_twelve_recovered_bc5f1c_s11 :=
  (the_phases_of_the_twelve_recovered_bc5f1c_protocol).restrictToEVALT

-- false arm
noncomputable def the_phases_of_the_twelve_recovered_bc5f1c_false_arm : IGProtocol the_phases_of_the_twelve_recovered_bc5f1c_s0 the_phases_of_the_twelve_recovered_bc5f1c_s11 :=
  (the_phases_of_the_twelve_recovered_bc5f1c_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_phases_of_the_twelve_recovered_bc5f1c_tier : OuroboricityTier := TierFunctor.obj the_phases_of_the_twelve_recovered_bc5f1c_s0
#eval the_phases_of_the_twelve_recovered_bc5f1c_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_phases_of_the_twelve_recovered_bc5f1c_frobenius :
    igFrobeniusAlg.mul the_phases_of_the_twelve_recovered_bc5f1c_s0 the_phases_of_the_twelve_recovered_bc5f1c_s0 = the_phases_of_the_twelve_recovered_bc5f1c_s0 :=
  igFrobAlg_self_fusion the_phases_of_the_twelve_recovered_bc5f1c_s0
