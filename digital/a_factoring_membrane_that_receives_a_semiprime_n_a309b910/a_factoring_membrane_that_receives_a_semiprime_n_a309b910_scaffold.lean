-- IGProtocol scaffold: ⊢ → ⋈ → ⋈ → ⋈ → ⋈ → ⋈ → ⋈ → ⋈ → ⊙ → ≻ → ∈ → ⊤ → ≻ → ⋈ → ≻ → ⋈ → ≻ → ⋈ → ≺ → ∈ → ⊤ → ≻ → ⋈ → ≻ → ⋈ → ∋ → ⋈ → ≺ → ≻ → ⊡ → ∈ → ⊤ → ≻ → ⋈ → ≺ → ⊞ → ∋ → ⊡ → ⊤ → ⋈ → ⊤ → ⊤ → ⊤ → ⊣ → ⊡ → ⊙
-- Class: A factoring membrane that receives a semiprime N alone and discovers its factors by carrying the same correlated factor/product/carry relation through successive IMASM dialects. It finds a route whose rules make the relationship between N and its factors explicit and usable for extraction. Each dialect transforms the state returned by the preceding dialect. Nested re-entry preserves and composes the resulting alternatives, while enclosing banks retain their correlations across reversal. Returned constraints feed back into that same resident relation until a proper divisor emerges. The complete source-bound computational state is prepared and baked into a self-contained executable. Execution triggers the prepared membrane and emits its terminal result when the divisor, derived quotient, zero remainder, exact product N, and paired boundary close together.
-- Fingerprint: sig=(30,5,8,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=46
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(19, 25), (30, 36)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑼  | initial object — ground of distinction
--   [1] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [2] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [3] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [4] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [5] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [6] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [7] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [8] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription
--   [9] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [12] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [13] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [14] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [15] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [16] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [17] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [18] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [19] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [20] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [21] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [22] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [23] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [24] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [25] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [26] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [27] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [28] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [29] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [30] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [31] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [32] ≻      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [33] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [34] ≺      pol    := 𐑗               𐑗 → 𐑗  | reverse morphism — parity flip
--   [35] ⊞    stoi   := 𐑳               𐑳 → 𐑳  | engage paradox — B-state, both arms
--   [36] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [37] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [38] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [39] ⋈     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [40] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [41] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [42] ⊤     crit   := ⊙               ⊙ → ⊙  | evaluate-true — criticality gate open
--   [43] ⊣     top    := 𐑡               𐑡 → 𐑡  | terminal object — connectivity boundary
--   [44] ⊡      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [45] ⊙   gram   := 𐑠               𐑠 → 𐑠  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_factoring_membrane_that_receives_a_b71cfa_initial : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s8 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s33 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s34 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s35 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s36 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s37 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s38 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s39 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s40 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s41 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s42 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s43 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s44 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_s45 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_factoring_membrane_that_receives_a_b71cfa_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l16 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l21 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l28 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l32 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l33 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l34 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l35 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l36 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l37 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_l38 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l39 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l40 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l41 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l42 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l43 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_factoring_membrane_that_receives_a_b71cfa_l44 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def a_factoring_membrane_that_receives_a_b71cfa_l45 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_factoring_membrane_that_receives_a_b71cfa_protocol : IGProtocol a_factoring_membrane_that_receives_a_b71cfa_initial a_factoring_membrane_that_receives_a_b71cfa_s45 :=
  .withGram Grammar.measure <|
  (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l0 a_factoring_membrane_that_receives_a_b71cfa_initial a_factoring_membrane_that_receives_a_b71cfa_s0) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l1 a_factoring_membrane_that_receives_a_b71cfa_s0 a_factoring_membrane_that_receives_a_b71cfa_s1) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l2 a_factoring_membrane_that_receives_a_b71cfa_s1 a_factoring_membrane_that_receives_a_b71cfa_s2) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l3 a_factoring_membrane_that_receives_a_b71cfa_s2 a_factoring_membrane_that_receives_a_b71cfa_s3) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l4 a_factoring_membrane_that_receives_a_b71cfa_s3 a_factoring_membrane_that_receives_a_b71cfa_s4) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l5 a_factoring_membrane_that_receives_a_b71cfa_s4 a_factoring_membrane_that_receives_a_b71cfa_s5) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l6 a_factoring_membrane_that_receives_a_b71cfa_s5 a_factoring_membrane_that_receives_a_b71cfa_s6) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l7 a_factoring_membrane_that_receives_a_b71cfa_s6 a_factoring_membrane_that_receives_a_b71cfa_s7) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l8 a_factoring_membrane_that_receives_a_b71cfa_s7 a_factoring_membrane_that_receives_a_b71cfa_s8) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l9 a_factoring_membrane_that_receives_a_b71cfa_s8 a_factoring_membrane_that_receives_a_b71cfa_s9) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l10 a_factoring_membrane_that_receives_a_b71cfa_s9 a_factoring_membrane_that_receives_a_b71cfa_s10) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l11 a_factoring_membrane_that_receives_a_b71cfa_s10 a_factoring_membrane_that_receives_a_b71cfa_s11) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l12 a_factoring_membrane_that_receives_a_b71cfa_s11 a_factoring_membrane_that_receives_a_b71cfa_s12) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l13 a_factoring_membrane_that_receives_a_b71cfa_s12 a_factoring_membrane_that_receives_a_b71cfa_s13) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l14 a_factoring_membrane_that_receives_a_b71cfa_s13 a_factoring_membrane_that_receives_a_b71cfa_s14) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l15 a_factoring_membrane_that_receives_a_b71cfa_s14 a_factoring_membrane_that_receives_a_b71cfa_s15) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l16 a_factoring_membrane_that_receives_a_b71cfa_s15 a_factoring_membrane_that_receives_a_b71cfa_s16) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l17 a_factoring_membrane_that_receives_a_b71cfa_s16 a_factoring_membrane_that_receives_a_b71cfa_s17) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l18 a_factoring_membrane_that_receives_a_b71cfa_s17 a_factoring_membrane_that_receives_a_b71cfa_s18) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l19 a_factoring_membrane_that_receives_a_b71cfa_s18 a_factoring_membrane_that_receives_a_b71cfa_s19) (.seq (.prod (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l20 a_factoring_membrane_that_receives_a_b71cfa_s19 a_factoring_membrane_that_receives_a_b71cfa_s20) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l21 a_factoring_membrane_that_receives_a_b71cfa_s20 a_factoring_membrane_that_receives_a_b71cfa_s21) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l22 a_factoring_membrane_that_receives_a_b71cfa_s21 a_factoring_membrane_that_receives_a_b71cfa_s22) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l23 a_factoring_membrane_that_receives_a_b71cfa_s22 a_factoring_membrane_that_receives_a_b71cfa_s23) (.arrow a_factoring_membrane_that_receives_a_b71cfa_l24 a_factoring_membrane_that_receives_a_b71cfa_s23 a_factoring_membrane_that_receives_a_b71cfa_s24))))) (.refl a_factoring_membrane_that_receives_a_b71cfa_s19)) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l25 (tensorProduct a_factoring_membrane_that_receives_a_b71cfa_s24 a_factoring_membrane_that_receives_a_b71cfa_s19) a_factoring_membrane_that_receives_a_b71cfa_s25) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l26 a_factoring_membrane_that_receives_a_b71cfa_s25 a_factoring_membrane_that_receives_a_b71cfa_s26) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l27 a_factoring_membrane_that_receives_a_b71cfa_s26 a_factoring_membrane_that_receives_a_b71cfa_s27) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l28 a_factoring_membrane_that_receives_a_b71cfa_s27 a_factoring_membrane_that_receives_a_b71cfa_s28) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l29 a_factoring_membrane_that_receives_a_b71cfa_s28 a_factoring_membrane_that_receives_a_b71cfa_s29) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l30 a_factoring_membrane_that_receives_a_b71cfa_s29 a_factoring_membrane_that_receives_a_b71cfa_s30) (.seq (.prod (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l31 a_factoring_membrane_that_receives_a_b71cfa_s30 a_factoring_membrane_that_receives_a_b71cfa_s31) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l32 a_factoring_membrane_that_receives_a_b71cfa_s31 a_factoring_membrane_that_receives_a_b71cfa_s32) (.arrow a_factoring_membrane_that_receives_a_b71cfa_l33 a_factoring_membrane_that_receives_a_b71cfa_s32 a_factoring_membrane_that_receives_a_b71cfa_s33))) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l34 a_factoring_membrane_that_receives_a_b71cfa_s30 a_factoring_membrane_that_receives_a_b71cfa_s34) (.arrow a_factoring_membrane_that_receives_a_b71cfa_l35 a_factoring_membrane_that_receives_a_b71cfa_s34 a_factoring_membrane_that_receives_a_b71cfa_s35))) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l36 (tensorProduct a_factoring_membrane_that_receives_a_b71cfa_s33 a_factoring_membrane_that_receives_a_b71cfa_s35) a_factoring_membrane_that_receives_a_b71cfa_s36) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l37 a_factoring_membrane_that_receives_a_b71cfa_s36 a_factoring_membrane_that_receives_a_b71cfa_s37) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l38 a_factoring_membrane_that_receives_a_b71cfa_s37 a_factoring_membrane_that_receives_a_b71cfa_s38) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l39 a_factoring_membrane_that_receives_a_b71cfa_s38 a_factoring_membrane_that_receives_a_b71cfa_s39) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l40 a_factoring_membrane_that_receives_a_b71cfa_s39 a_factoring_membrane_that_receives_a_b71cfa_s40) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l41 a_factoring_membrane_that_receives_a_b71cfa_s40 a_factoring_membrane_that_receives_a_b71cfa_s41) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l42 a_factoring_membrane_that_receives_a_b71cfa_s41 a_factoring_membrane_that_receives_a_b71cfa_s42) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l43 a_factoring_membrane_that_receives_a_b71cfa_s42 a_factoring_membrane_that_receives_a_b71cfa_s43) (.seq (.arrow a_factoring_membrane_that_receives_a_b71cfa_l44 a_factoring_membrane_that_receives_a_b71cfa_s43 a_factoring_membrane_that_receives_a_b71cfa_s44) (.arrow a_factoring_membrane_that_receives_a_b71cfa_l45 a_factoring_membrane_that_receives_a_b71cfa_s44 a_factoring_membrane_that_receives_a_b71cfa_s45))))))))))))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_factoring_membrane_that_receives_a_b71cfa_true_arm : IGProtocol a_factoring_membrane_that_receives_a_b71cfa_initial a_factoring_membrane_that_receives_a_b71cfa_s45 :=
  (a_factoring_membrane_that_receives_a_b71cfa_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def a_factoring_membrane_that_receives_a_b71cfa_tier_ground : OuroboricityTier := TierFunctor.obj a_factoring_membrane_that_receives_a_b71cfa_initial
def a_factoring_membrane_that_receives_a_b71cfa_tier : OuroboricityTier := TierFunctor.obj a_factoring_membrane_that_receives_a_b71cfa_s45
#eval a_factoring_membrane_that_receives_a_b71cfa_tier_ground  -- tier of the ground (pre-transformation)
#eval a_factoring_membrane_that_receives_a_b71cfa_tier  -- the Grammar's tuple-tier verdict

theorem a_factoring_membrane_that_receives_a_b71cfa_protocol_depth :
    a_factoring_membrane_that_receives_a_b71cfa_protocol.depth = 44 := by rfl

end Imscribing