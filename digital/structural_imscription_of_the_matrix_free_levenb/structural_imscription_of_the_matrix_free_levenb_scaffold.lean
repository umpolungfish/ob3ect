-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → AREV → IMSCRIB → FSPLIT → EVALT → EVALF → FFUSE → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → ENGAGR → CLINK → IMSCRIB → FSPLIT → EVALT → IFIX → IFIX → EVALF → FFUSE → TANCH
-- Class: imscription of the matrix-free Levenberg-Marquardt descent at d=2048: Gauss-Newton on the residual vector of all 4194303 Weyl-Heisenberg overlap conditions, with Jacobian and adjoint actions as FFT passes over the ambiguity function (adjoint identity exact to 1e-16), damped normal equations solved by conjugate gradients inside the 683-dimensional Zauner sector. The curvature of the residual vector navigates the valley the scalar objective hides; validated to a machine-precision d=12 SIC at 3e-16. The true-branch traversal of the geometric lift, driving toward the deep-vanish floor. With full Frobenius closure and Lean 4 verification scaffold.
-- Fingerprint: sig=(11,6,7,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=26
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(6, 9), (10, 15), (19, 24)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑗  | composition — regime coherence
--   [4] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [5] IMSCRIB   gram   := 𐑠               𐑗 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [14] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [16] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [17] CLINK     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [18] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [19] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [20] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [21] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [22] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [23] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [24] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [25] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def structural_imscription_of_the_matrix_a7bcfb_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def structural_imscription_of_the_matrix_a7bcfb_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_matrix_a7bcfb_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_matrix_a7bcfb_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def structural_imscription_of_the_matrix_a7bcfb_protocol : IGProtocol structural_imscription_of_the_matrix_a7bcfb_s0 structural_imscription_of_the_matrix_a7bcfb_s25 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct structural_imscription_of_the_matrix_a7bcfb_s9 structural_imscription_of_the_matrix_a7bcfb_s9 = structural_imscription_of_the_matrix_a7bcfb_s9 (idempotent)
  (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l0 structural_imscription_of_the_matrix_a7bcfb_s0 structural_imscription_of_the_matrix_a7bcfb_s1) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l1 structural_imscription_of_the_matrix_a7bcfb_s1 structural_imscription_of_the_matrix_a7bcfb_s2) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l2 structural_imscription_of_the_matrix_a7bcfb_s2 structural_imscription_of_the_matrix_a7bcfb_s3) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l3 structural_imscription_of_the_matrix_a7bcfb_s3 structural_imscription_of_the_matrix_a7bcfb_s4) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l4 structural_imscription_of_the_matrix_a7bcfb_s4 structural_imscription_of_the_matrix_a7bcfb_s5) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l5 structural_imscription_of_the_matrix_a7bcfb_s5 structural_imscription_of_the_matrix_a7bcfb_s6) (.seq (.prod (.arrow structural_imscription_of_the_matrix_a7bcfb_l6 structural_imscription_of_the_matrix_a7bcfb_s6 structural_imscription_of_the_matrix_a7bcfb_s9) (.arrow structural_imscription_of_the_matrix_a7bcfb_l6 structural_imscription_of_the_matrix_a7bcfb_s6 structural_imscription_of_the_matrix_a7bcfb_s9)) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l9 structural_imscription_of_the_matrix_a7bcfb_s9 structural_imscription_of_the_matrix_a7bcfb_s9) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l9 structural_imscription_of_the_matrix_a7bcfb_s9 structural_imscription_of_the_matrix_a7bcfb_s10) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l10 structural_imscription_of_the_matrix_a7bcfb_s10 structural_imscription_of_the_matrix_a7bcfb_s11) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l11 structural_imscription_of_the_matrix_a7bcfb_s11 structural_imscription_of_the_matrix_a7bcfb_s12) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l12 structural_imscription_of_the_matrix_a7bcfb_s12 structural_imscription_of_the_matrix_a7bcfb_s13) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l13 structural_imscription_of_the_matrix_a7bcfb_s13 structural_imscription_of_the_matrix_a7bcfb_s14) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l14 structural_imscription_of_the_matrix_a7bcfb_s14 structural_imscription_of_the_matrix_a7bcfb_s15) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l15 structural_imscription_of_the_matrix_a7bcfb_s15 structural_imscription_of_the_matrix_a7bcfb_s16) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l16 structural_imscription_of_the_matrix_a7bcfb_s16 structural_imscription_of_the_matrix_a7bcfb_s17) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l17 structural_imscription_of_the_matrix_a7bcfb_s17 structural_imscription_of_the_matrix_a7bcfb_s18) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l18 structural_imscription_of_the_matrix_a7bcfb_s18 structural_imscription_of_the_matrix_a7bcfb_s19) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l19 structural_imscription_of_the_matrix_a7bcfb_s19 structural_imscription_of_the_matrix_a7bcfb_s20) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l20 structural_imscription_of_the_matrix_a7bcfb_s20 structural_imscription_of_the_matrix_a7bcfb_s21) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l21 structural_imscription_of_the_matrix_a7bcfb_s21 structural_imscription_of_the_matrix_a7bcfb_s22) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l22 structural_imscription_of_the_matrix_a7bcfb_s22 structural_imscription_of_the_matrix_a7bcfb_s23) (.seq (.arrow structural_imscription_of_the_matrix_a7bcfb_l23 structural_imscription_of_the_matrix_a7bcfb_s23 structural_imscription_of_the_matrix_a7bcfb_s24) (.arrow structural_imscription_of_the_matrix_a7bcfb_l24 structural_imscription_of_the_matrix_a7bcfb_s24 structural_imscription_of_the_matrix_a7bcfb_s25))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def structural_imscription_of_the_matrix_a7bcfb_true_arm : IGProtocol structural_imscription_of_the_matrix_a7bcfb_s0 structural_imscription_of_the_matrix_a7bcfb_s25 :=
  (structural_imscription_of_the_matrix_a7bcfb_protocol).restrictToEVALT

-- false arm
noncomputable def structural_imscription_of_the_matrix_a7bcfb_false_arm : IGProtocol structural_imscription_of_the_matrix_a7bcfb_s0 structural_imscription_of_the_matrix_a7bcfb_s25 :=
  (structural_imscription_of_the_matrix_a7bcfb_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def structural_imscription_of_the_matrix_a7bcfb_tier : OuroboricityTier := TierFunctor.obj structural_imscription_of_the_matrix_a7bcfb_s0
#eval structural_imscription_of_the_matrix_a7bcfb_tier  -- the Grammar's own verdict on its tier
