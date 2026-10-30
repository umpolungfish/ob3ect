-- IGProtocol scaffold: VINIT → TANCH → AFWD → AFWD → FSPLIT → EVALT → AFWD → EVALT → AFWD → EVALT → AFWD → EVALT → IFIX → AREV → EVALF → AREV → EVALF → AREV → EVALF → AREV → EVALF → ENGAGR → CLINK → FFUSE → FSPLIT → FFUSE → IMSCRIB → AFWD → AREV → EVALF → TANCH → VINIT
-- Class: Voynich Phytoglyphica pharmaceutical decoding engine: a session-based system that routes Voynich Manuscript herbal monographs through three structural gates using the 12-primitive Imscribing Grammar as parameter set, then extracts and elaborates recipe steps from the pharmaceutical folios. The grammar provides the parameter set; the VMS is the program.
-- Fingerprint: sig=(17,4,10,1)
--   self_ref=True | frobenius_order=3
--   dialetheia_complete=True | period=32
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 23), (24, 25)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [17] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [18] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [20] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [21] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [22] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [23] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [24] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [25] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [26] IMSCRIB   gram   := 𐑠               𐑙 → 𐑾  | identity — self-imscription
--   [27] AFWD      rel    := 𐑾               𐑠 → 𐑗  | forward morphism — bidirectional arrow
--   [28] AREV      pol    := 𐑗               𐑾 → 𐑖  | reverse morphism — parity flip
--   [29] EVALF     chir   := 𐑖               𐑗 → 𐑡  | evaluate-false — chirality check
--   [30] TANCH     top    := 𐑡               𐑖 → 𐑼  | terminal object — connectivity boundary
--   [31] VINIT     dim    := 𐑼               𐑡 → 𐑼  | initial object — ground of distinction

-- ── Back-propagation edges (self-referential loop) ──────────────────────
--   IMSCRIB positions: [26]
--   IFIX    positions: [12]
--   Back-prop: IMSCRIB→IFIX (LinFix) — igProtoCopy_isDagger axiom applies
--   Weighted: CLINK→IMSCRIB — feeds next winding via .seq after .prod

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l27 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def voynich_phytoglyphica_pharmaceutical_4b7ae4_l31 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def voynich_phytoglyphica_pharmaceutical_4b7ae4_protocol : IGProtocol voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s31 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 = voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 (idempotent)
  (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s1) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l1 voynich_phytoglyphica_pharmaceutical_4b7ae4_s1 voynich_phytoglyphica_pharmaceutical_4b7ae4_s2) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l2 voynich_phytoglyphica_pharmaceutical_4b7ae4_s2 voynich_phytoglyphica_pharmaceutical_4b7ae4_s3) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l3 voynich_phytoglyphica_pharmaceutical_4b7ae4_s3 voynich_phytoglyphica_pharmaceutical_4b7ae4_s4) (.seq (.prod (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l4 voynich_phytoglyphica_pharmaceutical_4b7ae4_s4 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23) (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l4 voynich_phytoglyphica_pharmaceutical_4b7ae4_s4 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23)) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l23 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l23 voynich_phytoglyphica_pharmaceutical_4b7ae4_s23 voynich_phytoglyphica_pharmaceutical_4b7ae4_s24) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l24 voynich_phytoglyphica_pharmaceutical_4b7ae4_s24 voynich_phytoglyphica_pharmaceutical_4b7ae4_s25) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l25 voynich_phytoglyphica_pharmaceutical_4b7ae4_s25 voynich_phytoglyphica_pharmaceutical_4b7ae4_s26) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l26 voynich_phytoglyphica_pharmaceutical_4b7ae4_s26 voynich_phytoglyphica_pharmaceutical_4b7ae4_s27) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l27 voynich_phytoglyphica_pharmaceutical_4b7ae4_s27 voynich_phytoglyphica_pharmaceutical_4b7ae4_s28) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l28 voynich_phytoglyphica_pharmaceutical_4b7ae4_s28 voynich_phytoglyphica_pharmaceutical_4b7ae4_s29) (.seq (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l29 voynich_phytoglyphica_pharmaceutical_4b7ae4_s29 voynich_phytoglyphica_pharmaceutical_4b7ae4_s30) (.arrow voynich_phytoglyphica_pharmaceutical_4b7ae4_l30 voynich_phytoglyphica_pharmaceutical_4b7ae4_s30 voynich_phytoglyphica_pharmaceutical_4b7ae4_s31))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def voynich_phytoglyphica_pharmaceutical_4b7ae4_true_arm : IGProtocol voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s31 :=
  (voynich_phytoglyphica_pharmaceutical_4b7ae4_protocol).restrictToEVALT

-- false arm
noncomputable def voynich_phytoglyphica_pharmaceutical_4b7ae4_false_arm : IGProtocol voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s31 :=
  (voynich_phytoglyphica_pharmaceutical_4b7ae4_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def voynich_phytoglyphica_pharmaceutical_4b7ae4_tier : OuroboricityTier := TierFunctor.obj voynich_phytoglyphica_pharmaceutical_4b7ae4_s0
#eval voynich_phytoglyphica_pharmaceutical_4b7ae4_tier  -- the Grammar's own verdict on its tier

-- Self-reference: Δ is a dagger and μ = Δ†
theorem voynich_phytoglyphica_pharmaceutical_4b7ae4_self_ref :
    (igProtoDelta voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 (by decide)).isDagger = true ∧
    igProtoMu_depth (paralogical_dagger (by decide)) = 1 := by
  constructor
  · exact igProtoCopy_isDagger
  · exact igProtoMu_depth

-- Loop closure: period=32, depth=1
theorem voynich_phytoglyphica_pharmaceutical_4b7ae4_loop_closure :
    ∃ (loop : IGProtocol voynich_phytoglyphica_pharmaceutical_4b7ae4_s0 voynich_phytoglyphica_pharmaceutical_4b7ae4_s31),
      loop = voynich_phytoglyphica_pharmaceutical_4b7ae4_protocol ∧
      loop.period = 32 ∧ loop.depth = 1 := by
  exact ⟨_, rfl, by decide, by decide⟩

-- igProtoCopy_isDagger licenses IMSCRIB→IFIX burn
-- CLINK→IMSCRIB weighted edge: .seq continuation
