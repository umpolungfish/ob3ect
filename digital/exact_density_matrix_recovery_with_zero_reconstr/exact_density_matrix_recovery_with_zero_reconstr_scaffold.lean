-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → AFWD → EVALT → CLINK → IMSCRIB → IFIX → FFUSE → AFWD → EVALF → ENGAGR → AREV → CLINK → IMSCRIB → FFUSE → FSPLIT → EVALT → AFWD → IFIX → FFUSE → FSPLIT → AFWD → EVALT → CLINK → IMSCRIB → FFUSE → AREV → EVALF → FFUSE
-- Class: Exact density matrix recovery with zero reconstruction entropy (T-arm anchor)
-- Fingerprint: sig=(14,8,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=30
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 8), (16, 20), (21, 26)]

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
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [9] AFWD      rel    := 𐑾               𐑙 → 𐑖  | forward morphism — bidirectional arrow
--   [10] EVALF     chir   := 𐑖               𐑾 → 𐑳  | evaluate-false — chirality check
--   [11] ENGAGR    stoi   := 𐑳               𐑖 → 𐑗  | engage paradox — B-state, both arms
--   [12] AREV      pol    := 𐑗               𐑳 → 𐑱  | reverse morphism — parity flip
--   [13] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑙  | identity — self-imscription
--   [15] FFUSE     stoi   := 𐑙               𐑠 → 𐑚  | fuse μ — assembly mode
--   [16] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [19] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [21] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [22] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [23] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [24] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [25] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [26] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [27] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [28] EVALF     chir   := 𐑖               𐑗 → 𐑙  | evaluate-false — chirality check
--   [29] FFUSE     stoi   := 𐑙               𐑖 → 𐑼  | fuse μ — assembly mode

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def exact_density_matrix_recovery_with_zero_9d7479_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def exact_density_matrix_recovery_with_zero_9d7479_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def exact_density_matrix_recovery_with_zero_9d7479_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l22 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def exact_density_matrix_recovery_with_zero_9d7479_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def exact_density_matrix_recovery_with_zero_9d7479_protocol : IGProtocol exact_density_matrix_recovery_with_zero_9d7479_s0 exact_density_matrix_recovery_with_zero_9d7479_s29 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct exact_density_matrix_recovery_with_zero_9d7479_s8 exact_density_matrix_recovery_with_zero_9d7479_s8 = exact_density_matrix_recovery_with_zero_9d7479_s8 (idempotent)
  (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l0 exact_density_matrix_recovery_with_zero_9d7479_s0 exact_density_matrix_recovery_with_zero_9d7479_s1) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l1 exact_density_matrix_recovery_with_zero_9d7479_s1 exact_density_matrix_recovery_with_zero_9d7479_s2) (.seq (.prod (.arrow exact_density_matrix_recovery_with_zero_9d7479_l2 exact_density_matrix_recovery_with_zero_9d7479_s2 exact_density_matrix_recovery_with_zero_9d7479_s8) (.arrow exact_density_matrix_recovery_with_zero_9d7479_l2 exact_density_matrix_recovery_with_zero_9d7479_s2 exact_density_matrix_recovery_with_zero_9d7479_s8)) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l8 exact_density_matrix_recovery_with_zero_9d7479_s8 exact_density_matrix_recovery_with_zero_9d7479_s8) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l8 exact_density_matrix_recovery_with_zero_9d7479_s8 exact_density_matrix_recovery_with_zero_9d7479_s9) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l9 exact_density_matrix_recovery_with_zero_9d7479_s9 exact_density_matrix_recovery_with_zero_9d7479_s10) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l10 exact_density_matrix_recovery_with_zero_9d7479_s10 exact_density_matrix_recovery_with_zero_9d7479_s11) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l11 exact_density_matrix_recovery_with_zero_9d7479_s11 exact_density_matrix_recovery_with_zero_9d7479_s12) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l12 exact_density_matrix_recovery_with_zero_9d7479_s12 exact_density_matrix_recovery_with_zero_9d7479_s13) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l13 exact_density_matrix_recovery_with_zero_9d7479_s13 exact_density_matrix_recovery_with_zero_9d7479_s14) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l14 exact_density_matrix_recovery_with_zero_9d7479_s14 exact_density_matrix_recovery_with_zero_9d7479_s15) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l15 exact_density_matrix_recovery_with_zero_9d7479_s15 exact_density_matrix_recovery_with_zero_9d7479_s16) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l16 exact_density_matrix_recovery_with_zero_9d7479_s16 exact_density_matrix_recovery_with_zero_9d7479_s17) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l17 exact_density_matrix_recovery_with_zero_9d7479_s17 exact_density_matrix_recovery_with_zero_9d7479_s18) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l18 exact_density_matrix_recovery_with_zero_9d7479_s18 exact_density_matrix_recovery_with_zero_9d7479_s19) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l19 exact_density_matrix_recovery_with_zero_9d7479_s19 exact_density_matrix_recovery_with_zero_9d7479_s20) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l20 exact_density_matrix_recovery_with_zero_9d7479_s20 exact_density_matrix_recovery_with_zero_9d7479_s21) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l21 exact_density_matrix_recovery_with_zero_9d7479_s21 exact_density_matrix_recovery_with_zero_9d7479_s22) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l22 exact_density_matrix_recovery_with_zero_9d7479_s22 exact_density_matrix_recovery_with_zero_9d7479_s23) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l23 exact_density_matrix_recovery_with_zero_9d7479_s23 exact_density_matrix_recovery_with_zero_9d7479_s24) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l24 exact_density_matrix_recovery_with_zero_9d7479_s24 exact_density_matrix_recovery_with_zero_9d7479_s25) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l25 exact_density_matrix_recovery_with_zero_9d7479_s25 exact_density_matrix_recovery_with_zero_9d7479_s26) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l26 exact_density_matrix_recovery_with_zero_9d7479_s26 exact_density_matrix_recovery_with_zero_9d7479_s27) (.seq (.arrow exact_density_matrix_recovery_with_zero_9d7479_l27 exact_density_matrix_recovery_with_zero_9d7479_s27 exact_density_matrix_recovery_with_zero_9d7479_s28) (.arrow exact_density_matrix_recovery_with_zero_9d7479_l28 exact_density_matrix_recovery_with_zero_9d7479_s28 exact_density_matrix_recovery_with_zero_9d7479_s29)))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def exact_density_matrix_recovery_with_zero_9d7479_true_arm : IGProtocol exact_density_matrix_recovery_with_zero_9d7479_s0 exact_density_matrix_recovery_with_zero_9d7479_s29 :=
  (exact_density_matrix_recovery_with_zero_9d7479_protocol).restrictToEVALT

-- false arm
noncomputable def exact_density_matrix_recovery_with_zero_9d7479_false_arm : IGProtocol exact_density_matrix_recovery_with_zero_9d7479_s0 exact_density_matrix_recovery_with_zero_9d7479_s29 :=
  (exact_density_matrix_recovery_with_zero_9d7479_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def exact_density_matrix_recovery_with_zero_9d7479_tier : OuroboricityTier := TierFunctor.obj exact_density_matrix_recovery_with_zero_9d7479_s0
#eval exact_density_matrix_recovery_with_zero_9d7479_tier  -- the Grammar's own verdict on its tier
