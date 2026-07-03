-- IGProtocol scaffold: VINIT → IFIX → FSPLIT → EVALT → AFWD → IMSCRIB → EVALF → AREV → ENGAGR → IFIX → FFUSE → CLINK → TANCH
-- Class: the square-class of each modulus becomes the invariant that governs whether the polar form stays in the field: N_k = |z_k|^2 lies in the degree-16 field K16, and its class in the square-class group of the degree-288 field is trivial for k=1 so |z_1| and u_1 remain inside at degree 32, but non-trivial for k=5 so |z_5| and u_5 leave the field at degree 64, making the twelve modulus square-classes the true obstruction to any uniform in-field polar coordinate
-- Fingerprint: sig=(6,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑚  | irreversible fixation — winding number
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑡  | composition — regime coherence
--   [12] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_square_class_of_each_modulus_3ef830_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_square_class_of_each_modulus_3ef830_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_square_class_of_each_modulus_3ef830_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_square_class_of_each_modulus_3ef830_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_square_class_of_each_modulus_3ef830_protocol : IGProtocol the_square_class_of_each_modulus_3ef830_s0 the_square_class_of_each_modulus_3ef830_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_square_class_of_each_modulus_3ef830_s10 the_square_class_of_each_modulus_3ef830_s10 = the_square_class_of_each_modulus_3ef830_s10 (idempotent)
  (.seq (.arrow the_square_class_of_each_modulus_3ef830_l0 the_square_class_of_each_modulus_3ef830_s0 the_square_class_of_each_modulus_3ef830_s1) (.seq (.arrow the_square_class_of_each_modulus_3ef830_l1 the_square_class_of_each_modulus_3ef830_s1 the_square_class_of_each_modulus_3ef830_s2) (.seq (.prod (.arrow the_square_class_of_each_modulus_3ef830_l2 the_square_class_of_each_modulus_3ef830_s2 the_square_class_of_each_modulus_3ef830_s10) (.arrow the_square_class_of_each_modulus_3ef830_l2 the_square_class_of_each_modulus_3ef830_s2 the_square_class_of_each_modulus_3ef830_s10)) (.seq (.arrow the_square_class_of_each_modulus_3ef830_l10 the_square_class_of_each_modulus_3ef830_s10 the_square_class_of_each_modulus_3ef830_s10) (.seq (.arrow the_square_class_of_each_modulus_3ef830_l10 the_square_class_of_each_modulus_3ef830_s10 the_square_class_of_each_modulus_3ef830_s11) (.arrow the_square_class_of_each_modulus_3ef830_l11 the_square_class_of_each_modulus_3ef830_s11 the_square_class_of_each_modulus_3ef830_s12))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_square_class_of_each_modulus_3ef830_true_arm : IGProtocol the_square_class_of_each_modulus_3ef830_s0 the_square_class_of_each_modulus_3ef830_s12 :=
  (the_square_class_of_each_modulus_3ef830_protocol).restrictToEVALT

-- false arm
noncomputable def the_square_class_of_each_modulus_3ef830_false_arm : IGProtocol the_square_class_of_each_modulus_3ef830_s0 the_square_class_of_each_modulus_3ef830_s12 :=
  (the_square_class_of_each_modulus_3ef830_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_square_class_of_each_modulus_3ef830_tier : OuroboricityTier := TierFunctor.obj the_square_class_of_each_modulus_3ef830_s0
#eval the_square_class_of_each_modulus_3ef830_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_square_class_of_each_modulus_3ef830_frobenius :
    igFrobeniusAlg.mul the_square_class_of_each_modulus_3ef830_s0 the_square_class_of_each_modulus_3ef830_s0 = the_square_class_of_each_modulus_3ef830_s0 :=
  igFrobAlg_self_fusion the_square_class_of_each_modulus_3ef830_s0
