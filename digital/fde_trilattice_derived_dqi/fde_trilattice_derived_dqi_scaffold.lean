-- IGProtocol scaffold: ⊢ → ⊙ → ≻ → ⊙ → ⊤ → ⊙ → ≺ → ⊥ → ⋈ → ⊙ → ⊤ → ⊥ → ∋ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ≺ → ⊤ → ⊥ → ∈ → ⊤ → ⊥ → ∋ → ⋈ → ⊙ → ⊤ → ⊥ → ⊞ → ⊡ → ⊣ → ⊙
-- Class: FDE Trilattice-Derived DQI
-- Fingerprint: sig=(14,5,13,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=33
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(13, 16), (21, 24)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] ⊙   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] ≻      rel    := 𐑾               𐑠 → 𐑠  | forward morphism — bidirectional arrow
--   [3] ⊙   gram   := 𐑠               𐑾 → ⊙  | identity — self-imscription
--   [4] ⊤     crit   := ⊙               𐑠 → 𐑠  | evaluate-true — criticality gate open
--   [5] ⊙   gram   := 𐑠               ⊙ → 𐑗  | identity — self-imscription
--   [6] ≺      pol    := 𐑗               𐑠 → 𐑖  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [8] ⋈     fid    := 𐑱               𐑖 → 𐑠  | composition — regime coherence
--   [9] ⊙   gram   := 𐑠               𐑱 → ⊙  | identity — self-imscription
--   [10] ⊤     crit   := ⊙               𐑠 → 𐑖  | evaluate-true — criticality gate open
--   [11] ⊥     chir   := 𐑖               ⊙ → 𐑙  | evaluate-false — chirality check
--   [12] ∋     stoi   := 𐑙               𐑖 → 𐑚  | fuse μ — assembly mode
--   [13] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [16] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [17] ⋈     fid    := 𐑱               𐑙 → 𐑗  | composition — regime coherence
--   [18] ≺      pol    := 𐑗               𐑱 → ⊙  | reverse morphism — parity flip
--   [19] ⊤     crit   := ⊙               𐑗 → 𐑖  | evaluate-true — criticality gate open
--   [20] ⊥     chir   := 𐑖               ⊙ → 𐑚  | evaluate-false — chirality check
--   [21] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [22] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [23] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [24] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [25] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [26] ⊙   gram   := 𐑠               𐑱 → ⊙  | identity — self-imscription
--   [27] ⊤     crit   := ⊙               𐑠 → 𐑖  | evaluate-true — criticality gate open
--   [28] ⊥     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [29] ⊞    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [30] ⊡      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [31] ⊣     top    := 𐑡               𐑭 → 𐑠  | terminal object — connectivity boundary
--   [32] ⊙   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def fde_trilattice_derived_dqi_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def fde_trilattice_derived_dqi_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def fde_trilattice_derived_dqi_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def fde_trilattice_derived_dqi_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def fde_trilattice_derived_dqi_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def fde_trilattice_derived_dqi_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def fde_trilattice_derived_dqi_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def fde_trilattice_derived_dqi_l32 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def fde_trilattice_derived_dqi_protocol : IGProtocol fde_trilattice_derived_dqi_s0 fde_trilattice_derived_dqi_s32 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct fde_trilattice_derived_dqi_s16 fde_trilattice_derived_dqi_s16 = fde_trilattice_derived_dqi_s16 (idempotent)
  (.seq (.arrow fde_trilattice_derived_dqi_l0 fde_trilattice_derived_dqi_s0 fde_trilattice_derived_dqi_s1) (.seq (.arrow fde_trilattice_derived_dqi_l1 fde_trilattice_derived_dqi_s1 fde_trilattice_derived_dqi_s2) (.seq (.arrow fde_trilattice_derived_dqi_l2 fde_trilattice_derived_dqi_s2 fde_trilattice_derived_dqi_s3) (.seq (.arrow fde_trilattice_derived_dqi_l3 fde_trilattice_derived_dqi_s3 fde_trilattice_derived_dqi_s4) (.seq (.arrow fde_trilattice_derived_dqi_l4 fde_trilattice_derived_dqi_s4 fde_trilattice_derived_dqi_s5) (.seq (.arrow fde_trilattice_derived_dqi_l5 fde_trilattice_derived_dqi_s5 fde_trilattice_derived_dqi_s6) (.seq (.arrow fde_trilattice_derived_dqi_l6 fde_trilattice_derived_dqi_s6 fde_trilattice_derived_dqi_s7) (.seq (.arrow fde_trilattice_derived_dqi_l7 fde_trilattice_derived_dqi_s7 fde_trilattice_derived_dqi_s8) (.seq (.arrow fde_trilattice_derived_dqi_l8 fde_trilattice_derived_dqi_s8 fde_trilattice_derived_dqi_s9) (.seq (.arrow fde_trilattice_derived_dqi_l9 fde_trilattice_derived_dqi_s9 fde_trilattice_derived_dqi_s10) (.seq (.arrow fde_trilattice_derived_dqi_l10 fde_trilattice_derived_dqi_s10 fde_trilattice_derived_dqi_s11) (.seq (.arrow fde_trilattice_derived_dqi_l11 fde_trilattice_derived_dqi_s11 fde_trilattice_derived_dqi_s12) (.seq (.arrow fde_trilattice_derived_dqi_l12 fde_trilattice_derived_dqi_s12 fde_trilattice_derived_dqi_s13) (.seq (.prod (.arrow fde_trilattice_derived_dqi_l13 fde_trilattice_derived_dqi_s13 fde_trilattice_derived_dqi_s16) (.arrow fde_trilattice_derived_dqi_l13 fde_trilattice_derived_dqi_s13 fde_trilattice_derived_dqi_s16)) (.seq (.arrow fde_trilattice_derived_dqi_l16 fde_trilattice_derived_dqi_s16 fde_trilattice_derived_dqi_s16) (.seq (.arrow fde_trilattice_derived_dqi_l16 fde_trilattice_derived_dqi_s16 fde_trilattice_derived_dqi_s17) (.seq (.arrow fde_trilattice_derived_dqi_l17 fde_trilattice_derived_dqi_s17 fde_trilattice_derived_dqi_s18) (.seq (.arrow fde_trilattice_derived_dqi_l18 fde_trilattice_derived_dqi_s18 fde_trilattice_derived_dqi_s19) (.seq (.arrow fde_trilattice_derived_dqi_l19 fde_trilattice_derived_dqi_s19 fde_trilattice_derived_dqi_s20) (.seq (.arrow fde_trilattice_derived_dqi_l20 fde_trilattice_derived_dqi_s20 fde_trilattice_derived_dqi_s21) (.seq (.arrow fde_trilattice_derived_dqi_l21 fde_trilattice_derived_dqi_s21 fde_trilattice_derived_dqi_s22) (.seq (.arrow fde_trilattice_derived_dqi_l22 fde_trilattice_derived_dqi_s22 fde_trilattice_derived_dqi_s23) (.seq (.arrow fde_trilattice_derived_dqi_l23 fde_trilattice_derived_dqi_s23 fde_trilattice_derived_dqi_s24) (.seq (.arrow fde_trilattice_derived_dqi_l24 fde_trilattice_derived_dqi_s24 fde_trilattice_derived_dqi_s25) (.seq (.arrow fde_trilattice_derived_dqi_l25 fde_trilattice_derived_dqi_s25 fde_trilattice_derived_dqi_s26) (.seq (.arrow fde_trilattice_derived_dqi_l26 fde_trilattice_derived_dqi_s26 fde_trilattice_derived_dqi_s27) (.seq (.arrow fde_trilattice_derived_dqi_l27 fde_trilattice_derived_dqi_s27 fde_trilattice_derived_dqi_s28) (.seq (.arrow fde_trilattice_derived_dqi_l28 fde_trilattice_derived_dqi_s28 fde_trilattice_derived_dqi_s29) (.seq (.arrow fde_trilattice_derived_dqi_l29 fde_trilattice_derived_dqi_s29 fde_trilattice_derived_dqi_s30) (.seq (.arrow fde_trilattice_derived_dqi_l30 fde_trilattice_derived_dqi_s30 fde_trilattice_derived_dqi_s31) (.arrow fde_trilattice_derived_dqi_l31 fde_trilattice_derived_dqi_s31 fde_trilattice_derived_dqi_s32)))))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def fde_trilattice_derived_dqi_true_arm : IGProtocol fde_trilattice_derived_dqi_s0 fde_trilattice_derived_dqi_s32 :=
  (fde_trilattice_derived_dqi_protocol).restrictToEVALT

-- false arm
noncomputable def fde_trilattice_derived_dqi_false_arm : IGProtocol fde_trilattice_derived_dqi_s0 fde_trilattice_derived_dqi_s32 :=
  (fde_trilattice_derived_dqi_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def fde_trilattice_derived_dqi_tier_ground : OuroboricityTier := TierFunctor.obj fde_trilattice_derived_dqi_s0
def fde_trilattice_derived_dqi_tier : OuroboricityTier := TierFunctor.obj fde_trilattice_derived_dqi_s32
#eval fde_trilattice_derived_dqi_tier_ground  -- tier of the ground (pre-transformation)
#eval fde_trilattice_derived_dqi_tier  -- the Grammar's own verdict on the closed object
