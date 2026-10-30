-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → TANCH → AREV → CLINK → IMSCRIB → FSPLIT → FFUSE → EVALT → EVALF → ENGAGR → IFIX → AFWD → CLINK → IMSCRIB → TANCH → AREV → FSPLIT → FFUSE → EVALT → IFIX
-- Class: neuronal_cells
-- Fingerprint: sig=(12,5,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(9, 10), (20, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               ⊙ → 𐑡  | forward morphism — bidirectional arrow
--   [5] TANCH     top    := 𐑡               𐑾 → 𐑗  | terminal object — connectivity boundary
--   [6] AREV      pol    := 𐑗               𐑡 → 𐑱  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [13] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [14] IFIX      prot   := 𐑭               𐑳 → 𐑾  | irreversible fixation — winding number
--   [15] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [16] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [17] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [18] TANCH     top    := 𐑡               𐑠 → 𐑗  | terminal object — connectivity boundary
--   [19] AREV      pol    := 𐑗               𐑡 → 𐑚  | reverse morphism — parity flip
--   [20] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [21] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [22] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [23] IFIX      prot   := 𐑭               ⊙ → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def neuronal_cells_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def neuronal_cells_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def neuronal_cells_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def neuronal_cells_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def neuronal_cells_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def neuronal_cells_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def neuronal_cells_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def neuronal_cells_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def neuronal_cells_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def neuronal_cells_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def neuronal_cells_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def neuronal_cells_protocol : IGProtocol neuronal_cells_s0 neuronal_cells_s23 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct neuronal_cells_s10 neuronal_cells_s10 = neuronal_cells_s10 (idempotent)
  (.seq (.arrow neuronal_cells_l0 neuronal_cells_s0 neuronal_cells_s1) (.seq (.arrow neuronal_cells_l1 neuronal_cells_s1 neuronal_cells_s2) (.seq (.arrow neuronal_cells_l2 neuronal_cells_s2 neuronal_cells_s3) (.seq (.arrow neuronal_cells_l3 neuronal_cells_s3 neuronal_cells_s4) (.seq (.arrow neuronal_cells_l4 neuronal_cells_s4 neuronal_cells_s5) (.seq (.arrow neuronal_cells_l5 neuronal_cells_s5 neuronal_cells_s6) (.seq (.arrow neuronal_cells_l6 neuronal_cells_s6 neuronal_cells_s7) (.seq (.arrow neuronal_cells_l7 neuronal_cells_s7 neuronal_cells_s8) (.seq (.arrow neuronal_cells_l8 neuronal_cells_s8 neuronal_cells_s9) (.seq (.prod (.arrow neuronal_cells_l9 neuronal_cells_s9 neuronal_cells_s10) (.arrow neuronal_cells_l9 neuronal_cells_s9 neuronal_cells_s10)) (.seq (.arrow neuronal_cells_l10 neuronal_cells_s10 neuronal_cells_s10) (.seq (.arrow neuronal_cells_l10 neuronal_cells_s10 neuronal_cells_s11) (.seq (.arrow neuronal_cells_l11 neuronal_cells_s11 neuronal_cells_s12) (.seq (.arrow neuronal_cells_l12 neuronal_cells_s12 neuronal_cells_s13) (.seq (.arrow neuronal_cells_l13 neuronal_cells_s13 neuronal_cells_s14) (.seq (.arrow neuronal_cells_l14 neuronal_cells_s14 neuronal_cells_s15) (.seq (.arrow neuronal_cells_l15 neuronal_cells_s15 neuronal_cells_s16) (.seq (.arrow neuronal_cells_l16 neuronal_cells_s16 neuronal_cells_s17) (.seq (.arrow neuronal_cells_l17 neuronal_cells_s17 neuronal_cells_s18) (.seq (.arrow neuronal_cells_l18 neuronal_cells_s18 neuronal_cells_s19) (.seq (.arrow neuronal_cells_l19 neuronal_cells_s19 neuronal_cells_s20) (.seq (.arrow neuronal_cells_l20 neuronal_cells_s20 neuronal_cells_s21) (.seq (.arrow neuronal_cells_l21 neuronal_cells_s21 neuronal_cells_s22) (.arrow neuronal_cells_l22 neuronal_cells_s22 neuronal_cells_s23))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def neuronal_cells_true_arm : IGProtocol neuronal_cells_s0 neuronal_cells_s23 :=
  (neuronal_cells_protocol).restrictToEVALT

-- false arm
noncomputable def neuronal_cells_false_arm : IGProtocol neuronal_cells_s0 neuronal_cells_s23 :=
  (neuronal_cells_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def neuronal_cells_tier : OuroboricityTier := TierFunctor.obj neuronal_cells_s0
#eval neuronal_cells_tier  -- the Grammar's own verdict on its tier
