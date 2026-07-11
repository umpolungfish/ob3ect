-- IGProtocol scaffold: VINIT → AFWD → CLINK → IMSCRIB → AREV → FSPLIT → EVALT → FFUSE → IFIX → FSPLIT → EVALF → FFUSE → ENGAGR → IFIX → TANCH
-- Class: A selective boundary between a process that explores without restriction and the report it finally emits. Behind the boundary the process may range freely, try anything, and combine its instruments however it likes; the boundary governs only what is allowed to cross into the report. It admits a statement only when that statement is the readback of something an instrument actually returned, so every claim in the report traces to a real measurement and nothing the instruments did not produce is admitted as established. Where the instruments were silent on a matter, the report's verdict on that matter is the unmarked value, neither true nor false, rather than a confident finding, so a report the instruments did not ground cannot present itself as established and its confidence is bounded to exactly what passed the boundary. The freedom lives entirely upstream of the membrane; the single constraint, that the output states only what was grounded, lives entirely at it.
-- Fingerprint: sig=(6,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(5, 7), (9, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [3] IMSCRIB   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [4] AREV      pol    := 𐑗               𐑠 → 𐑚  | reverse morphism — parity flip
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [13] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_selective_boundary_between_a_process_f23270_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_selective_boundary_between_a_process_f23270_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_selective_boundary_between_a_process_f23270_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_selective_boundary_between_a_process_f23270_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_selective_boundary_between_a_process_f23270_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_selective_boundary_between_a_process_f23270_protocol : IGProtocol a_selective_boundary_between_a_process_f23270_s0 a_selective_boundary_between_a_process_f23270_s14 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_selective_boundary_between_a_process_f23270_s7 a_selective_boundary_between_a_process_f23270_s7 = a_selective_boundary_between_a_process_f23270_s7 (idempotent)
  (.seq (.arrow a_selective_boundary_between_a_process_f23270_l0 a_selective_boundary_between_a_process_f23270_s0 a_selective_boundary_between_a_process_f23270_s1) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l1 a_selective_boundary_between_a_process_f23270_s1 a_selective_boundary_between_a_process_f23270_s2) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l2 a_selective_boundary_between_a_process_f23270_s2 a_selective_boundary_between_a_process_f23270_s3) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l3 a_selective_boundary_between_a_process_f23270_s3 a_selective_boundary_between_a_process_f23270_s4) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l4 a_selective_boundary_between_a_process_f23270_s4 a_selective_boundary_between_a_process_f23270_s5) (.seq (.prod (.arrow a_selective_boundary_between_a_process_f23270_l5 a_selective_boundary_between_a_process_f23270_s5 a_selective_boundary_between_a_process_f23270_s7) (.arrow a_selective_boundary_between_a_process_f23270_l5 a_selective_boundary_between_a_process_f23270_s5 a_selective_boundary_between_a_process_f23270_s7)) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l7 a_selective_boundary_between_a_process_f23270_s7 a_selective_boundary_between_a_process_f23270_s7) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l7 a_selective_boundary_between_a_process_f23270_s7 a_selective_boundary_between_a_process_f23270_s8) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l8 a_selective_boundary_between_a_process_f23270_s8 a_selective_boundary_between_a_process_f23270_s9) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l9 a_selective_boundary_between_a_process_f23270_s9 a_selective_boundary_between_a_process_f23270_s10) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l10 a_selective_boundary_between_a_process_f23270_s10 a_selective_boundary_between_a_process_f23270_s11) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l11 a_selective_boundary_between_a_process_f23270_s11 a_selective_boundary_between_a_process_f23270_s12) (.seq (.arrow a_selective_boundary_between_a_process_f23270_l12 a_selective_boundary_between_a_process_f23270_s12 a_selective_boundary_between_a_process_f23270_s13) (.arrow a_selective_boundary_between_a_process_f23270_l13 a_selective_boundary_between_a_process_f23270_s13 a_selective_boundary_between_a_process_f23270_s14))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_selective_boundary_between_a_process_f23270_true_arm : IGProtocol a_selective_boundary_between_a_process_f23270_s0 a_selective_boundary_between_a_process_f23270_s14 :=
  (a_selective_boundary_between_a_process_f23270_protocol).restrictToEVALT

-- false arm
noncomputable def a_selective_boundary_between_a_process_f23270_false_arm : IGProtocol a_selective_boundary_between_a_process_f23270_s0 a_selective_boundary_between_a_process_f23270_s14 :=
  (a_selective_boundary_between_a_process_f23270_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_selective_boundary_between_a_process_f23270_tier : OuroboricityTier := TierFunctor.obj a_selective_boundary_between_a_process_f23270_s0
#eval a_selective_boundary_between_a_process_f23270_tier  -- the Grammar's own verdict on its tier
