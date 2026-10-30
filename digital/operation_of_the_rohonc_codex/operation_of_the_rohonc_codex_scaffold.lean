-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → FSPLIT → EVALT → AFWD → FSPLIT → EVALF → AREV → CLINK → FFUSE → ENGAGR → IMSCRIB → CLINK → IFIX → AFWD → FSPLIT → EVALT → FFUSE → IMSCRIB → CLINK → IFIX → AREV → EVALT → FFUSE → IMSCRIB → CLINK → IFIX → TANCH
-- Class: Operation of the Rohonc Codex
-- Fingerprint: sig=(16,6,5,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=30
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(7, 11), (17, 19), (4, 25)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [20] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [21] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [22] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [23] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [24] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [25] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [26] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [27] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [28] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [29] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def operation_of_the_rohonc_codex_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def operation_of_the_rohonc_codex_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def operation_of_the_rohonc_codex_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def operation_of_the_rohonc_codex_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_rohonc_codex_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_rohonc_codex_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_rohonc_codex_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def operation_of_the_rohonc_codex_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def operation_of_the_rohonc_codex_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def operation_of_the_rohonc_codex_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def operation_of_the_rohonc_codex_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def operation_of_the_rohonc_codex_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def operation_of_the_rohonc_codex_protocol : IGProtocol operation_of_the_rohonc_codex_s0 operation_of_the_rohonc_codex_s29 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct operation_of_the_rohonc_codex_s11 operation_of_the_rohonc_codex_s11 = operation_of_the_rohonc_codex_s11 (idempotent)
  (.seq (.arrow operation_of_the_rohonc_codex_l0 operation_of_the_rohonc_codex_s0 operation_of_the_rohonc_codex_s1) (.seq (.arrow operation_of_the_rohonc_codex_l1 operation_of_the_rohonc_codex_s1 operation_of_the_rohonc_codex_s2) (.seq (.arrow operation_of_the_rohonc_codex_l2 operation_of_the_rohonc_codex_s2 operation_of_the_rohonc_codex_s3) (.seq (.arrow operation_of_the_rohonc_codex_l3 operation_of_the_rohonc_codex_s3 operation_of_the_rohonc_codex_s4) (.seq (.prod (.arrow operation_of_the_rohonc_codex_l4 operation_of_the_rohonc_codex_s4 operation_of_the_rohonc_codex_s11) (.arrow operation_of_the_rohonc_codex_l4 operation_of_the_rohonc_codex_s4 operation_of_the_rohonc_codex_s11)) (.seq (.arrow operation_of_the_rohonc_codex_l11 operation_of_the_rohonc_codex_s11 operation_of_the_rohonc_codex_s11) (.seq (.arrow operation_of_the_rohonc_codex_l11 operation_of_the_rohonc_codex_s11 operation_of_the_rohonc_codex_s12) (.seq (.arrow operation_of_the_rohonc_codex_l12 operation_of_the_rohonc_codex_s12 operation_of_the_rohonc_codex_s13) (.seq (.arrow operation_of_the_rohonc_codex_l13 operation_of_the_rohonc_codex_s13 operation_of_the_rohonc_codex_s14) (.seq (.arrow operation_of_the_rohonc_codex_l14 operation_of_the_rohonc_codex_s14 operation_of_the_rohonc_codex_s15) (.seq (.arrow operation_of_the_rohonc_codex_l15 operation_of_the_rohonc_codex_s15 operation_of_the_rohonc_codex_s16) (.seq (.arrow operation_of_the_rohonc_codex_l16 operation_of_the_rohonc_codex_s16 operation_of_the_rohonc_codex_s17) (.seq (.arrow operation_of_the_rohonc_codex_l17 operation_of_the_rohonc_codex_s17 operation_of_the_rohonc_codex_s18) (.seq (.arrow operation_of_the_rohonc_codex_l18 operation_of_the_rohonc_codex_s18 operation_of_the_rohonc_codex_s19) (.seq (.arrow operation_of_the_rohonc_codex_l19 operation_of_the_rohonc_codex_s19 operation_of_the_rohonc_codex_s20) (.seq (.arrow operation_of_the_rohonc_codex_l20 operation_of_the_rohonc_codex_s20 operation_of_the_rohonc_codex_s21) (.seq (.arrow operation_of_the_rohonc_codex_l21 operation_of_the_rohonc_codex_s21 operation_of_the_rohonc_codex_s22) (.seq (.arrow operation_of_the_rohonc_codex_l22 operation_of_the_rohonc_codex_s22 operation_of_the_rohonc_codex_s23) (.seq (.arrow operation_of_the_rohonc_codex_l23 operation_of_the_rohonc_codex_s23 operation_of_the_rohonc_codex_s24) (.seq (.arrow operation_of_the_rohonc_codex_l24 operation_of_the_rohonc_codex_s24 operation_of_the_rohonc_codex_s25) (.seq (.arrow operation_of_the_rohonc_codex_l25 operation_of_the_rohonc_codex_s25 operation_of_the_rohonc_codex_s26) (.seq (.arrow operation_of_the_rohonc_codex_l26 operation_of_the_rohonc_codex_s26 operation_of_the_rohonc_codex_s27) (.seq (.arrow operation_of_the_rohonc_codex_l27 operation_of_the_rohonc_codex_s27 operation_of_the_rohonc_codex_s28) (.arrow operation_of_the_rohonc_codex_l28 operation_of_the_rohonc_codex_s28 operation_of_the_rohonc_codex_s29))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def operation_of_the_rohonc_codex_true_arm : IGProtocol operation_of_the_rohonc_codex_s0 operation_of_the_rohonc_codex_s29 :=
  (operation_of_the_rohonc_codex_protocol).restrictToEVALT

-- false arm
noncomputable def operation_of_the_rohonc_codex_false_arm : IGProtocol operation_of_the_rohonc_codex_s0 operation_of_the_rohonc_codex_s29 :=
  (operation_of_the_rohonc_codex_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def operation_of_the_rohonc_codex_tier : OuroboricityTier := TierFunctor.obj operation_of_the_rohonc_codex_s0
#eval operation_of_the_rohonc_codex_tier  -- the Grammar's own verdict on its tier
