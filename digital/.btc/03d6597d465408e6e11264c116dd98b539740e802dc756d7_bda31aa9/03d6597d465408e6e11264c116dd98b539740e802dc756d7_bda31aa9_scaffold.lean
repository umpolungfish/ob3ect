-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → EVALT → AREV → EVALF → ENGAGR → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → CLINK → AFWD → IMSCRIB → FFUSE → TANCH → IFIX → IFIX
-- Class: 03d6597d465408e6e11264c116dd98b539740e802dc756d7eb88741696e20dfe7d
-- Fingerprint: sig=(130,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=137
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(1, 133)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [17] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [18] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [19] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [20] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [21] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [22] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [23] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [24] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [25] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [26] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [27] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [28] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [29] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [30] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [31] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [32] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [33] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [34] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [35] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [36] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [37] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [38] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [39] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [40] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [41] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [42] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [43] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [44] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [45] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [46] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [47] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [48] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [49] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [50] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [51] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [52] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [53] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [54] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [55] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [56] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [57] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [58] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [59] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [60] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [61] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [62] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [63] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [64] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [65] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [66] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [67] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [68] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [69] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [70] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [71] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [72] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [73] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [74] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [75] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [76] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [77] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [78] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [79] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [80] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [81] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [82] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [83] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [84] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [85] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [86] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [87] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [88] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [89] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [90] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [91] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [92] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [93] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [94] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [95] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [96] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [97] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [98] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [99] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [100] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [101] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [102] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [103] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [104] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [105] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [106] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [107] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [108] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [109] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [110] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [111] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [112] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [113] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [114] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [115] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [116] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [117] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [118] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [119] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [120] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [121] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [122] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [123] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [124] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [125] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [126] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [127] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [128] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [129] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [130] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [131] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [132] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [133] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [134] TANCH     top    := 𐑡               𐑙 → 𐑭  | terminal object — connectivity boundary
--   [135] IFIX      prot   := 𐑭               𐑡 → 𐑭  | irreversible fixation — winding number
--   [136] IFIX      prot   := 𐑭               𐑭 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s22 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s23 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s24 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s25 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s26 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s27 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s28 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s29 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s30 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s31 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s32 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s33 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s34 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s35 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s36 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s37 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s38 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s39 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s40 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s41 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s42 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s43 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s44 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s45 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s46 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s47 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s48 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s49 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s50 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s51 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s52 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s53 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s54 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s55 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s56 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s57 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s58 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s59 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s60 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s61 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s62 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s63 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s64 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s65 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s66 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s67 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s68 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s69 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s70 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s71 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s72 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s73 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s74 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s75 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s76 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s77 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s78 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s79 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s80 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s81 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s82 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s83 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s84 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s85 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s86 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s87 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s88 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s89 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s90 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s91 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s92 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s93 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s94 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s95 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s96 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s97 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s98 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s99 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s100 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s101 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s102 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s103 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s104 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s105 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s106 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s107 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s108 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s109 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s110 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s111 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s112 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s113 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s114 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s115 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s116 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s117 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s118 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s119 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s120 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s121 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s122 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s123 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s124 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s125 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s126 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s127 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s128 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s129 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s130 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s131 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s132 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s134 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s135 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l19 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l21 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l22 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l23 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l24 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l25 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l26 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l27 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l28 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l29 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l30 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l31 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l32 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l33 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l34 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l35 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l36 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l37 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l38 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l39 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l40 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l41 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l42 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l43 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l44 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l45 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l46 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l47 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l48 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l49 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l50 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l51 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l52 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l53 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l54 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l55 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l56 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l57 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l58 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l59 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l60 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l61 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l62 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l63 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l64 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l65 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l66 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l67 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l68 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l69 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l70 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l71 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l72 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l73 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l74 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l75 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l76 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l77 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l78 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l79 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l80 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l81 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l82 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l83 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l84 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l85 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l86 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l87 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l88 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l89 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l90 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l91 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l92 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l93 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l94 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l95 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l96 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l97 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l98 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l99 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l100 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l101 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l102 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l103 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l104 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l105 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l106 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l107 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l108 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l109 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l110 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l111 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l112 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l113 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l114 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l115 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l116 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l117 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l118 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l119 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l120 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l121 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l122 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l123 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l124 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l125 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l126 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l127 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l128 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l129 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l130 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l131 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l132 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l133 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l134 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l135 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l136 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_protocol : IGProtocol 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 = 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 (idempotent)
  (.seq (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s1) (.seq (.prod (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l1 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s1 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133) (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l1 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s1 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133)) (.seq (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l133 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133) (.seq (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l133 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s133 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s134) (.seq (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l134 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s134 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s135) (.arrow 03d6597d465408e6e11264c116dd98b539740e80_bda31a_l135 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s135 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_true_arm : IGProtocol 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136 :=
  (03d6597d465408e6e11264c116dd98b539740e80_bda31a_protocol).restrictToEVALT

-- false arm
noncomputable def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_false_arm : IGProtocol 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136 :=
  (03d6597d465408e6e11264c116dd98b539740e80_bda31a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_tier_ground : OuroboricityTier := TierFunctor.obj 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0
def 03d6597d465408e6e11264c116dd98b539740e80_bda31a_tier : OuroboricityTier := TierFunctor.obj 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s136
#eval 03d6597d465408e6e11264c116dd98b539740e80_bda31a_tier_ground  -- tier of the ground (pre-transformation)
#eval 03d6597d465408e6e11264c116dd98b539740e80_bda31a_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem 03d6597d465408e6e11264c116dd98b539740e80_bda31a_frobenius :
    igFrobeniusAlg.mul 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 = 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0 :=
  igFrobAlg_self_fusion 03d6597d465408e6e11264c116dd98b539740e80_bda31a_s0
