-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → FFUSE → TANCH → IFIX
-- Class: a lossless separation of one input into two complementary branches that later recombine into exactly the original
-- Fingerprint: sig=(3,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=8
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [6] TANCH     top    := 𐑡               𐑙 → 𐑭  | terminal object — connectivity boundary
--   [7] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def a_lossless_separation_of_one_input_into_ffbc62_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def a_lossless_separation_of_one_input_into_ffbc62_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def a_lossless_separation_of_one_input_into_ffbc62_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def a_lossless_separation_of_one_input_into_ffbc62_protocol : IGProtocol a_lossless_separation_of_one_input_into_ffbc62_s0 a_lossless_separation_of_one_input_into_ffbc62_s7 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct a_lossless_separation_of_one_input_into_ffbc62_s5 a_lossless_separation_of_one_input_into_ffbc62_s5 = a_lossless_separation_of_one_input_into_ffbc62_s5 (idempotent)
  (.seq (.arrow a_lossless_separation_of_one_input_into_ffbc62_l0 a_lossless_separation_of_one_input_into_ffbc62_s0 a_lossless_separation_of_one_input_into_ffbc62_s1) (.seq (.arrow a_lossless_separation_of_one_input_into_ffbc62_l1 a_lossless_separation_of_one_input_into_ffbc62_s1 a_lossless_separation_of_one_input_into_ffbc62_s2) (.seq (.prod (.arrow a_lossless_separation_of_one_input_into_ffbc62_l2 a_lossless_separation_of_one_input_into_ffbc62_s2 a_lossless_separation_of_one_input_into_ffbc62_s5) (.arrow a_lossless_separation_of_one_input_into_ffbc62_l2 a_lossless_separation_of_one_input_into_ffbc62_s2 a_lossless_separation_of_one_input_into_ffbc62_s5)) (.seq (.arrow a_lossless_separation_of_one_input_into_ffbc62_l5 a_lossless_separation_of_one_input_into_ffbc62_s5 a_lossless_separation_of_one_input_into_ffbc62_s5) (.seq (.arrow a_lossless_separation_of_one_input_into_ffbc62_l5 a_lossless_separation_of_one_input_into_ffbc62_s5 a_lossless_separation_of_one_input_into_ffbc62_s6) (.arrow a_lossless_separation_of_one_input_into_ffbc62_l6 a_lossless_separation_of_one_input_into_ffbc62_s6 a_lossless_separation_of_one_input_into_ffbc62_s7))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def a_lossless_separation_of_one_input_into_ffbc62_true_arm : IGProtocol a_lossless_separation_of_one_input_into_ffbc62_s0 a_lossless_separation_of_one_input_into_ffbc62_s7 :=
  (a_lossless_separation_of_one_input_into_ffbc62_protocol).restrictToEVALT

-- false arm
noncomputable def a_lossless_separation_of_one_input_into_ffbc62_false_arm : IGProtocol a_lossless_separation_of_one_input_into_ffbc62_s0 a_lossless_separation_of_one_input_into_ffbc62_s7 :=
  (a_lossless_separation_of_one_input_into_ffbc62_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def a_lossless_separation_of_one_input_into_ffbc62_tier : OuroboricityTier := TierFunctor.obj a_lossless_separation_of_one_input_into_ffbc62_s0
#eval a_lossless_separation_of_one_input_into_ffbc62_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem a_lossless_separation_of_one_input_into_ffbc62_frobenius :
    igFrobeniusAlg.mul a_lossless_separation_of_one_input_into_ffbc62_s0 a_lossless_separation_of_one_input_into_ffbc62_s0 = a_lossless_separation_of_one_input_into_ffbc62_s0 :=
  igFrobAlg_self_fusion a_lossless_separation_of_one_input_into_ffbc62_s0
