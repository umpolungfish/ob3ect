-- IGProtocol scaffold: ⊢ → ◻ → ≻ → ≺ → ∈ → ⊤ → ⋈ → ∋ → ∈ → ⊤ → ∋ → ∈ → ⊤ → ◻ → ∋ → ∈ → ⊤ → ∋ → ∈ → ⊤ → ⊥ → ∋ → ∈ → ⊤ → ∋ → ∈ → ⊤ → ⊣ → ∈ → ⊞ → ⋈ → ⊤ → ⊥ → ∋ → ∈ → ⊤ → ∋ → ∈ → ⊤ → ∋ → ≺ → ≻ → ⋈ → ⊙ → ∈ → ⊥ → ∋ → ⊣
-- Class: blind_abstract_machine
-- Fingerprint: sig=(11,21,14,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=48
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 7), (8, 10), (11, 14), (15, 17), (18, 21), (22, 24), (28, 33), (34, 36), (37, 39), (44, 46)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] ◻      prot   := 𐑭               𐑼 → 𐑾  | irreversible fixation — winding number
--   [2] ≻      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [3] ≺      pol    := 𐑗               𐑾 → 𐑚  | reverse morphism — parity flip
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [8] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [13] ◻      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [15] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [18] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [19] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [21] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [22] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [23] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [24] ∋     stoi   := 𐑙               𐑙 → 𐑚  | fuse μ — assembly mode
--   [25] ∈    gran   := 𐑚               𐑙 → ⊙  | split δ — range decomposition
--   [26] ⊤     crit   := ⊙               𐑚 → 𐑡  | evaluate-true — criticality gate open
--   [27] ⊣     top    := 𐑡               ⊙ → 𐑚  | terminal object — connectivity boundary
--   [28] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [29] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [30] ⋈     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [31] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [32] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [33] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [34] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [35] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [36] ∋     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [37] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [38] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [39] ∋     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [40] ≺      pol    := 𐑗               𐑙 → 𐑾  | reverse morphism — parity flip
--   [41] ≻      rel    := 𐑾               𐑗 → 𐑱  | forward morphism — bidirectional arrow
--   [42] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [43] ⊙   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [44] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [45] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [46] ∋     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [47] ⊣     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def blind_abstract_machine_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def blind_abstract_machine_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def blind_abstract_machine_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def blind_abstract_machine_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def blind_abstract_machine_s33 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s34 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s35 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s36 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s37 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s38 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s39 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s40 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s41 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s42 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s43 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s44 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s45 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s46 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def blind_abstract_machine_s47 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def blind_abstract_machine_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def blind_abstract_machine_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def blind_abstract_machine_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l23 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l25 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l27 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l29 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def blind_abstract_machine_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l31 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l32 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def blind_abstract_machine_l33 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l34 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l35 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l36 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l37 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l38 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l39 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l40 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l41 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l42 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l43 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l44 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l45 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def blind_abstract_machine_l46 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def blind_abstract_machine_l47 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def blind_abstract_machine_protocol : IGProtocol blind_abstract_machine_s0 blind_abstract_machine_s47 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct blind_abstract_machine_s7 blind_abstract_machine_s7 = blind_abstract_machine_s7 (idempotent)
  (.seq (.arrow blind_abstract_machine_l0 blind_abstract_machine_s0 blind_abstract_machine_s1) (.seq (.arrow blind_abstract_machine_l1 blind_abstract_machine_s1 blind_abstract_machine_s2) (.seq (.arrow blind_abstract_machine_l2 blind_abstract_machine_s2 blind_abstract_machine_s3) (.seq (.arrow blind_abstract_machine_l3 blind_abstract_machine_s3 blind_abstract_machine_s4) (.seq (.prod (.arrow blind_abstract_machine_l4 blind_abstract_machine_s4 blind_abstract_machine_s7) (.arrow blind_abstract_machine_l4 blind_abstract_machine_s4 blind_abstract_machine_s7)) (.seq (.arrow blind_abstract_machine_l7 blind_abstract_machine_s7 blind_abstract_machine_s7) (.seq (.arrow blind_abstract_machine_l7 blind_abstract_machine_s7 blind_abstract_machine_s8) (.seq (.arrow blind_abstract_machine_l8 blind_abstract_machine_s8 blind_abstract_machine_s9) (.seq (.arrow blind_abstract_machine_l9 blind_abstract_machine_s9 blind_abstract_machine_s10) (.seq (.arrow blind_abstract_machine_l10 blind_abstract_machine_s10 blind_abstract_machine_s11) (.seq (.arrow blind_abstract_machine_l11 blind_abstract_machine_s11 blind_abstract_machine_s12) (.seq (.arrow blind_abstract_machine_l12 blind_abstract_machine_s12 blind_abstract_machine_s13) (.seq (.arrow blind_abstract_machine_l13 blind_abstract_machine_s13 blind_abstract_machine_s14) (.seq (.arrow blind_abstract_machine_l14 blind_abstract_machine_s14 blind_abstract_machine_s15) (.seq (.arrow blind_abstract_machine_l15 blind_abstract_machine_s15 blind_abstract_machine_s16) (.seq (.arrow blind_abstract_machine_l16 blind_abstract_machine_s16 blind_abstract_machine_s17) (.seq (.arrow blind_abstract_machine_l17 blind_abstract_machine_s17 blind_abstract_machine_s18) (.seq (.arrow blind_abstract_machine_l18 blind_abstract_machine_s18 blind_abstract_machine_s19) (.seq (.arrow blind_abstract_machine_l19 blind_abstract_machine_s19 blind_abstract_machine_s20) (.seq (.arrow blind_abstract_machine_l20 blind_abstract_machine_s20 blind_abstract_machine_s21) (.seq (.arrow blind_abstract_machine_l21 blind_abstract_machine_s21 blind_abstract_machine_s22) (.seq (.arrow blind_abstract_machine_l22 blind_abstract_machine_s22 blind_abstract_machine_s23) (.seq (.arrow blind_abstract_machine_l23 blind_abstract_machine_s23 blind_abstract_machine_s24) (.seq (.arrow blind_abstract_machine_l24 blind_abstract_machine_s24 blind_abstract_machine_s25) (.seq (.arrow blind_abstract_machine_l25 blind_abstract_machine_s25 blind_abstract_machine_s26) (.seq (.arrow blind_abstract_machine_l26 blind_abstract_machine_s26 blind_abstract_machine_s27) (.seq (.arrow blind_abstract_machine_l27 blind_abstract_machine_s27 blind_abstract_machine_s28) (.seq (.arrow blind_abstract_machine_l28 blind_abstract_machine_s28 blind_abstract_machine_s29) (.seq (.arrow blind_abstract_machine_l29 blind_abstract_machine_s29 blind_abstract_machine_s30) (.seq (.arrow blind_abstract_machine_l30 blind_abstract_machine_s30 blind_abstract_machine_s31) (.seq (.arrow blind_abstract_machine_l31 blind_abstract_machine_s31 blind_abstract_machine_s32) (.seq (.arrow blind_abstract_machine_l32 blind_abstract_machine_s32 blind_abstract_machine_s33) (.seq (.arrow blind_abstract_machine_l33 blind_abstract_machine_s33 blind_abstract_machine_s34) (.seq (.arrow blind_abstract_machine_l34 blind_abstract_machine_s34 blind_abstract_machine_s35) (.seq (.arrow blind_abstract_machine_l35 blind_abstract_machine_s35 blind_abstract_machine_s36) (.seq (.arrow blind_abstract_machine_l36 blind_abstract_machine_s36 blind_abstract_machine_s37) (.seq (.arrow blind_abstract_machine_l37 blind_abstract_machine_s37 blind_abstract_machine_s38) (.seq (.arrow blind_abstract_machine_l38 blind_abstract_machine_s38 blind_abstract_machine_s39) (.seq (.arrow blind_abstract_machine_l39 blind_abstract_machine_s39 blind_abstract_machine_s40) (.seq (.arrow blind_abstract_machine_l40 blind_abstract_machine_s40 blind_abstract_machine_s41) (.seq (.arrow blind_abstract_machine_l41 blind_abstract_machine_s41 blind_abstract_machine_s42) (.seq (.arrow blind_abstract_machine_l42 blind_abstract_machine_s42 blind_abstract_machine_s43) (.seq (.arrow blind_abstract_machine_l43 blind_abstract_machine_s43 blind_abstract_machine_s44) (.seq (.arrow blind_abstract_machine_l44 blind_abstract_machine_s44 blind_abstract_machine_s45) (.seq (.arrow blind_abstract_machine_l45 blind_abstract_machine_s45 blind_abstract_machine_s46) (.arrow blind_abstract_machine_l46 blind_abstract_machine_s46 blind_abstract_machine_s47))))))))))))))))))))))))))))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def blind_abstract_machine_true_arm : IGProtocol blind_abstract_machine_s0 blind_abstract_machine_s47 :=
  (blind_abstract_machine_protocol).restrictToEVALT

-- false arm
noncomputable def blind_abstract_machine_false_arm : IGProtocol blind_abstract_machine_s0 blind_abstract_machine_s47 :=
  (blind_abstract_machine_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def blind_abstract_machine_tier_ground : OuroboricityTier := TierFunctor.obj blind_abstract_machine_s0
def blind_abstract_machine_tier : OuroboricityTier := TierFunctor.obj blind_abstract_machine_s47
#eval blind_abstract_machine_tier_ground  -- tier of the ground (pre-transformation)
#eval blind_abstract_machine_tier  -- the Grammar's own verdict on the closed object
