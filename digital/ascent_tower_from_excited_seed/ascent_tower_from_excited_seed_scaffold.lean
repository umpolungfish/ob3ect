-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → AFWD → FSPLIT → EVALT → CLINK → FFUSE → IFIX → AFWD → FSPLIT → AREV → EVALF → ENGAGR → FFUSE → CLINK → EVALT → IFIX → IMSCRIB → TANCH
-- Class: ascent_tower_from_excited_seed
-- Fingerprint: sig=(9,4,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 7), (10, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [3] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [9] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [15] CLINK     fid    := 𐑱               𐑙 → ⊙  | composition — regime coherence
--   [16] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [17] IFIX      prot   := 𐑭               ⊙ → 𐑠  | irreversible fixation — winding number
--   [18] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ascent_tower_from_excited_seed_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def ascent_tower_from_excited_seed_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ascent_tower_from_excited_seed_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_l9 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ascent_tower_from_excited_seed_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ascent_tower_from_excited_seed_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ascent_tower_from_excited_seed_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ascent_tower_from_excited_seed_protocol : IGProtocol ascent_tower_from_excited_seed_s0 ascent_tower_from_excited_seed_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct ascent_tower_from_excited_seed_s7 ascent_tower_from_excited_seed_s7 = ascent_tower_from_excited_seed_s7 (idempotent)
  (.seq (.arrow ascent_tower_from_excited_seed_l0 ascent_tower_from_excited_seed_s0 ascent_tower_from_excited_seed_s1) (.seq (.arrow ascent_tower_from_excited_seed_l1 ascent_tower_from_excited_seed_s1 ascent_tower_from_excited_seed_s2) (.seq (.arrow ascent_tower_from_excited_seed_l2 ascent_tower_from_excited_seed_s2 ascent_tower_from_excited_seed_s3) (.seq (.arrow ascent_tower_from_excited_seed_l3 ascent_tower_from_excited_seed_s3 ascent_tower_from_excited_seed_s4) (.seq (.prod (.arrow ascent_tower_from_excited_seed_l4 ascent_tower_from_excited_seed_s4 ascent_tower_from_excited_seed_s7) (.arrow ascent_tower_from_excited_seed_l4 ascent_tower_from_excited_seed_s4 ascent_tower_from_excited_seed_s7)) (.seq (.arrow ascent_tower_from_excited_seed_l7 ascent_tower_from_excited_seed_s7 ascent_tower_from_excited_seed_s7) (.seq (.arrow ascent_tower_from_excited_seed_l7 ascent_tower_from_excited_seed_s7 ascent_tower_from_excited_seed_s8) (.seq (.arrow ascent_tower_from_excited_seed_l8 ascent_tower_from_excited_seed_s8 ascent_tower_from_excited_seed_s9) (.seq (.arrow ascent_tower_from_excited_seed_l9 ascent_tower_from_excited_seed_s9 ascent_tower_from_excited_seed_s10) (.seq (.arrow ascent_tower_from_excited_seed_l10 ascent_tower_from_excited_seed_s10 ascent_tower_from_excited_seed_s11) (.seq (.arrow ascent_tower_from_excited_seed_l11 ascent_tower_from_excited_seed_s11 ascent_tower_from_excited_seed_s12) (.seq (.arrow ascent_tower_from_excited_seed_l12 ascent_tower_from_excited_seed_s12 ascent_tower_from_excited_seed_s13) (.seq (.arrow ascent_tower_from_excited_seed_l13 ascent_tower_from_excited_seed_s13 ascent_tower_from_excited_seed_s14) (.seq (.arrow ascent_tower_from_excited_seed_l14 ascent_tower_from_excited_seed_s14 ascent_tower_from_excited_seed_s15) (.seq (.arrow ascent_tower_from_excited_seed_l15 ascent_tower_from_excited_seed_s15 ascent_tower_from_excited_seed_s16) (.seq (.arrow ascent_tower_from_excited_seed_l16 ascent_tower_from_excited_seed_s16 ascent_tower_from_excited_seed_s17) (.seq (.arrow ascent_tower_from_excited_seed_l17 ascent_tower_from_excited_seed_s17 ascent_tower_from_excited_seed_s18) (.arrow ascent_tower_from_excited_seed_l18 ascent_tower_from_excited_seed_s18 ascent_tower_from_excited_seed_s19))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ascent_tower_from_excited_seed_true_arm : IGProtocol ascent_tower_from_excited_seed_s0 ascent_tower_from_excited_seed_s19 :=
  (ascent_tower_from_excited_seed_protocol).restrictToEVALT

-- false arm
noncomputable def ascent_tower_from_excited_seed_false_arm : IGProtocol ascent_tower_from_excited_seed_s0 ascent_tower_from_excited_seed_s19 :=
  (ascent_tower_from_excited_seed_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def ascent_tower_from_excited_seed_tier : OuroboricityTier := TierFunctor.obj ascent_tower_from_excited_seed_s0
#eval ascent_tower_from_excited_seed_tier  -- the Grammar's own verdict on its tier
