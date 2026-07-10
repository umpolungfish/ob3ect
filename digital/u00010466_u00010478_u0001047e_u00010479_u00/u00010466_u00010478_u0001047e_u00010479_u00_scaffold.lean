-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → FFUSE → FSPLIT → EVALF → AREV → EVALT → FFUSE → ENGAGR → CLINK → IFIX → TANCH
-- Class: (U00010466, U00010478, U0001047e, U00010479, U0001045e, U00010467, U00010472, U00010475, u2299, U0001046b, U00010459, U0001045f)
-- Fingerprint: sig=(7,4,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=16
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 6), (7, 11)]

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
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [12] ENGAGR    stoi   := 𐑳               𐑙 → 𐑱  | engage paradox — B-state, both arms
--   [13] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [14] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def u00010466_u00010478_u0001047e_u00010479_37985a_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def u00010466_u00010478_u0001047e_u00010479_37985a_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def u00010466_u00010478_u0001047e_u00010479_37985a_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def u00010466_u00010478_u0001047e_u00010479_37985a_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def u00010466_u00010478_u0001047e_u00010479_37985a_protocol : IGProtocol u00010466_u00010478_u0001047e_u00010479_37985a_s0 u00010466_u00010478_u0001047e_u00010479_37985a_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct u00010466_u00010478_u0001047e_u00010479_37985a_s6 u00010466_u00010478_u0001047e_u00010479_37985a_s6 = u00010466_u00010478_u0001047e_u00010479_37985a_s6 (idempotent)
  (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l0 u00010466_u00010478_u0001047e_u00010479_37985a_s0 u00010466_u00010478_u0001047e_u00010479_37985a_s1) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l1 u00010466_u00010478_u0001047e_u00010479_37985a_s1 u00010466_u00010478_u0001047e_u00010479_37985a_s2) (.seq (.prod (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l2 u00010466_u00010478_u0001047e_u00010479_37985a_s2 u00010466_u00010478_u0001047e_u00010479_37985a_s6) (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l2 u00010466_u00010478_u0001047e_u00010479_37985a_s2 u00010466_u00010478_u0001047e_u00010479_37985a_s6)) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l6 u00010466_u00010478_u0001047e_u00010479_37985a_s6 u00010466_u00010478_u0001047e_u00010479_37985a_s6) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l6 u00010466_u00010478_u0001047e_u00010479_37985a_s6 u00010466_u00010478_u0001047e_u00010479_37985a_s7) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l7 u00010466_u00010478_u0001047e_u00010479_37985a_s7 u00010466_u00010478_u0001047e_u00010479_37985a_s8) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l8 u00010466_u00010478_u0001047e_u00010479_37985a_s8 u00010466_u00010478_u0001047e_u00010479_37985a_s9) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l9 u00010466_u00010478_u0001047e_u00010479_37985a_s9 u00010466_u00010478_u0001047e_u00010479_37985a_s10) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l10 u00010466_u00010478_u0001047e_u00010479_37985a_s10 u00010466_u00010478_u0001047e_u00010479_37985a_s11) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l11 u00010466_u00010478_u0001047e_u00010479_37985a_s11 u00010466_u00010478_u0001047e_u00010479_37985a_s12) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l12 u00010466_u00010478_u0001047e_u00010479_37985a_s12 u00010466_u00010478_u0001047e_u00010479_37985a_s13) (.seq (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l13 u00010466_u00010478_u0001047e_u00010479_37985a_s13 u00010466_u00010478_u0001047e_u00010479_37985a_s14) (.arrow u00010466_u00010478_u0001047e_u00010479_37985a_l14 u00010466_u00010478_u0001047e_u00010479_37985a_s14 u00010466_u00010478_u0001047e_u00010479_37985a_s15)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def u00010466_u00010478_u0001047e_u00010479_37985a_true_arm : IGProtocol u00010466_u00010478_u0001047e_u00010479_37985a_s0 u00010466_u00010478_u0001047e_u00010479_37985a_s15 :=
  (u00010466_u00010478_u0001047e_u00010479_37985a_protocol).restrictToEVALT

-- false arm
noncomputable def u00010466_u00010478_u0001047e_u00010479_37985a_false_arm : IGProtocol u00010466_u00010478_u0001047e_u00010479_37985a_s0 u00010466_u00010478_u0001047e_u00010479_37985a_s15 :=
  (u00010466_u00010478_u0001047e_u00010479_37985a_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def u00010466_u00010478_u0001047e_u00010479_37985a_tier : OuroboricityTier := TierFunctor.obj u00010466_u00010478_u0001047e_u00010479_37985a_s0
#eval u00010466_u00010478_u0001047e_u00010479_37985a_tier  -- the Grammar's own verdict on its tier
