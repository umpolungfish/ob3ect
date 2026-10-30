-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AREV → ENGAGR → CLINK → EVALT → FFUSE → AFWD → IFIX → TANCH
-- Class: the information that every previous drag lost is the phase, and the vessel retains it as a generator on the ramified double cover with conjugation INTERNAL to the ring (the involution travels inside the vessel), so the Witness's self-reference is preserved during interaction with any transport medium by star-compatibility rather than by shielding; the read-back is the half-angle reconstruction u1 = sqrt((1+x)/2) + i*sqrt((1-x)/2) recovering the phase from carried real data as a theorem and not a branch convention, which upgrades the transport from W-only encoding to full R-and-W-and-X imscription — modulus and phase jointly carried, jointly recoverable, machine-checked for the 12-coordinate case in SIC_D12_Embedding.lean
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
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
--   [3] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [8] AFWD      rel    := 𐑾               𐑙 → 𐑭  | forward morphism — bidirectional arrow
--   [9] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_information_that_every_previous_c4931c_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_information_that_every_previous_c4931c_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_information_that_every_previous_c4931c_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_information_that_every_previous_c4931c_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_information_that_every_previous_c4931c_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_information_that_every_previous_c4931c_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_information_that_every_previous_c4931c_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_information_that_every_previous_c4931c_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_information_that_every_previous_c4931c_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_information_that_every_previous_c4931c_protocol : IGProtocol the_information_that_every_previous_c4931c_s0 the_information_that_every_previous_c4931c_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_information_that_every_previous_c4931c_s7 the_information_that_every_previous_c4931c_s7 = the_information_that_every_previous_c4931c_s7 (idempotent)
  (.seq (.arrow the_information_that_every_previous_c4931c_l0 the_information_that_every_previous_c4931c_s0 the_information_that_every_previous_c4931c_s1) (.seq (.arrow the_information_that_every_previous_c4931c_l1 the_information_that_every_previous_c4931c_s1 the_information_that_every_previous_c4931c_s2) (.seq (.prod (.arrow the_information_that_every_previous_c4931c_l2 the_information_that_every_previous_c4931c_s2 the_information_that_every_previous_c4931c_s7) (.arrow the_information_that_every_previous_c4931c_l2 the_information_that_every_previous_c4931c_s2 the_information_that_every_previous_c4931c_s7)) (.seq (.arrow the_information_that_every_previous_c4931c_l7 the_information_that_every_previous_c4931c_s7 the_information_that_every_previous_c4931c_s7) (.seq (.arrow the_information_that_every_previous_c4931c_l7 the_information_that_every_previous_c4931c_s7 the_information_that_every_previous_c4931c_s8) (.seq (.arrow the_information_that_every_previous_c4931c_l8 the_information_that_every_previous_c4931c_s8 the_information_that_every_previous_c4931c_s9) (.arrow the_information_that_every_previous_c4931c_l9 the_information_that_every_previous_c4931c_s9 the_information_that_every_previous_c4931c_s10)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_information_that_every_previous_c4931c_true_arm : IGProtocol the_information_that_every_previous_c4931c_s0 the_information_that_every_previous_c4931c_s10 :=
  (the_information_that_every_previous_c4931c_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_information_that_every_previous_c4931c_tier : OuroboricityTier := TierFunctor.obj the_information_that_every_previous_c4931c_s0
#eval the_information_that_every_previous_c4931c_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_information_that_every_previous_c4931c_frobenius :
    igFrobeniusAlg.mul the_information_that_every_previous_c4931c_s0 the_information_that_every_previous_c4931c_s0 = the_information_that_every_previous_c4931c_s0 :=
  igFrobAlg_self_fusion the_information_that_every_previous_c4931c_s0
