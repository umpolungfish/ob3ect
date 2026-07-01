-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → AREV → EVALT → FFUSE → FSPLIT → AREV → EVALF → FFUSE → FSPLIT → AREV → ENGAGR → FFUSE → CLINK → IMSCRIB → IFIX
-- Class: Optimal Tarot Spread and Procedure
-- Fingerprint: sig=(8,6,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 6), (7, 10), (11, 14)]

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
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [15] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [16] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [17] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def optimal_tarot_spread_and_procedure_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def optimal_tarot_spread_and_procedure_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def optimal_tarot_spread_and_procedure_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def optimal_tarot_spread_and_procedure_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def optimal_tarot_spread_and_procedure_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def optimal_tarot_spread_and_procedure_protocol : IGProtocol optimal_tarot_spread_and_procedure_s0 optimal_tarot_spread_and_procedure_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct optimal_tarot_spread_and_procedure_s6 optimal_tarot_spread_and_procedure_s6 = optimal_tarot_spread_and_procedure_s6 (idempotent)
  (.seq (.arrow optimal_tarot_spread_and_procedure_l0 optimal_tarot_spread_and_procedure_s0 optimal_tarot_spread_and_procedure_s1) (.seq (.arrow optimal_tarot_spread_and_procedure_l1 optimal_tarot_spread_and_procedure_s1 optimal_tarot_spread_and_procedure_s2) (.seq (.arrow optimal_tarot_spread_and_procedure_l2 optimal_tarot_spread_and_procedure_s2 optimal_tarot_spread_and_procedure_s3) (.seq (.prod (.arrow optimal_tarot_spread_and_procedure_l3 optimal_tarot_spread_and_procedure_s3 optimal_tarot_spread_and_procedure_s6) (.arrow optimal_tarot_spread_and_procedure_l3 optimal_tarot_spread_and_procedure_s3 optimal_tarot_spread_and_procedure_s6)) (.seq (.arrow optimal_tarot_spread_and_procedure_l6 optimal_tarot_spread_and_procedure_s6 optimal_tarot_spread_and_procedure_s6) (.seq (.arrow optimal_tarot_spread_and_procedure_l6 optimal_tarot_spread_and_procedure_s6 optimal_tarot_spread_and_procedure_s7) (.seq (.arrow optimal_tarot_spread_and_procedure_l7 optimal_tarot_spread_and_procedure_s7 optimal_tarot_spread_and_procedure_s8) (.seq (.arrow optimal_tarot_spread_and_procedure_l8 optimal_tarot_spread_and_procedure_s8 optimal_tarot_spread_and_procedure_s9) (.seq (.arrow optimal_tarot_spread_and_procedure_l9 optimal_tarot_spread_and_procedure_s9 optimal_tarot_spread_and_procedure_s10) (.seq (.arrow optimal_tarot_spread_and_procedure_l10 optimal_tarot_spread_and_procedure_s10 optimal_tarot_spread_and_procedure_s11) (.seq (.arrow optimal_tarot_spread_and_procedure_l11 optimal_tarot_spread_and_procedure_s11 optimal_tarot_spread_and_procedure_s12) (.seq (.arrow optimal_tarot_spread_and_procedure_l12 optimal_tarot_spread_and_procedure_s12 optimal_tarot_spread_and_procedure_s13) (.seq (.arrow optimal_tarot_spread_and_procedure_l13 optimal_tarot_spread_and_procedure_s13 optimal_tarot_spread_and_procedure_s14) (.seq (.arrow optimal_tarot_spread_and_procedure_l14 optimal_tarot_spread_and_procedure_s14 optimal_tarot_spread_and_procedure_s15) (.seq (.arrow optimal_tarot_spread_and_procedure_l15 optimal_tarot_spread_and_procedure_s15 optimal_tarot_spread_and_procedure_s16) (.arrow optimal_tarot_spread_and_procedure_l16 optimal_tarot_spread_and_procedure_s16 optimal_tarot_spread_and_procedure_s17))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def optimal_tarot_spread_and_procedure_true_arm : IGProtocol optimal_tarot_spread_and_procedure_s0 optimal_tarot_spread_and_procedure_s17 :=
  (optimal_tarot_spread_and_procedure_protocol).restrictToEVALT

-- false arm
noncomputable def optimal_tarot_spread_and_procedure_false_arm : IGProtocol optimal_tarot_spread_and_procedure_s0 optimal_tarot_spread_and_procedure_s17 :=
  (optimal_tarot_spread_and_procedure_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def optimal_tarot_spread_and_procedure_tier : OuroboricityTier := TierFunctor.obj optimal_tarot_spread_and_procedure_s0
#eval optimal_tarot_spread_and_procedure_tier  -- the Grammar's own verdict on its tier
