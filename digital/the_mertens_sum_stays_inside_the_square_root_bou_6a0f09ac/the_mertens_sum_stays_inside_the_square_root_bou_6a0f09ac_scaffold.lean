-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ≻ → ⋈ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⊙ → ⊡ → ≻ → ⋈ → ∈ → ⊤ → ⊥ → ⊞ → ∋ → ⊣
-- Class: the Mertens sum stays inside the square-root bound at every height
-- Fingerprint: sig=(9,6,9,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=25
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 7), (10, 14), (19, 23)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [8] ≻      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [9] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] ⊙   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [16] ⊡      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [17] ≻      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [18] ⋈     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [19] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [20] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [21] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [22] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [23] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [24] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_mertens_sum_stays_inside_the_square_14bdb7_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_mertens_sum_stays_inside_the_square_14bdb7_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_mertens_sum_stays_inside_the_square_14bdb7_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_mertens_sum_stays_inside_the_square_14bdb7_protocol : IGProtocol the_mertens_sum_stays_inside_the_square_14bdb7_s0 the_mertens_sum_stays_inside_the_square_14bdb7_s24 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_mertens_sum_stays_inside_the_square_14bdb7_s7 the_mertens_sum_stays_inside_the_square_14bdb7_s7 = the_mertens_sum_stays_inside_the_square_14bdb7_s7 (idempotent)
  (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l0 the_mertens_sum_stays_inside_the_square_14bdb7_s0 the_mertens_sum_stays_inside_the_square_14bdb7_s1) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l1 the_mertens_sum_stays_inside_the_square_14bdb7_s1 the_mertens_sum_stays_inside_the_square_14bdb7_s2) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l2 the_mertens_sum_stays_inside_the_square_14bdb7_s2 the_mertens_sum_stays_inside_the_square_14bdb7_s3) (.seq (.prod (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l3 the_mertens_sum_stays_inside_the_square_14bdb7_s3 the_mertens_sum_stays_inside_the_square_14bdb7_s7) (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l3 the_mertens_sum_stays_inside_the_square_14bdb7_s3 the_mertens_sum_stays_inside_the_square_14bdb7_s7)) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l7 the_mertens_sum_stays_inside_the_square_14bdb7_s7 the_mertens_sum_stays_inside_the_square_14bdb7_s7) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l7 the_mertens_sum_stays_inside_the_square_14bdb7_s7 the_mertens_sum_stays_inside_the_square_14bdb7_s8) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l8 the_mertens_sum_stays_inside_the_square_14bdb7_s8 the_mertens_sum_stays_inside_the_square_14bdb7_s9) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l9 the_mertens_sum_stays_inside_the_square_14bdb7_s9 the_mertens_sum_stays_inside_the_square_14bdb7_s10) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l10 the_mertens_sum_stays_inside_the_square_14bdb7_s10 the_mertens_sum_stays_inside_the_square_14bdb7_s11) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l11 the_mertens_sum_stays_inside_the_square_14bdb7_s11 the_mertens_sum_stays_inside_the_square_14bdb7_s12) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l12 the_mertens_sum_stays_inside_the_square_14bdb7_s12 the_mertens_sum_stays_inside_the_square_14bdb7_s13) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l13 the_mertens_sum_stays_inside_the_square_14bdb7_s13 the_mertens_sum_stays_inside_the_square_14bdb7_s14) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l14 the_mertens_sum_stays_inside_the_square_14bdb7_s14 the_mertens_sum_stays_inside_the_square_14bdb7_s15) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l15 the_mertens_sum_stays_inside_the_square_14bdb7_s15 the_mertens_sum_stays_inside_the_square_14bdb7_s16) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l16 the_mertens_sum_stays_inside_the_square_14bdb7_s16 the_mertens_sum_stays_inside_the_square_14bdb7_s17) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l17 the_mertens_sum_stays_inside_the_square_14bdb7_s17 the_mertens_sum_stays_inside_the_square_14bdb7_s18) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l18 the_mertens_sum_stays_inside_the_square_14bdb7_s18 the_mertens_sum_stays_inside_the_square_14bdb7_s19) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l19 the_mertens_sum_stays_inside_the_square_14bdb7_s19 the_mertens_sum_stays_inside_the_square_14bdb7_s20) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l20 the_mertens_sum_stays_inside_the_square_14bdb7_s20 the_mertens_sum_stays_inside_the_square_14bdb7_s21) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l21 the_mertens_sum_stays_inside_the_square_14bdb7_s21 the_mertens_sum_stays_inside_the_square_14bdb7_s22) (.seq (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l22 the_mertens_sum_stays_inside_the_square_14bdb7_s22 the_mertens_sum_stays_inside_the_square_14bdb7_s23) (.arrow the_mertens_sum_stays_inside_the_square_14bdb7_l23 the_mertens_sum_stays_inside_the_square_14bdb7_s23 the_mertens_sum_stays_inside_the_square_14bdb7_s24))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_mertens_sum_stays_inside_the_square_14bdb7_true_arm : IGProtocol the_mertens_sum_stays_inside_the_square_14bdb7_s0 the_mertens_sum_stays_inside_the_square_14bdb7_s24 :=
  (the_mertens_sum_stays_inside_the_square_14bdb7_protocol).restrictToEVALT

-- false arm
noncomputable def the_mertens_sum_stays_inside_the_square_14bdb7_false_arm : IGProtocol the_mertens_sum_stays_inside_the_square_14bdb7_s0 the_mertens_sum_stays_inside_the_square_14bdb7_s24 :=
  (the_mertens_sum_stays_inside_the_square_14bdb7_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def the_mertens_sum_stays_inside_the_square_14bdb7_tier_ground : OuroboricityTier := TierFunctor.obj the_mertens_sum_stays_inside_the_square_14bdb7_s0
def the_mertens_sum_stays_inside_the_square_14bdb7_tier : OuroboricityTier := TierFunctor.obj the_mertens_sum_stays_inside_the_square_14bdb7_s24
#eval the_mertens_sum_stays_inside_the_square_14bdb7_tier_ground  -- tier of the ground (pre-transformation)
#eval the_mertens_sum_stays_inside_the_square_14bdb7_tier  -- the Grammar's own verdict on the closed object
