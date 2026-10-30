-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → FFUSE → EVALF → AREV → FFUSE → CLINK → ENGAGR → IFIX → TANCH
-- Class: The Secret Book of Artephius
-- Fingerprint: sig=(6,3,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [6] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑖 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑗 → 𐑱  | fuse μ — assembly mode
--   [9] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [10] ENGAGR    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_secret_book_of_artephius_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_secret_book_of_artephius_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_secret_book_of_artephius_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_secret_book_of_artephius_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_secret_book_of_artephius_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_secret_book_of_artephius_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_secret_book_of_artephius_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_secret_book_of_artephius_protocol : IGProtocol the_secret_book_of_artephius_s0 the_secret_book_of_artephius_s12 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_secret_book_of_artephius_s5 the_secret_book_of_artephius_s5 = the_secret_book_of_artephius_s5 (idempotent)
  (.seq (.arrow the_secret_book_of_artephius_l0 the_secret_book_of_artephius_s0 the_secret_book_of_artephius_s1) (.seq (.arrow the_secret_book_of_artephius_l1 the_secret_book_of_artephius_s1 the_secret_book_of_artephius_s2) (.seq (.prod (.arrow the_secret_book_of_artephius_l2 the_secret_book_of_artephius_s2 the_secret_book_of_artephius_s5) (.arrow the_secret_book_of_artephius_l2 the_secret_book_of_artephius_s2 the_secret_book_of_artephius_s5)) (.seq (.arrow the_secret_book_of_artephius_l5 the_secret_book_of_artephius_s5 the_secret_book_of_artephius_s5) (.seq (.arrow the_secret_book_of_artephius_l5 the_secret_book_of_artephius_s5 the_secret_book_of_artephius_s6) (.seq (.arrow the_secret_book_of_artephius_l6 the_secret_book_of_artephius_s6 the_secret_book_of_artephius_s7) (.seq (.arrow the_secret_book_of_artephius_l7 the_secret_book_of_artephius_s7 the_secret_book_of_artephius_s8) (.seq (.arrow the_secret_book_of_artephius_l8 the_secret_book_of_artephius_s8 the_secret_book_of_artephius_s9) (.seq (.arrow the_secret_book_of_artephius_l9 the_secret_book_of_artephius_s9 the_secret_book_of_artephius_s10) (.seq (.arrow the_secret_book_of_artephius_l10 the_secret_book_of_artephius_s10 the_secret_book_of_artephius_s11) (.arrow the_secret_book_of_artephius_l11 the_secret_book_of_artephius_s11 the_secret_book_of_artephius_s12)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_secret_book_of_artephius_true_arm : IGProtocol the_secret_book_of_artephius_s0 the_secret_book_of_artephius_s12 :=
  (the_secret_book_of_artephius_protocol).restrictToEVALT

-- false arm
noncomputable def the_secret_book_of_artephius_false_arm : IGProtocol the_secret_book_of_artephius_s0 the_secret_book_of_artephius_s12 :=
  (the_secret_book_of_artephius_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_secret_book_of_artephius_tier : OuroboricityTier := TierFunctor.obj the_secret_book_of_artephius_s0
#eval the_secret_book_of_artephius_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_secret_book_of_artephius_frobenius :
    igFrobeniusAlg.mul the_secret_book_of_artephius_s0 the_secret_book_of_artephius_s0 = the_secret_book_of_artephius_s0 :=
  igFrobAlg_self_fusion the_secret_book_of_artephius_s0
