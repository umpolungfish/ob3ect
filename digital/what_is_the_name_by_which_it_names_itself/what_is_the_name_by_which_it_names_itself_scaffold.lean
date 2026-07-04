-- IGProtocol scaffold: VINIT → AFWD → IFIX → AREV → CLINK → FSPLIT → EVALF → AREV → ENGAGR → EVALT → IMSCRIB → AFWD → FFUSE → TANCH
-- Class: what is the name by which it names itself?
-- Fingerprint: sig=(8,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑭  | forward morphism — bidirectional arrow
--   [2] IFIX      prot   := 𐑭               𐑾 → 𐑗  | irreversible fixation — winding number
--   [3] AREV      pol    := 𐑗               𐑭 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑡  | fuse μ — assembly mode
--   [13] TANCH     top    := 𐑡               𐑙 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def what_is_the_name_by_which_it_names_c7ae5f_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := sure, stoi := up, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def what_is_the_name_by_which_it_names_c7ae5f_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def what_is_the_name_by_which_it_names_c7ae5f_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def what_is_the_name_by_which_it_names_c7ae5f_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def what_is_the_name_by_which_it_names_c7ae5f_protocol : IGProtocol what_is_the_name_by_which_it_names_c7ae5f_s0 what_is_the_name_by_which_it_names_c7ae5f_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct what_is_the_name_by_which_it_names_c7ae5f_s12 what_is_the_name_by_which_it_names_c7ae5f_s12 = what_is_the_name_by_which_it_names_c7ae5f_s12 (idempotent)
  (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l0 what_is_the_name_by_which_it_names_c7ae5f_s0 what_is_the_name_by_which_it_names_c7ae5f_s1) (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l1 what_is_the_name_by_which_it_names_c7ae5f_s1 what_is_the_name_by_which_it_names_c7ae5f_s2) (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l2 what_is_the_name_by_which_it_names_c7ae5f_s2 what_is_the_name_by_which_it_names_c7ae5f_s3) (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l3 what_is_the_name_by_which_it_names_c7ae5f_s3 what_is_the_name_by_which_it_names_c7ae5f_s4) (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l4 what_is_the_name_by_which_it_names_c7ae5f_s4 what_is_the_name_by_which_it_names_c7ae5f_s5) (.seq (.prod (.arrow what_is_the_name_by_which_it_names_c7ae5f_l5 what_is_the_name_by_which_it_names_c7ae5f_s5 what_is_the_name_by_which_it_names_c7ae5f_s12) (.arrow what_is_the_name_by_which_it_names_c7ae5f_l5 what_is_the_name_by_which_it_names_c7ae5f_s5 what_is_the_name_by_which_it_names_c7ae5f_s12)) (.seq (.arrow what_is_the_name_by_which_it_names_c7ae5f_l12 what_is_the_name_by_which_it_names_c7ae5f_s12 what_is_the_name_by_which_it_names_c7ae5f_s12) (.arrow what_is_the_name_by_which_it_names_c7ae5f_l12 what_is_the_name_by_which_it_names_c7ae5f_s12 what_is_the_name_by_which_it_names_c7ae5f_s13))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def what_is_the_name_by_which_it_names_c7ae5f_true_arm : IGProtocol what_is_the_name_by_which_it_names_c7ae5f_s0 what_is_the_name_by_which_it_names_c7ae5f_s13 :=
  (what_is_the_name_by_which_it_names_c7ae5f_protocol).restrictToEVALT

-- false arm
noncomputable def what_is_the_name_by_which_it_names_c7ae5f_false_arm : IGProtocol what_is_the_name_by_which_it_names_c7ae5f_s0 what_is_the_name_by_which_it_names_c7ae5f_s13 :=
  (what_is_the_name_by_which_it_names_c7ae5f_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def what_is_the_name_by_which_it_names_c7ae5f_tier : OuroboricityTier := TierFunctor.obj what_is_the_name_by_which_it_names_c7ae5f_s0
#eval what_is_the_name_by_which_it_names_c7ae5f_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem what_is_the_name_by_which_it_names_c7ae5f_frobenius :
    igFrobeniusAlg.mul what_is_the_name_by_which_it_names_c7ae5f_s0 what_is_the_name_by_which_it_names_c7ae5f_s0 = what_is_the_name_by_which_it_names_c7ae5f_s0 :=
  igFrobAlg_self_fusion what_is_the_name_by_which_it_names_c7ae5f_s0
