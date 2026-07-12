-- IGProtocol scaffold: VINIT → AFWD → AFWD → IMSCRIB → AFWD → IFIX → CLINK → AFWD → IFIX → CLINK → AFWD → IFIX → TANCH → FSPLIT → AFWD → AFWD → FFUSE → EVALT → IFIX
-- Class: Erdős distinct subset sum problem space
-- Fingerprint: sig=(12,2,1,4)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(13, 16)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑠  | forward morphism — bidirectional arrow
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑾  | identity — self-imscription
--   [4] AFWD      rel    := 𐑾               𐑠 → 𐑭  | forward morphism — bidirectional arrow
--   [5] IFIX      prot   := 𐑭               𐑾 → 𐑱  | irreversible fixation — winding number
--   [6] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [7] AFWD      rel    := 𐑾               𐑱 → 𐑭  | forward morphism — bidirectional arrow
--   [8] IFIX      prot   := 𐑭               𐑾 → 𐑱  | irreversible fixation — winding number
--   [9] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [10] AFWD      rel    := 𐑾               𐑱 → 𐑭  | forward morphism — bidirectional arrow
--   [11] IFIX      prot   := 𐑭               𐑾 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑚  | terminal object — connectivity boundary
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [15] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [16] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [17] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [18] IFIX      prot   := 𐑭               ⊙ → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def erd_s_distinct_subset_sum_problem_space_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def erd_s_distinct_subset_sum_problem_space_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def erd_s_distinct_subset_sum_problem_space_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def erd_s_distinct_subset_sum_problem_space_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def erd_s_distinct_subset_sum_problem_space_protocol : IGProtocol erd_s_distinct_subset_sum_problem_space_s0 erd_s_distinct_subset_sum_problem_space_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct erd_s_distinct_subset_sum_problem_space_s16 erd_s_distinct_subset_sum_problem_space_s16 = erd_s_distinct_subset_sum_problem_space_s16 (idempotent)
  (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l0 erd_s_distinct_subset_sum_problem_space_s0 erd_s_distinct_subset_sum_problem_space_s1) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l1 erd_s_distinct_subset_sum_problem_space_s1 erd_s_distinct_subset_sum_problem_space_s2) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l2 erd_s_distinct_subset_sum_problem_space_s2 erd_s_distinct_subset_sum_problem_space_s3) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l3 erd_s_distinct_subset_sum_problem_space_s3 erd_s_distinct_subset_sum_problem_space_s4) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l4 erd_s_distinct_subset_sum_problem_space_s4 erd_s_distinct_subset_sum_problem_space_s5) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l5 erd_s_distinct_subset_sum_problem_space_s5 erd_s_distinct_subset_sum_problem_space_s6) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l6 erd_s_distinct_subset_sum_problem_space_s6 erd_s_distinct_subset_sum_problem_space_s7) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l7 erd_s_distinct_subset_sum_problem_space_s7 erd_s_distinct_subset_sum_problem_space_s8) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l8 erd_s_distinct_subset_sum_problem_space_s8 erd_s_distinct_subset_sum_problem_space_s9) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l9 erd_s_distinct_subset_sum_problem_space_s9 erd_s_distinct_subset_sum_problem_space_s10) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l10 erd_s_distinct_subset_sum_problem_space_s10 erd_s_distinct_subset_sum_problem_space_s11) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l11 erd_s_distinct_subset_sum_problem_space_s11 erd_s_distinct_subset_sum_problem_space_s12) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l12 erd_s_distinct_subset_sum_problem_space_s12 erd_s_distinct_subset_sum_problem_space_s13) (.seq (.prod (.arrow erd_s_distinct_subset_sum_problem_space_l13 erd_s_distinct_subset_sum_problem_space_s13 erd_s_distinct_subset_sum_problem_space_s16) (.arrow erd_s_distinct_subset_sum_problem_space_l13 erd_s_distinct_subset_sum_problem_space_s13 erd_s_distinct_subset_sum_problem_space_s16)) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l16 erd_s_distinct_subset_sum_problem_space_s16 erd_s_distinct_subset_sum_problem_space_s16) (.seq (.arrow erd_s_distinct_subset_sum_problem_space_l16 erd_s_distinct_subset_sum_problem_space_s16 erd_s_distinct_subset_sum_problem_space_s17) (.arrow erd_s_distinct_subset_sum_problem_space_l17 erd_s_distinct_subset_sum_problem_space_s17 erd_s_distinct_subset_sum_problem_space_s18)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def erd_s_distinct_subset_sum_problem_space_true_arm : IGProtocol erd_s_distinct_subset_sum_problem_space_s0 erd_s_distinct_subset_sum_problem_space_s18 :=
  (erd_s_distinct_subset_sum_problem_space_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def erd_s_distinct_subset_sum_problem_space_tier : OuroboricityTier := TierFunctor.obj erd_s_distinct_subset_sum_problem_space_s0
#eval erd_s_distinct_subset_sum_problem_space_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem erd_s_distinct_subset_sum_problem_space_frobenius :
    igFrobeniusAlg.mul erd_s_distinct_subset_sum_problem_space_s0 erd_s_distinct_subset_sum_problem_space_s0 = erd_s_distinct_subset_sum_problem_space_s0 :=
  igFrobAlg_self_fusion erd_s_distinct_subset_sum_problem_space_s0
