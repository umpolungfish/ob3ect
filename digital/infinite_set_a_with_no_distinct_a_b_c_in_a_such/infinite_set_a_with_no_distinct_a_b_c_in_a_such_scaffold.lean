-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → FSPLIT → EVALT → FFUSE → IFIX → CLINK → AFWD → FSPLIT → AREV → EVALF → FFUSE → CLINK → AFWD → FSPLIT → EVALT → FFUSE → IFIX → IMSCRIB → TANCH
-- Class: "infinite set A with no distinct a,b,c in A such that a divides b+c and b,c > a"
-- Fingerprint: sig=(10,6,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=21
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(3, 5), (9, 12), (15, 17)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [7] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [8] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑾  | composition — regime coherence
--   [14] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [15] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [18] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [19] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [20] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def infinite_set_a_with_no_distinct_a_b_c_df6407_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def infinite_set_a_with_no_distinct_a_b_c_df6407_protocol : IGProtocol infinite_set_a_with_no_distinct_a_b_c_df6407_s0 infinite_set_a_with_no_distinct_a_b_c_df6407_s20 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct infinite_set_a_with_no_distinct_a_b_c_df6407_s5 infinite_set_a_with_no_distinct_a_b_c_df6407_s5 = infinite_set_a_with_no_distinct_a_b_c_df6407_s5 (idempotent)
  (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l0 infinite_set_a_with_no_distinct_a_b_c_df6407_s0 infinite_set_a_with_no_distinct_a_b_c_df6407_s1) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l1 infinite_set_a_with_no_distinct_a_b_c_df6407_s1 infinite_set_a_with_no_distinct_a_b_c_df6407_s2) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l2 infinite_set_a_with_no_distinct_a_b_c_df6407_s2 infinite_set_a_with_no_distinct_a_b_c_df6407_s3) (.seq (.prod (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l3 infinite_set_a_with_no_distinct_a_b_c_df6407_s3 infinite_set_a_with_no_distinct_a_b_c_df6407_s5) (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l3 infinite_set_a_with_no_distinct_a_b_c_df6407_s3 infinite_set_a_with_no_distinct_a_b_c_df6407_s5)) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l5 infinite_set_a_with_no_distinct_a_b_c_df6407_s5 infinite_set_a_with_no_distinct_a_b_c_df6407_s5) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l5 infinite_set_a_with_no_distinct_a_b_c_df6407_s5 infinite_set_a_with_no_distinct_a_b_c_df6407_s6) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l6 infinite_set_a_with_no_distinct_a_b_c_df6407_s6 infinite_set_a_with_no_distinct_a_b_c_df6407_s7) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l7 infinite_set_a_with_no_distinct_a_b_c_df6407_s7 infinite_set_a_with_no_distinct_a_b_c_df6407_s8) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l8 infinite_set_a_with_no_distinct_a_b_c_df6407_s8 infinite_set_a_with_no_distinct_a_b_c_df6407_s9) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l9 infinite_set_a_with_no_distinct_a_b_c_df6407_s9 infinite_set_a_with_no_distinct_a_b_c_df6407_s10) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l10 infinite_set_a_with_no_distinct_a_b_c_df6407_s10 infinite_set_a_with_no_distinct_a_b_c_df6407_s11) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l11 infinite_set_a_with_no_distinct_a_b_c_df6407_s11 infinite_set_a_with_no_distinct_a_b_c_df6407_s12) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l12 infinite_set_a_with_no_distinct_a_b_c_df6407_s12 infinite_set_a_with_no_distinct_a_b_c_df6407_s13) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l13 infinite_set_a_with_no_distinct_a_b_c_df6407_s13 infinite_set_a_with_no_distinct_a_b_c_df6407_s14) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l14 infinite_set_a_with_no_distinct_a_b_c_df6407_s14 infinite_set_a_with_no_distinct_a_b_c_df6407_s15) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l15 infinite_set_a_with_no_distinct_a_b_c_df6407_s15 infinite_set_a_with_no_distinct_a_b_c_df6407_s16) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l16 infinite_set_a_with_no_distinct_a_b_c_df6407_s16 infinite_set_a_with_no_distinct_a_b_c_df6407_s17) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l17 infinite_set_a_with_no_distinct_a_b_c_df6407_s17 infinite_set_a_with_no_distinct_a_b_c_df6407_s18) (.seq (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l18 infinite_set_a_with_no_distinct_a_b_c_df6407_s18 infinite_set_a_with_no_distinct_a_b_c_df6407_s19) (.arrow infinite_set_a_with_no_distinct_a_b_c_df6407_l19 infinite_set_a_with_no_distinct_a_b_c_df6407_s19 infinite_set_a_with_no_distinct_a_b_c_df6407_s20))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def infinite_set_a_with_no_distinct_a_b_c_df6407_true_arm : IGProtocol infinite_set_a_with_no_distinct_a_b_c_df6407_s0 infinite_set_a_with_no_distinct_a_b_c_df6407_s20 :=
  (infinite_set_a_with_no_distinct_a_b_c_df6407_protocol).restrictToEVALT

-- false arm
noncomputable def infinite_set_a_with_no_distinct_a_b_c_df6407_false_arm : IGProtocol infinite_set_a_with_no_distinct_a_b_c_df6407_s0 infinite_set_a_with_no_distinct_a_b_c_df6407_s20 :=
  (infinite_set_a_with_no_distinct_a_b_c_df6407_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def infinite_set_a_with_no_distinct_a_b_c_df6407_tier : OuroboricityTier := TierFunctor.obj infinite_set_a_with_no_distinct_a_b_c_df6407_s0
#eval infinite_set_a_with_no_distinct_a_b_c_df6407_tier  -- the Grammar's own verdict on its tier
