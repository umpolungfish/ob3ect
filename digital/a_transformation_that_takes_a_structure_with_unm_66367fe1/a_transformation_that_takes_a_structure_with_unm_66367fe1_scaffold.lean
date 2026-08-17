-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⊙ → ⊞ → ◻ → ⊣
-- Class: A transformation that takes a structure with unmatched mergings and places, at each unmatched merge, the division it was missing, so the whole comes into balance. Report where each division lands and that the transformed structure closes.
-- Fingerprint: sig=(14,8,9,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=32
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(1, 6), (8, 13), (15, 20), (22, 27)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [14] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [15] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [19] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [20] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [21] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [22] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [23] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [24] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [25] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [26] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [27] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [28] ⊙   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [29] ⊞    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [30] ◻      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [31] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_transformation_that_takes_a_structure_ede97c_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def a_transformation_that_takes_a_structure_ede97c_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_transformation_that_takes_a_structure_ede97c_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_transformation_that_takes_a_structure_ede97c_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_transformation_that_takes_a_structure_ede97c_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_transformation_that_takes_a_structure_ede97c_protocol : IGProtocol a_transformation_that_takes_a_structure_ede97c_s0 a_transformation_that_takes_a_structure_ede97c_s31 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_transformation_that_takes_a_structure_ede97c_s6 a_transformation_that_takes_a_structure_ede97c_s6 = a_transformation_that_takes_a_structure_ede97c_s6 (idempotent)
  (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l0 a_transformation_that_takes_a_structure_ede97c_s0 a_transformation_that_takes_a_structure_ede97c_s1) (.seq (.prod (.arrow a_transformation_that_takes_a_structure_ede97c_l1 a_transformation_that_takes_a_structure_ede97c_s1 a_transformation_that_takes_a_structure_ede97c_s6) (.arrow a_transformation_that_takes_a_structure_ede97c_l1 a_transformation_that_takes_a_structure_ede97c_s1 a_transformation_that_takes_a_structure_ede97c_s6)) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l6 a_transformation_that_takes_a_structure_ede97c_s6 a_transformation_that_takes_a_structure_ede97c_s6) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l6 a_transformation_that_takes_a_structure_ede97c_s6 a_transformation_that_takes_a_structure_ede97c_s7) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l7 a_transformation_that_takes_a_structure_ede97c_s7 a_transformation_that_takes_a_structure_ede97c_s8) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l8 a_transformation_that_takes_a_structure_ede97c_s8 a_transformation_that_takes_a_structure_ede97c_s9) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l9 a_transformation_that_takes_a_structure_ede97c_s9 a_transformation_that_takes_a_structure_ede97c_s10) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l10 a_transformation_that_takes_a_structure_ede97c_s10 a_transformation_that_takes_a_structure_ede97c_s11) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l11 a_transformation_that_takes_a_structure_ede97c_s11 a_transformation_that_takes_a_structure_ede97c_s12) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l12 a_transformation_that_takes_a_structure_ede97c_s12 a_transformation_that_takes_a_structure_ede97c_s13) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l13 a_transformation_that_takes_a_structure_ede97c_s13 a_transformation_that_takes_a_structure_ede97c_s14) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l14 a_transformation_that_takes_a_structure_ede97c_s14 a_transformation_that_takes_a_structure_ede97c_s15) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l15 a_transformation_that_takes_a_structure_ede97c_s15 a_transformation_that_takes_a_structure_ede97c_s16) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l16 a_transformation_that_takes_a_structure_ede97c_s16 a_transformation_that_takes_a_structure_ede97c_s17) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l17 a_transformation_that_takes_a_structure_ede97c_s17 a_transformation_that_takes_a_structure_ede97c_s18) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l18 a_transformation_that_takes_a_structure_ede97c_s18 a_transformation_that_takes_a_structure_ede97c_s19) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l19 a_transformation_that_takes_a_structure_ede97c_s19 a_transformation_that_takes_a_structure_ede97c_s20) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l20 a_transformation_that_takes_a_structure_ede97c_s20 a_transformation_that_takes_a_structure_ede97c_s21) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l21 a_transformation_that_takes_a_structure_ede97c_s21 a_transformation_that_takes_a_structure_ede97c_s22) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l22 a_transformation_that_takes_a_structure_ede97c_s22 a_transformation_that_takes_a_structure_ede97c_s23) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l23 a_transformation_that_takes_a_structure_ede97c_s23 a_transformation_that_takes_a_structure_ede97c_s24) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l24 a_transformation_that_takes_a_structure_ede97c_s24 a_transformation_that_takes_a_structure_ede97c_s25) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l25 a_transformation_that_takes_a_structure_ede97c_s25 a_transformation_that_takes_a_structure_ede97c_s26) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l26 a_transformation_that_takes_a_structure_ede97c_s26 a_transformation_that_takes_a_structure_ede97c_s27) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l27 a_transformation_that_takes_a_structure_ede97c_s27 a_transformation_that_takes_a_structure_ede97c_s28) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l28 a_transformation_that_takes_a_structure_ede97c_s28 a_transformation_that_takes_a_structure_ede97c_s29) (.seq (.arrow a_transformation_that_takes_a_structure_ede97c_l29 a_transformation_that_takes_a_structure_ede97c_s29 a_transformation_that_takes_a_structure_ede97c_s30) (.arrow a_transformation_that_takes_a_structure_ede97c_l30 a_transformation_that_takes_a_structure_ede97c_s30 a_transformation_that_takes_a_structure_ede97c_s31))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_transformation_that_takes_a_structure_ede97c_true_arm : IGProtocol a_transformation_that_takes_a_structure_ede97c_s0 a_transformation_that_takes_a_structure_ede97c_s31 :=
  (a_transformation_that_takes_a_structure_ede97c_protocol).restrictToEVALT

-- false arm
noncomputable def a_transformation_that_takes_a_structure_ede97c_false_arm : IGProtocol a_transformation_that_takes_a_structure_ede97c_s0 a_transformation_that_takes_a_structure_ede97c_s31 :=
  (a_transformation_that_takes_a_structure_ede97c_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def a_transformation_that_takes_a_structure_ede97c_tier_ground : OuroboricityTier := TierFunctor.obj a_transformation_that_takes_a_structure_ede97c_s0
def a_transformation_that_takes_a_structure_ede97c_tier : OuroboricityTier := TierFunctor.obj a_transformation_that_takes_a_structure_ede97c_s31
#eval a_transformation_that_takes_a_structure_ede97c_tier_ground  -- tier of the ground (pre-transformation)
#eval a_transformation_that_takes_a_structure_ede97c_tier  -- the Grammar's own verdict on the closed object
