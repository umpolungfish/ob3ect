-- IGProtocol scaffold: ⊢ → ⊣ → ≻ → ∈ → ⊤ → ⋈ → ≻ → ∈ → ⊤ → ⋈ → ≻ → ∈ → ⊤ → ⊙ → ⊡ → ∋ → ≺ → ∈ → ⊥ → ⊡ → ∋ → ⊞ → ⋈ → ≻ → ∈ → ⊤ → ⋈ → ≻ → ∈ → ⊥ → ∋ → ≺ → ⊣ → ⊙
-- Class: Prime Finder
-- Fingerprint: sig=(16,9,7,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=34
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(11, 15), (17, 20), (28, 30)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] ≻      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] ∈    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [5] ⋈     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [6] ≻      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [7] ∈    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [8] ⊤     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [9] ⋈     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [10] ≻      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ⊙   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [14] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [16] ≺      pol    := 𐑗               𐑙 → 𐑚  | reverse morphism — parity flip
--   [17] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [19] ⊡      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [20] ∋     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [21] ⊞    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [22] ⋈     fid    := 𐑱               𐑳 → 𐑾  | composition — regime coherence
--   [23] ≻      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [24] ∈    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [25] ⊤     crit   := ⊙               𐑚 → 𐑱  | evaluate-true — criticality gate open
--   [26] ⋈     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [27] ≻      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [28] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [29] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [30] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [31] ≺      pol    := 𐑗               𐑙 → 𐑡  | reverse morphism — parity flip
--   [32] ⊣     top    := 𐑡               𐑗 → 𐑠  | terminal object — connectivity boundary
--   [33] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def prime_finder_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def prime_finder_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def prime_finder_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def prime_finder_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def prime_finder_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def prime_finder_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def prime_finder_s33 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def prime_finder_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def prime_finder_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def prime_finder_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def prime_finder_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def prime_finder_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l27 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def prime_finder_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l32 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def prime_finder_l33 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def prime_finder_protocol : IGProtocol prime_finder_s0 prime_finder_s33 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct prime_finder_s15 prime_finder_s15 = prime_finder_s15 (idempotent)
  (.seq (.arrow prime_finder_l0 prime_finder_s0 prime_finder_s1) (.seq (.arrow prime_finder_l1 prime_finder_s1 prime_finder_s2) (.seq (.arrow prime_finder_l2 prime_finder_s2 prime_finder_s3) (.seq (.arrow prime_finder_l3 prime_finder_s3 prime_finder_s4) (.seq (.arrow prime_finder_l4 prime_finder_s4 prime_finder_s5) (.seq (.arrow prime_finder_l5 prime_finder_s5 prime_finder_s6) (.seq (.arrow prime_finder_l6 prime_finder_s6 prime_finder_s7) (.seq (.arrow prime_finder_l7 prime_finder_s7 prime_finder_s8) (.seq (.arrow prime_finder_l8 prime_finder_s8 prime_finder_s9) (.seq (.arrow prime_finder_l9 prime_finder_s9 prime_finder_s10) (.seq (.arrow prime_finder_l10 prime_finder_s10 prime_finder_s11) (.seq (.prod (.arrow prime_finder_l11 prime_finder_s11 prime_finder_s15) (.arrow prime_finder_l11 prime_finder_s11 prime_finder_s15)) (.seq (.arrow prime_finder_l15 prime_finder_s15 prime_finder_s15) (.seq (.arrow prime_finder_l15 prime_finder_s15 prime_finder_s16) (.seq (.arrow prime_finder_l16 prime_finder_s16 prime_finder_s17) (.seq (.arrow prime_finder_l17 prime_finder_s17 prime_finder_s18) (.seq (.arrow prime_finder_l18 prime_finder_s18 prime_finder_s19) (.seq (.arrow prime_finder_l19 prime_finder_s19 prime_finder_s20) (.seq (.arrow prime_finder_l20 prime_finder_s20 prime_finder_s21) (.seq (.arrow prime_finder_l21 prime_finder_s21 prime_finder_s22) (.seq (.arrow prime_finder_l22 prime_finder_s22 prime_finder_s23) (.seq (.arrow prime_finder_l23 prime_finder_s23 prime_finder_s24) (.seq (.arrow prime_finder_l24 prime_finder_s24 prime_finder_s25) (.seq (.arrow prime_finder_l25 prime_finder_s25 prime_finder_s26) (.seq (.arrow prime_finder_l26 prime_finder_s26 prime_finder_s27) (.seq (.arrow prime_finder_l27 prime_finder_s27 prime_finder_s28) (.seq (.arrow prime_finder_l28 prime_finder_s28 prime_finder_s29) (.seq (.arrow prime_finder_l29 prime_finder_s29 prime_finder_s30) (.seq (.arrow prime_finder_l30 prime_finder_s30 prime_finder_s31) (.seq (.arrow prime_finder_l31 prime_finder_s31 prime_finder_s32) (.arrow prime_finder_l32 prime_finder_s32 prime_finder_s33)))))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def prime_finder_true_arm : IGProtocol prime_finder_s0 prime_finder_s33 :=
  (prime_finder_protocol).restrictToEVALT

-- false arm
noncomputable def prime_finder_false_arm : IGProtocol prime_finder_s0 prime_finder_s33 :=
  (prime_finder_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def prime_finder_tier_ground : OuroboricityTier := TierFunctor.obj prime_finder_s0
def prime_finder_tier : OuroboricityTier := TierFunctor.obj prime_finder_s33
#eval prime_finder_tier_ground  -- tier of the ground (pre-transformation)
#eval prime_finder_tier  -- the Grammar's own verdict on the closed object
