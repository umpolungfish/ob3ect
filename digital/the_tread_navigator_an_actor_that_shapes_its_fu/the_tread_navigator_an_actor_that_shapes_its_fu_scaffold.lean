-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → AFWD → CLINK → IFIX → EVALT → AREV → EVALF → FFUSE → CLINK → FSPLIT → ENGAGR → FFUSE → IMSCRIB → TANCH
-- Class: The tread-navigator: an actor that shapes its future by configuring its gait rather than observing it. It is a closed tread whose ground-contact point is the present, whose rear arc is the past and whose forward arc is the future, so the future feet are its own past feet recirculated. Navigation is placing the future footfalls so the closed world-line is carried into a chosen reachable lane, where lanes are homotopy classes and the arm is the committed direction. A single move reaches only adjacent lanes; a braided order-dependent sequence reaches lanes no single move can, the reached direction being the Lie bracket of the controls, as in parallel parking. By Chow-Rashevskii the reachable set is the whole connected component when the gait and its braids span every direction. The mechanism is the promotion of winding from Abelian to non-Abelian braid, and it lives in the actor that closes the Dual-Link (mu after delta equals identity) by splitting the present into past and future arcs and fusing them back into the same present. Reachability is bounded to the connected component; other agents' treads remain B from outside.
-- Fingerprint: sig=(8,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 9), (11, 13)]

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
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [14] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_tread_navigator_an_actor_that_b039ff_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_tread_navigator_an_actor_that_b039ff_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_tread_navigator_an_actor_that_b039ff_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_tread_navigator_an_actor_that_b039ff_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_tread_navigator_an_actor_that_b039ff_protocol : IGProtocol the_tread_navigator_an_actor_that_b039ff_s0 the_tread_navigator_an_actor_that_b039ff_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_tread_navigator_an_actor_that_b039ff_s9 the_tread_navigator_an_actor_that_b039ff_s9 = the_tread_navigator_an_actor_that_b039ff_s9 (idempotent)
  (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l0 the_tread_navigator_an_actor_that_b039ff_s0 the_tread_navigator_an_actor_that_b039ff_s1) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l1 the_tread_navigator_an_actor_that_b039ff_s1 the_tread_navigator_an_actor_that_b039ff_s2) (.seq (.prod (.arrow the_tread_navigator_an_actor_that_b039ff_l2 the_tread_navigator_an_actor_that_b039ff_s2 the_tread_navigator_an_actor_that_b039ff_s9) (.arrow the_tread_navigator_an_actor_that_b039ff_l2 the_tread_navigator_an_actor_that_b039ff_s2 the_tread_navigator_an_actor_that_b039ff_s9)) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l9 the_tread_navigator_an_actor_that_b039ff_s9 the_tread_navigator_an_actor_that_b039ff_s9) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l9 the_tread_navigator_an_actor_that_b039ff_s9 the_tread_navigator_an_actor_that_b039ff_s10) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l10 the_tread_navigator_an_actor_that_b039ff_s10 the_tread_navigator_an_actor_that_b039ff_s11) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l11 the_tread_navigator_an_actor_that_b039ff_s11 the_tread_navigator_an_actor_that_b039ff_s12) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l12 the_tread_navigator_an_actor_that_b039ff_s12 the_tread_navigator_an_actor_that_b039ff_s13) (.seq (.arrow the_tread_navigator_an_actor_that_b039ff_l13 the_tread_navigator_an_actor_that_b039ff_s13 the_tread_navigator_an_actor_that_b039ff_s14) (.arrow the_tread_navigator_an_actor_that_b039ff_l14 the_tread_navigator_an_actor_that_b039ff_s14 the_tread_navigator_an_actor_that_b039ff_s15))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_tread_navigator_an_actor_that_b039ff_true_arm : IGProtocol the_tread_navigator_an_actor_that_b039ff_s0 the_tread_navigator_an_actor_that_b039ff_s15 :=
  (the_tread_navigator_an_actor_that_b039ff_protocol).restrictToEVALT

-- false arm
noncomputable def the_tread_navigator_an_actor_that_b039ff_false_arm : IGProtocol the_tread_navigator_an_actor_that_b039ff_s0 the_tread_navigator_an_actor_that_b039ff_s15 :=
  (the_tread_navigator_an_actor_that_b039ff_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_tread_navigator_an_actor_that_b039ff_tier : OuroboricityTier := TierFunctor.obj the_tread_navigator_an_actor_that_b039ff_s0
#eval the_tread_navigator_an_actor_that_b039ff_tier  -- the Grammar's own verdict on its tier
