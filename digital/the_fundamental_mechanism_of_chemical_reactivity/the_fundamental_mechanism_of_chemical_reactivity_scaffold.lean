-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → ENGAGR → IFIX → FFUSE → FSPLIT → EVALF → AREV → FFUSE → CLINK → IMSCRIB → TANCH
-- Class: the fundamental mechanism of chemical reactivity
-- Fingerprint: sig=(6,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=14
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 6), (7, 10)]

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
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [13] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_fundamental_mechanism_of_chemical_74d615_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_fundamental_mechanism_of_chemical_74d615_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_fundamental_mechanism_of_chemical_74d615_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_fundamental_mechanism_of_chemical_74d615_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_fundamental_mechanism_of_chemical_74d615_protocol : IGProtocol the_fundamental_mechanism_of_chemical_74d615_s0 the_fundamental_mechanism_of_chemical_74d615_s13 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_fundamental_mechanism_of_chemical_74d615_s6 the_fundamental_mechanism_of_chemical_74d615_s6 = the_fundamental_mechanism_of_chemical_74d615_s6 (idempotent)
  (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l0 the_fundamental_mechanism_of_chemical_74d615_s0 the_fundamental_mechanism_of_chemical_74d615_s1) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l1 the_fundamental_mechanism_of_chemical_74d615_s1 the_fundamental_mechanism_of_chemical_74d615_s2) (.seq (.prod (.arrow the_fundamental_mechanism_of_chemical_74d615_l2 the_fundamental_mechanism_of_chemical_74d615_s2 the_fundamental_mechanism_of_chemical_74d615_s6) (.arrow the_fundamental_mechanism_of_chemical_74d615_l2 the_fundamental_mechanism_of_chemical_74d615_s2 the_fundamental_mechanism_of_chemical_74d615_s6)) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l6 the_fundamental_mechanism_of_chemical_74d615_s6 the_fundamental_mechanism_of_chemical_74d615_s6) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l6 the_fundamental_mechanism_of_chemical_74d615_s6 the_fundamental_mechanism_of_chemical_74d615_s7) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l7 the_fundamental_mechanism_of_chemical_74d615_s7 the_fundamental_mechanism_of_chemical_74d615_s8) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l8 the_fundamental_mechanism_of_chemical_74d615_s8 the_fundamental_mechanism_of_chemical_74d615_s9) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l9 the_fundamental_mechanism_of_chemical_74d615_s9 the_fundamental_mechanism_of_chemical_74d615_s10) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l10 the_fundamental_mechanism_of_chemical_74d615_s10 the_fundamental_mechanism_of_chemical_74d615_s11) (.seq (.arrow the_fundamental_mechanism_of_chemical_74d615_l11 the_fundamental_mechanism_of_chemical_74d615_s11 the_fundamental_mechanism_of_chemical_74d615_s12) (.arrow the_fundamental_mechanism_of_chemical_74d615_l12 the_fundamental_mechanism_of_chemical_74d615_s12 the_fundamental_mechanism_of_chemical_74d615_s13)))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_fundamental_mechanism_of_chemical_74d615_true_arm : IGProtocol the_fundamental_mechanism_of_chemical_74d615_s0 the_fundamental_mechanism_of_chemical_74d615_s13 :=
  (the_fundamental_mechanism_of_chemical_74d615_protocol).restrictToEVALT

-- false arm
noncomputable def the_fundamental_mechanism_of_chemical_74d615_false_arm : IGProtocol the_fundamental_mechanism_of_chemical_74d615_s0 the_fundamental_mechanism_of_chemical_74d615_s13 :=
  (the_fundamental_mechanism_of_chemical_74d615_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_fundamental_mechanism_of_chemical_74d615_tier : OuroboricityTier := TierFunctor.obj the_fundamental_mechanism_of_chemical_74d615_s0
#eval the_fundamental_mechanism_of_chemical_74d615_tier  -- the Grammar's own verdict on its tier
