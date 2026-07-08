-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → FFUSE → IFIX → FSPLIT → EVALT → FFUSE → ENGAGR → IFIX → TANCH
-- Class: First machine-checked existence of a SIC-POVM d = 12 constructing an exact fiducial vector for the Weyl–Heis
-- Fingerprint: sig=(5,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 6), (8, 10)]

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
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [7] IFIX      prot   := 𐑭               𐑙 → 𐑚  | irreversible fixation — winding number
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [11] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [13] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def first_machine_checked_existence_of_a_7ef923_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def first_machine_checked_existence_of_a_7ef923_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def first_machine_checked_existence_of_a_7ef923_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def first_machine_checked_existence_of_a_7ef923_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def first_machine_checked_existence_of_a_7ef923_protocol : IGProtocol first_machine_checked_existence_of_a_7ef923_s0 first_machine_checked_existence_of_a_7ef923_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct first_machine_checked_existence_of_a_7ef923_s6 first_machine_checked_existence_of_a_7ef923_s6 = first_machine_checked_existence_of_a_7ef923_s6 (idempotent)
  (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l0 first_machine_checked_existence_of_a_7ef923_s0 first_machine_checked_existence_of_a_7ef923_s1) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l1 first_machine_checked_existence_of_a_7ef923_s1 first_machine_checked_existence_of_a_7ef923_s2) (.seq (.prod (.arrow first_machine_checked_existence_of_a_7ef923_l2 first_machine_checked_existence_of_a_7ef923_s2 first_machine_checked_existence_of_a_7ef923_s6) (.arrow first_machine_checked_existence_of_a_7ef923_l2 first_machine_checked_existence_of_a_7ef923_s2 first_machine_checked_existence_of_a_7ef923_s6)) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l6 first_machine_checked_existence_of_a_7ef923_s6 first_machine_checked_existence_of_a_7ef923_s6) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l6 first_machine_checked_existence_of_a_7ef923_s6 first_machine_checked_existence_of_a_7ef923_s7) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l7 first_machine_checked_existence_of_a_7ef923_s7 first_machine_checked_existence_of_a_7ef923_s8) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l8 first_machine_checked_existence_of_a_7ef923_s8 first_machine_checked_existence_of_a_7ef923_s9) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l9 first_machine_checked_existence_of_a_7ef923_s9 first_machine_checked_existence_of_a_7ef923_s10) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l10 first_machine_checked_existence_of_a_7ef923_s10 first_machine_checked_existence_of_a_7ef923_s11) (.seq (.arrow first_machine_checked_existence_of_a_7ef923_l11 first_machine_checked_existence_of_a_7ef923_s11 first_machine_checked_existence_of_a_7ef923_s12) (.arrow first_machine_checked_existence_of_a_7ef923_l12 first_machine_checked_existence_of_a_7ef923_s12 first_machine_checked_existence_of_a_7ef923_s13)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def first_machine_checked_existence_of_a_7ef923_true_arm : IGProtocol first_machine_checked_existence_of_a_7ef923_s0 first_machine_checked_existence_of_a_7ef923_s13 :=
  (first_machine_checked_existence_of_a_7ef923_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def first_machine_checked_existence_of_a_7ef923_tier : OuroboricityTier := TierFunctor.obj first_machine_checked_existence_of_a_7ef923_s0
#eval first_machine_checked_existence_of_a_7ef923_tier  -- the Grammar's own verdict on its tier
