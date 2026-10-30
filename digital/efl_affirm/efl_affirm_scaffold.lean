-- IGProtocol scaffold: ⊢ → ∈ → ≻ → ∈ → ⊤ → ∋ → ⋈ → ∈ → ⊤ → ∋ → ⋈ → ≻ → ≺ → ⊞ → ∈ → ⊤ → ∋ → ⋈ → ≻ → ≺ → ⊞ → ∈ → ⊤ → ∋ → ⋈ → ≻ → ≺ → ⊞ → ∈ → ⊤ → ⊥ → ∋ → ⊡ → ⊙ → ⊣
-- Class: efl_affirm
-- Fingerprint: sig=(14,11,9,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=35
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 5), (7, 9), (14, 16), (21, 23), (28, 31)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] ∈    gran   := 𐑚               𐑼 → 𐑾  | split δ — range decomposition
--   [2] ≻      rel    := 𐑾               𐑚 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [7] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] ⋈     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [11] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [12] ≺      pol    := 𐑗               𐑾 → 𐑳  | reverse morphism — parity flip
--   [13] ⊞    stoi   := 𐑳               𐑗 → 𐑚  | engage paradox — B-state, both arms
--   [14] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [17] ⋈     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [18] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [19] ≺      pol    := 𐑗               𐑾 → 𐑳  | reverse morphism — parity flip
--   [20] ⊞    stoi   := 𐑳               𐑗 → 𐑚  | engage paradox — B-state, both arms
--   [21] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [22] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [23] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [24] ⋈     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [25] ≻      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [26] ≺      pol    := 𐑗               𐑾 → 𐑳  | reverse morphism — parity flip
--   [27] ⊞    stoi   := 𐑳               𐑗 → 𐑚  | engage paradox — B-state, both arms
--   [28] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [29] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [30] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [31] ∋     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [32] ⊡      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [33] ⊙   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [34] ⊣     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def efl_affirm_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def efl_affirm_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def efl_affirm_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def efl_affirm_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def efl_affirm_s33 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def efl_affirm_s34 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def efl_affirm_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def efl_affirm_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def efl_affirm_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l25 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def efl_affirm_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def efl_affirm_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l32 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def efl_affirm_l33 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def efl_affirm_l34 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def efl_affirm_protocol : IGProtocol efl_affirm_s0 efl_affirm_s34 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct efl_affirm_s5 efl_affirm_s5 = efl_affirm_s5 (idempotent)
  (.seq (.arrow efl_affirm_l0 efl_affirm_s0 efl_affirm_s1) (.seq (.arrow efl_affirm_l1 efl_affirm_s1 efl_affirm_s2) (.seq (.arrow efl_affirm_l2 efl_affirm_s2 efl_affirm_s3) (.seq (.prod (.arrow efl_affirm_l3 efl_affirm_s3 efl_affirm_s5) (.arrow efl_affirm_l3 efl_affirm_s3 efl_affirm_s5)) (.seq (.arrow efl_affirm_l5 efl_affirm_s5 efl_affirm_s5) (.seq (.arrow efl_affirm_l5 efl_affirm_s5 efl_affirm_s6) (.seq (.arrow efl_affirm_l6 efl_affirm_s6 efl_affirm_s7) (.seq (.arrow efl_affirm_l7 efl_affirm_s7 efl_affirm_s8) (.seq (.arrow efl_affirm_l8 efl_affirm_s8 efl_affirm_s9) (.seq (.arrow efl_affirm_l9 efl_affirm_s9 efl_affirm_s10) (.seq (.arrow efl_affirm_l10 efl_affirm_s10 efl_affirm_s11) (.seq (.arrow efl_affirm_l11 efl_affirm_s11 efl_affirm_s12) (.seq (.arrow efl_affirm_l12 efl_affirm_s12 efl_affirm_s13) (.seq (.arrow efl_affirm_l13 efl_affirm_s13 efl_affirm_s14) (.seq (.arrow efl_affirm_l14 efl_affirm_s14 efl_affirm_s15) (.seq (.arrow efl_affirm_l15 efl_affirm_s15 efl_affirm_s16) (.seq (.arrow efl_affirm_l16 efl_affirm_s16 efl_affirm_s17) (.seq (.arrow efl_affirm_l17 efl_affirm_s17 efl_affirm_s18) (.seq (.arrow efl_affirm_l18 efl_affirm_s18 efl_affirm_s19) (.seq (.arrow efl_affirm_l19 efl_affirm_s19 efl_affirm_s20) (.seq (.arrow efl_affirm_l20 efl_affirm_s20 efl_affirm_s21) (.seq (.arrow efl_affirm_l21 efl_affirm_s21 efl_affirm_s22) (.seq (.arrow efl_affirm_l22 efl_affirm_s22 efl_affirm_s23) (.seq (.arrow efl_affirm_l23 efl_affirm_s23 efl_affirm_s24) (.seq (.arrow efl_affirm_l24 efl_affirm_s24 efl_affirm_s25) (.seq (.arrow efl_affirm_l25 efl_affirm_s25 efl_affirm_s26) (.seq (.arrow efl_affirm_l26 efl_affirm_s26 efl_affirm_s27) (.seq (.arrow efl_affirm_l27 efl_affirm_s27 efl_affirm_s28) (.seq (.arrow efl_affirm_l28 efl_affirm_s28 efl_affirm_s29) (.seq (.arrow efl_affirm_l29 efl_affirm_s29 efl_affirm_s30) (.seq (.arrow efl_affirm_l30 efl_affirm_s30 efl_affirm_s31) (.seq (.arrow efl_affirm_l31 efl_affirm_s31 efl_affirm_s32) (.seq (.arrow efl_affirm_l32 efl_affirm_s32 efl_affirm_s33) (.arrow efl_affirm_l33 efl_affirm_s33 efl_affirm_s34))))))))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def efl_affirm_true_arm : IGProtocol efl_affirm_s0 efl_affirm_s34 :=
  (efl_affirm_protocol).restrictToEVALT

-- false arm
noncomputable def efl_affirm_false_arm : IGProtocol efl_affirm_s0 efl_affirm_s34 :=
  (efl_affirm_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def efl_affirm_tier_ground : OuroboricityTier := TierFunctor.obj efl_affirm_s0
def efl_affirm_tier : OuroboricityTier := TierFunctor.obj efl_affirm_s34
#eval efl_affirm_tier_ground  -- tier of the ground (pre-transformation)
#eval efl_affirm_tier  -- the Grammar's own verdict on the closed object
