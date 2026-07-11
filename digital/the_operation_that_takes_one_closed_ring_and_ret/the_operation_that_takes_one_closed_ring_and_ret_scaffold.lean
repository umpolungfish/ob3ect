-- IGProtocol scaffold: VINIT → IMSCRIB → AREV → FSPLIT → EVALT → EVALF → AFWD → FFUSE → EVALT → CLINK → IFIX → TANCH
-- Class: The operation that takes one closed ring and returns two closed rings by cutting the loop at a chosen junction and re-closing each arc into its own smaller ring — the exact reverse of welding two rings into one, the fission of a single cyclic material into a pair whose two spectra together account for the parent's dominant modes.
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=12
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑗  | identity — self-imscription
--   [2] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [8] EVALT     crit   := ⊙               𐑙 → 𐑱  | evaluate-true — criticality gate open
--   [9] CLINK     fid    := 𐑱               ⊙ → 𐑭  | composition — regime coherence
--   [10] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_operation_that_takes_one_closed_109d12_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_operation_that_takes_one_closed_109d12_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_operation_that_takes_one_closed_109d12_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_operation_that_takes_one_closed_109d12_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_operation_that_takes_one_closed_109d12_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_operation_that_takes_one_closed_109d12_protocol : IGProtocol the_operation_that_takes_one_closed_109d12_s0 the_operation_that_takes_one_closed_109d12_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_operation_that_takes_one_closed_109d12_s7 the_operation_that_takes_one_closed_109d12_s7 = the_operation_that_takes_one_closed_109d12_s7 (idempotent)
  (.seq (.arrow the_operation_that_takes_one_closed_109d12_l0 the_operation_that_takes_one_closed_109d12_s0 the_operation_that_takes_one_closed_109d12_s1) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l1 the_operation_that_takes_one_closed_109d12_s1 the_operation_that_takes_one_closed_109d12_s2) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l2 the_operation_that_takes_one_closed_109d12_s2 the_operation_that_takes_one_closed_109d12_s3) (.seq (.prod (.arrow the_operation_that_takes_one_closed_109d12_l3 the_operation_that_takes_one_closed_109d12_s3 the_operation_that_takes_one_closed_109d12_s7) (.arrow the_operation_that_takes_one_closed_109d12_l3 the_operation_that_takes_one_closed_109d12_s3 the_operation_that_takes_one_closed_109d12_s7)) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l7 the_operation_that_takes_one_closed_109d12_s7 the_operation_that_takes_one_closed_109d12_s7) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l7 the_operation_that_takes_one_closed_109d12_s7 the_operation_that_takes_one_closed_109d12_s8) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l8 the_operation_that_takes_one_closed_109d12_s8 the_operation_that_takes_one_closed_109d12_s9) (.seq (.arrow the_operation_that_takes_one_closed_109d12_l9 the_operation_that_takes_one_closed_109d12_s9 the_operation_that_takes_one_closed_109d12_s10) (.arrow the_operation_that_takes_one_closed_109d12_l10 the_operation_that_takes_one_closed_109d12_s10 the_operation_that_takes_one_closed_109d12_s11)))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_operation_that_takes_one_closed_109d12_true_arm : IGProtocol the_operation_that_takes_one_closed_109d12_s0 the_operation_that_takes_one_closed_109d12_s11 :=
  (the_operation_that_takes_one_closed_109d12_protocol).restrictToEVALT

-- false arm
noncomputable def the_operation_that_takes_one_closed_109d12_false_arm : IGProtocol the_operation_that_takes_one_closed_109d12_s0 the_operation_that_takes_one_closed_109d12_s11 :=
  (the_operation_that_takes_one_closed_109d12_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_operation_that_takes_one_closed_109d12_tier : OuroboricityTier := TierFunctor.obj the_operation_that_takes_one_closed_109d12_s0
#eval the_operation_that_takes_one_closed_109d12_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_operation_that_takes_one_closed_109d12_frobenius :
    igFrobeniusAlg.mul the_operation_that_takes_one_closed_109d12_s0 the_operation_that_takes_one_closed_109d12_s0 = the_operation_that_takes_one_closed_109d12_s0 :=
  igFrobAlg_self_fusion the_operation_that_takes_one_closed_109d12_s0
