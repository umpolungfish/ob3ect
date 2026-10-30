-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → ENGAGR → CLINK → IMSCRIB → IFIX → TANCH
-- Class: An object that connects two quantities for a fixed odd n: the least modulus r
congruent to 3 modulo 4 at which the primes of n(n+r)/4 generate -1 in the units
modulo r with exponents available inside the square, and the fourth root of n.
The object must express the constant relating them, must express what makes the
constant large, and must be stated so that a proof of the connection would bound
the first quantity by a function of n.
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂dag
-- FSPLIT/FFUSE pairs: [(1, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [7] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [8] CLINK     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def an_object_that_connects_two_quantities_860a03_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def an_object_that_connects_two_quantities_860a03_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def an_object_that_connects_two_quantities_860a03_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def an_object_that_connects_two_quantities_860a03_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def an_object_that_connects_two_quantities_860a03_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def an_object_that_connects_two_quantities_860a03_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def an_object_that_connects_two_quantities_860a03_protocol : IGProtocol an_object_that_connects_two_quantities_860a03_s0 an_object_that_connects_two_quantities_860a03_s11 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct an_object_that_connects_two_quantities_860a03_s6 an_object_that_connects_two_quantities_860a03_s6 = an_object_that_connects_two_quantities_860a03_s6 (idempotent)
  (.seq (.arrow an_object_that_connects_two_quantities_860a03_l0 an_object_that_connects_two_quantities_860a03_s0 an_object_that_connects_two_quantities_860a03_s1) (.seq (.prod (.arrow an_object_that_connects_two_quantities_860a03_l1 an_object_that_connects_two_quantities_860a03_s1 an_object_that_connects_two_quantities_860a03_s6) (.arrow an_object_that_connects_two_quantities_860a03_l1 an_object_that_connects_two_quantities_860a03_s1 an_object_that_connects_two_quantities_860a03_s6)) (.seq (.arrow an_object_that_connects_two_quantities_860a03_l6 an_object_that_connects_two_quantities_860a03_s6 an_object_that_connects_two_quantities_860a03_s6) (.seq (.arrow an_object_that_connects_two_quantities_860a03_l6 an_object_that_connects_two_quantities_860a03_s6 an_object_that_connects_two_quantities_860a03_s7) (.seq (.arrow an_object_that_connects_two_quantities_860a03_l7 an_object_that_connects_two_quantities_860a03_s7 an_object_that_connects_two_quantities_860a03_s8) (.seq (.arrow an_object_that_connects_two_quantities_860a03_l8 an_object_that_connects_two_quantities_860a03_s8 an_object_that_connects_two_quantities_860a03_s9) (.seq (.arrow an_object_that_connects_two_quantities_860a03_l9 an_object_that_connects_two_quantities_860a03_s9 an_object_that_connects_two_quantities_860a03_s10) (.arrow an_object_that_connects_two_quantities_860a03_l10 an_object_that_connects_two_quantities_860a03_s10 an_object_that_connects_two_quantities_860a03_s11))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def an_object_that_connects_two_quantities_860a03_true_arm : IGProtocol an_object_that_connects_two_quantities_860a03_s0 an_object_that_connects_two_quantities_860a03_s11 :=
  (an_object_that_connects_two_quantities_860a03_protocol).restrictToEVALT

-- false arm
noncomputable def an_object_that_connects_two_quantities_860a03_false_arm : IGProtocol an_object_that_connects_two_quantities_860a03_s0 an_object_that_connects_two_quantities_860a03_s11 :=
  (an_object_that_connects_two_quantities_860a03_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def an_object_that_connects_two_quantities_860a03_tier_ground : OuroboricityTier := TierFunctor.obj an_object_that_connects_two_quantities_860a03_s0
def an_object_that_connects_two_quantities_860a03_tier : OuroboricityTier := TierFunctor.obj an_object_that_connects_two_quantities_860a03_s11
#eval an_object_that_connects_two_quantities_860a03_tier_ground  -- tier of the ground (pre-transformation)
#eval an_object_that_connects_two_quantities_860a03_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem an_object_that_connects_two_quantities_860a03_frobenius :
    igFrobeniusAlg.mul an_object_that_connects_two_quantities_860a03_s0 an_object_that_connects_two_quantities_860a03_s0 = an_object_that_connects_two_quantities_860a03_s0 :=
  igFrobAlg_self_fusion an_object_that_connects_two_quantities_860a03_s0
