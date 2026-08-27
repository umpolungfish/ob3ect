-- IGProtocol scaffold: ⊢ → ≻ → ⋈ → ≻ → ≺ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ∋ → ⋈ → ⊙ → ⊡ → ⋈ → ≻ → ≺ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ⊞ → ∋ → ⋈ → ⊙ → ⊡ → ⋈ → ⊣ → ⊙
-- Class: t3_efl_affirm
-- Fingerprint: sig=(20,4,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=32
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(6, 12), (19, 25)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] ⋈     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [4] ≺      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [5] ⋈     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [6] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [14] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [15] ⊡      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [16] ⋈     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [17] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [18] ≺      pol    := 𐑗               𐑾 → 𐑚  | reverse morphism — parity flip
--   [19] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [20] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [21] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [22] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [23] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [24] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [25] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [26] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [27] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [28] ⊡      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [29] ⋈     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [30] ⊣     top    := 𐑡               𐑱 → 𐑠  | terminal object — connectivity boundary
--   [31] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def t3_efl_affirm_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def t3_efl_affirm_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def t3_efl_affirm_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def t3_efl_affirm_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def t3_efl_affirm_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def t3_efl_affirm_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def t3_efl_affirm_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l17 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l20 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def t3_efl_affirm_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def t3_efl_affirm_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def t3_efl_affirm_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def t3_efl_affirm_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def t3_efl_affirm_protocol : IGProtocol t3_efl_affirm_s0 t3_efl_affirm_s31 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct t3_efl_affirm_s12 t3_efl_affirm_s12 = t3_efl_affirm_s12 (idempotent)
  (.seq (.arrow t3_efl_affirm_l0 t3_efl_affirm_s0 t3_efl_affirm_s1) (.seq (.arrow t3_efl_affirm_l1 t3_efl_affirm_s1 t3_efl_affirm_s2) (.seq (.arrow t3_efl_affirm_l2 t3_efl_affirm_s2 t3_efl_affirm_s3) (.seq (.arrow t3_efl_affirm_l3 t3_efl_affirm_s3 t3_efl_affirm_s4) (.seq (.arrow t3_efl_affirm_l4 t3_efl_affirm_s4 t3_efl_affirm_s5) (.seq (.arrow t3_efl_affirm_l5 t3_efl_affirm_s5 t3_efl_affirm_s6) (.seq (.prod (.arrow t3_efl_affirm_l6 t3_efl_affirm_s6 t3_efl_affirm_s12) (.arrow t3_efl_affirm_l6 t3_efl_affirm_s6 t3_efl_affirm_s12)) (.seq (.arrow t3_efl_affirm_l12 t3_efl_affirm_s12 t3_efl_affirm_s12) (.seq (.arrow t3_efl_affirm_l12 t3_efl_affirm_s12 t3_efl_affirm_s13) (.seq (.arrow t3_efl_affirm_l13 t3_efl_affirm_s13 t3_efl_affirm_s14) (.seq (.arrow t3_efl_affirm_l14 t3_efl_affirm_s14 t3_efl_affirm_s15) (.seq (.arrow t3_efl_affirm_l15 t3_efl_affirm_s15 t3_efl_affirm_s16) (.seq (.arrow t3_efl_affirm_l16 t3_efl_affirm_s16 t3_efl_affirm_s17) (.seq (.arrow t3_efl_affirm_l17 t3_efl_affirm_s17 t3_efl_affirm_s18) (.seq (.arrow t3_efl_affirm_l18 t3_efl_affirm_s18 t3_efl_affirm_s19) (.seq (.arrow t3_efl_affirm_l19 t3_efl_affirm_s19 t3_efl_affirm_s20) (.seq (.arrow t3_efl_affirm_l20 t3_efl_affirm_s20 t3_efl_affirm_s21) (.seq (.arrow t3_efl_affirm_l21 t3_efl_affirm_s21 t3_efl_affirm_s22) (.seq (.arrow t3_efl_affirm_l22 t3_efl_affirm_s22 t3_efl_affirm_s23) (.seq (.arrow t3_efl_affirm_l23 t3_efl_affirm_s23 t3_efl_affirm_s24) (.seq (.arrow t3_efl_affirm_l24 t3_efl_affirm_s24 t3_efl_affirm_s25) (.seq (.arrow t3_efl_affirm_l25 t3_efl_affirm_s25 t3_efl_affirm_s26) (.seq (.arrow t3_efl_affirm_l26 t3_efl_affirm_s26 t3_efl_affirm_s27) (.seq (.arrow t3_efl_affirm_l27 t3_efl_affirm_s27 t3_efl_affirm_s28) (.seq (.arrow t3_efl_affirm_l28 t3_efl_affirm_s28 t3_efl_affirm_s29) (.seq (.arrow t3_efl_affirm_l29 t3_efl_affirm_s29 t3_efl_affirm_s30) (.arrow t3_efl_affirm_l30 t3_efl_affirm_s30 t3_efl_affirm_s31)))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def t3_efl_affirm_true_arm : IGProtocol t3_efl_affirm_s0 t3_efl_affirm_s31 :=
  (t3_efl_affirm_protocol).restrictToEVALT

-- false arm
noncomputable def t3_efl_affirm_false_arm : IGProtocol t3_efl_affirm_s0 t3_efl_affirm_s31 :=
  (t3_efl_affirm_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def t3_efl_affirm_tier_ground : OuroboricityTier := TierFunctor.obj t3_efl_affirm_s0
def t3_efl_affirm_tier : OuroboricityTier := TierFunctor.obj t3_efl_affirm_s31
#eval t3_efl_affirm_tier_ground  -- tier of the ground (pre-transformation)
#eval t3_efl_affirm_tier  -- the Grammar's own verdict on the closed object
