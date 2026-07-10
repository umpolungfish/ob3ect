-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → FSPLIT → AREV → AREV → EVALF → CLINK → EVALT → AFWD → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: cut elimination in a sequent calculus proof
-- Fingerprint: sig=(9,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def cut_elimination_in_a_sequent_calculus_025500_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def cut_elimination_in_a_sequent_calculus_025500_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def cut_elimination_in_a_sequent_calculus_025500_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def cut_elimination_in_a_sequent_calculus_025500_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def cut_elimination_in_a_sequent_calculus_025500_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def cut_elimination_in_a_sequent_calculus_025500_protocol : IGProtocol cut_elimination_in_a_sequent_calculus_025500_s0 cut_elimination_in_a_sequent_calculus_025500_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct cut_elimination_in_a_sequent_calculus_025500_s10 cut_elimination_in_a_sequent_calculus_025500_s10 = cut_elimination_in_a_sequent_calculus_025500_s10 (idempotent)
  (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l0 cut_elimination_in_a_sequent_calculus_025500_s0 cut_elimination_in_a_sequent_calculus_025500_s1) (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l1 cut_elimination_in_a_sequent_calculus_025500_s1 cut_elimination_in_a_sequent_calculus_025500_s2) (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l2 cut_elimination_in_a_sequent_calculus_025500_s2 cut_elimination_in_a_sequent_calculus_025500_s3) (.seq (.prod (.arrow cut_elimination_in_a_sequent_calculus_025500_l3 cut_elimination_in_a_sequent_calculus_025500_s3 cut_elimination_in_a_sequent_calculus_025500_s10) (.arrow cut_elimination_in_a_sequent_calculus_025500_l3 cut_elimination_in_a_sequent_calculus_025500_s3 cut_elimination_in_a_sequent_calculus_025500_s10)) (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l10 cut_elimination_in_a_sequent_calculus_025500_s10 cut_elimination_in_a_sequent_calculus_025500_s10) (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l10 cut_elimination_in_a_sequent_calculus_025500_s10 cut_elimination_in_a_sequent_calculus_025500_s11) (.seq (.arrow cut_elimination_in_a_sequent_calculus_025500_l11 cut_elimination_in_a_sequent_calculus_025500_s11 cut_elimination_in_a_sequent_calculus_025500_s12) (.arrow cut_elimination_in_a_sequent_calculus_025500_l12 cut_elimination_in_a_sequent_calculus_025500_s12 cut_elimination_in_a_sequent_calculus_025500_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def cut_elimination_in_a_sequent_calculus_025500_true_arm : IGProtocol cut_elimination_in_a_sequent_calculus_025500_s0 cut_elimination_in_a_sequent_calculus_025500_s13 :=
  (cut_elimination_in_a_sequent_calculus_025500_protocol).restrictToEVALT

-- false arm
noncomputable def cut_elimination_in_a_sequent_calculus_025500_false_arm : IGProtocol cut_elimination_in_a_sequent_calculus_025500_s0 cut_elimination_in_a_sequent_calculus_025500_s13 :=
  (cut_elimination_in_a_sequent_calculus_025500_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def cut_elimination_in_a_sequent_calculus_025500_tier : OuroboricityTier := TierFunctor.obj cut_elimination_in_a_sequent_calculus_025500_s0
#eval cut_elimination_in_a_sequent_calculus_025500_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem cut_elimination_in_a_sequent_calculus_025500_frobenius :
    igFrobeniusAlg.mul cut_elimination_in_a_sequent_calculus_025500_s0 cut_elimination_in_a_sequent_calculus_025500_s0 = cut_elimination_in_a_sequent_calculus_025500_s0 :=
  igFrobAlg_self_fusion cut_elimination_in_a_sequent_calculus_025500_s0
