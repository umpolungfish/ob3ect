-- IGProtocol scaffold: VINIT → AFWD → EVALT → AREV → EVALT → FSPLIT → EVALT → EVALF → CLINK → FFUSE → EVALT → IMSCRIB → AFWD → ENGAGR → EVALT → AFWD → EVALT → CLINK → AFWD → EVALT → IFIX → TANCH
-- Class: structural imscription of the 20 alchemy decoded system from ig-docs/publishing/substack_articles/_batched/alchemy/20_alchemy_decoded, with full Frobenius closure and Lean 4 verification scaffold
-- Fingerprint: sig=(10,2,9,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → ⊙  | forward morphism — bidirectional arrow
--   [2] EVALT     crit   := ⊙               𐑾 → 𐑗  | evaluate-true — criticality gate open
--   [3] AREV      pol    := 𐑗               ⊙ → ⊙  | reverse morphism — parity flip
--   [4] EVALT     crit   := ⊙               𐑗 → 𐑚  | evaluate-true — criticality gate open
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [10] EVALT     crit   := ⊙               𐑙 → 𐑠  | evaluate-true — criticality gate open
--   [11] IMSCRIB   gram   := 𐑠               ⊙ → 𐑾  | identity — self-imscription
--   [12] AFWD      rel    := 𐑾               𐑠 → 𐑳  | forward morphism — bidirectional arrow
--   [13] ENGAGR    stoi   := 𐑳               𐑾 → ⊙  | engage paradox — B-state, both arms
--   [14] EVALT     crit   := ⊙               𐑳 → 𐑾  | evaluate-true — criticality gate open
--   [15] AFWD      rel    := 𐑾               ⊙ → ⊙  | forward morphism — bidirectional arrow
--   [16] EVALT     crit   := ⊙               𐑾 → 𐑱  | evaluate-true — criticality gate open
--   [17] CLINK     fid    := 𐑱               ⊙ → 𐑾  | composition — regime coherence
--   [18] AFWD      rel    := 𐑾               𐑱 → ⊙  | forward morphism — bidirectional arrow
--   [19] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [20] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def structural_imscription_of_the_20_1927cd_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def structural_imscription_of_the_20_1927cd_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def structural_imscription_of_the_20_1927cd_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def structural_imscription_of_the_20_1927cd_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l18 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def structural_imscription_of_the_20_1927cd_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def structural_imscription_of_the_20_1927cd_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def structural_imscription_of_the_20_1927cd_protocol : IGProtocol structural_imscription_of_the_20_1927cd_s0 structural_imscription_of_the_20_1927cd_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct structural_imscription_of_the_20_1927cd_s9 structural_imscription_of_the_20_1927cd_s9 = structural_imscription_of_the_20_1927cd_s9 (idempotent)
  (.seq (.arrow structural_imscription_of_the_20_1927cd_l0 structural_imscription_of_the_20_1927cd_s0 structural_imscription_of_the_20_1927cd_s1) (.seq (.arrow structural_imscription_of_the_20_1927cd_l1 structural_imscription_of_the_20_1927cd_s1 structural_imscription_of_the_20_1927cd_s2) (.seq (.arrow structural_imscription_of_the_20_1927cd_l2 structural_imscription_of_the_20_1927cd_s2 structural_imscription_of_the_20_1927cd_s3) (.seq (.arrow structural_imscription_of_the_20_1927cd_l3 structural_imscription_of_the_20_1927cd_s3 structural_imscription_of_the_20_1927cd_s4) (.seq (.arrow structural_imscription_of_the_20_1927cd_l4 structural_imscription_of_the_20_1927cd_s4 structural_imscription_of_the_20_1927cd_s5) (.seq (.prod (.arrow structural_imscription_of_the_20_1927cd_l5 structural_imscription_of_the_20_1927cd_s5 structural_imscription_of_the_20_1927cd_s9) (.arrow structural_imscription_of_the_20_1927cd_l5 structural_imscription_of_the_20_1927cd_s5 structural_imscription_of_the_20_1927cd_s9)) (.seq (.arrow structural_imscription_of_the_20_1927cd_l9 structural_imscription_of_the_20_1927cd_s9 structural_imscription_of_the_20_1927cd_s9) (.seq (.arrow structural_imscription_of_the_20_1927cd_l9 structural_imscription_of_the_20_1927cd_s9 structural_imscription_of_the_20_1927cd_s10) (.seq (.arrow structural_imscription_of_the_20_1927cd_l10 structural_imscription_of_the_20_1927cd_s10 structural_imscription_of_the_20_1927cd_s11) (.seq (.arrow structural_imscription_of_the_20_1927cd_l11 structural_imscription_of_the_20_1927cd_s11 structural_imscription_of_the_20_1927cd_s12) (.seq (.arrow structural_imscription_of_the_20_1927cd_l12 structural_imscription_of_the_20_1927cd_s12 structural_imscription_of_the_20_1927cd_s13) (.seq (.arrow structural_imscription_of_the_20_1927cd_l13 structural_imscription_of_the_20_1927cd_s13 structural_imscription_of_the_20_1927cd_s14) (.seq (.arrow structural_imscription_of_the_20_1927cd_l14 structural_imscription_of_the_20_1927cd_s14 structural_imscription_of_the_20_1927cd_s15) (.seq (.arrow structural_imscription_of_the_20_1927cd_l15 structural_imscription_of_the_20_1927cd_s15 structural_imscription_of_the_20_1927cd_s16) (.seq (.arrow structural_imscription_of_the_20_1927cd_l16 structural_imscription_of_the_20_1927cd_s16 structural_imscription_of_the_20_1927cd_s17) (.seq (.arrow structural_imscription_of_the_20_1927cd_l17 structural_imscription_of_the_20_1927cd_s17 structural_imscription_of_the_20_1927cd_s18) (.seq (.arrow structural_imscription_of_the_20_1927cd_l18 structural_imscription_of_the_20_1927cd_s18 structural_imscription_of_the_20_1927cd_s19) (.seq (.arrow structural_imscription_of_the_20_1927cd_l19 structural_imscription_of_the_20_1927cd_s19 structural_imscription_of_the_20_1927cd_s20) (.arrow structural_imscription_of_the_20_1927cd_l20 structural_imscription_of_the_20_1927cd_s20 structural_imscription_of_the_20_1927cd_s21)))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def structural_imscription_of_the_20_1927cd_true_arm : IGProtocol structural_imscription_of_the_20_1927cd_s0 structural_imscription_of_the_20_1927cd_s21 :=
  (structural_imscription_of_the_20_1927cd_protocol).restrictToEVALT

-- false arm
noncomputable def structural_imscription_of_the_20_1927cd_false_arm : IGProtocol structural_imscription_of_the_20_1927cd_s0 structural_imscription_of_the_20_1927cd_s21 :=
  (structural_imscription_of_the_20_1927cd_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def structural_imscription_of_the_20_1927cd_tier : OuroboricityTier := TierFunctor.obj structural_imscription_of_the_20_1927cd_s0
#eval structural_imscription_of_the_20_1927cd_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem structural_imscription_of_the_20_1927cd_frobenius :
    igFrobeniusAlg.mul structural_imscription_of_the_20_1927cd_s0 structural_imscription_of_the_20_1927cd_s0 = structural_imscription_of_the_20_1927cd_s0 :=
  igFrobAlg_self_fusion structural_imscription_of_the_20_1927cd_s0
