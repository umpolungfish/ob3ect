-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → CLINK → EVALT → AREV → FFUSE → FSPLIT → AFWD → EVALT → FFUSE → IMSCRIB → CLINK → ENGAGR → EVALT → CLINK → IFIX → TANCH
-- Class: the displaced fiducial has the closed form (D_ah 12 a b 0 psi) k = omega_d 12 ^ (b * idx) * psi idx with idx = (k + a*11) % 12 = (k + 12 - a) % 12: Z_iterate proves (Z_d 12)^[b] psi k = omega_d 12 ^ (b*k) * psi k by induction on b from Z_d v k = omega_d 12 ^ k * v k, and X_iterate proves (X_d 12)^[a] v k = v ⟨(k + a*11) % 12, _⟩ by induction on a from X_d v k = v ((k+11)%12), and D_ah 12 a b 0 = X_d^[a] ∘ Z_d^[b] with the omega^0 prefactor trivial, so composing gives the phase omega^(b*idx) on the shifted coordinate psi(idx)
-- Fingerprint: sig=(9,4,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=18
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(1, 6), (7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [12] CLINK     fid    := 𐑱               𐑠 → 𐑳  | composition — regime coherence
--   [13] ENGAGR    stoi   := 𐑳               𐑱 → ⊙  | engage paradox — B-state, both arms
--   [14] EVALT     crit   := ⊙               𐑳 → 𐑱  | evaluate-true — criticality gate open
--   [15] CLINK     fid    := 𐑱               ⊙ → 𐑭  | composition — regime coherence
--   [16] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [17] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_displaced_fiducial_has_the_closed_2ad0ac_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }
private def the_displaced_fiducial_has_the_closed_2ad0ac_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_displaced_fiducial_has_the_closed_2ad0ac_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_displaced_fiducial_has_the_closed_2ad0ac_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_displaced_fiducial_has_the_closed_2ad0ac_protocol : IGProtocol the_displaced_fiducial_has_the_closed_2ad0ac_s0 the_displaced_fiducial_has_the_closed_2ad0ac_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_displaced_fiducial_has_the_closed_2ad0ac_s6 the_displaced_fiducial_has_the_closed_2ad0ac_s6 = the_displaced_fiducial_has_the_closed_2ad0ac_s6 (idempotent)
  (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l0 the_displaced_fiducial_has_the_closed_2ad0ac_s0 the_displaced_fiducial_has_the_closed_2ad0ac_s1) (.seq (.prod (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l1 the_displaced_fiducial_has_the_closed_2ad0ac_s1 the_displaced_fiducial_has_the_closed_2ad0ac_s6) (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l1 the_displaced_fiducial_has_the_closed_2ad0ac_s1 the_displaced_fiducial_has_the_closed_2ad0ac_s6)) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l6 the_displaced_fiducial_has_the_closed_2ad0ac_s6 the_displaced_fiducial_has_the_closed_2ad0ac_s6) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l6 the_displaced_fiducial_has_the_closed_2ad0ac_s6 the_displaced_fiducial_has_the_closed_2ad0ac_s7) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l7 the_displaced_fiducial_has_the_closed_2ad0ac_s7 the_displaced_fiducial_has_the_closed_2ad0ac_s8) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l8 the_displaced_fiducial_has_the_closed_2ad0ac_s8 the_displaced_fiducial_has_the_closed_2ad0ac_s9) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l9 the_displaced_fiducial_has_the_closed_2ad0ac_s9 the_displaced_fiducial_has_the_closed_2ad0ac_s10) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l10 the_displaced_fiducial_has_the_closed_2ad0ac_s10 the_displaced_fiducial_has_the_closed_2ad0ac_s11) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l11 the_displaced_fiducial_has_the_closed_2ad0ac_s11 the_displaced_fiducial_has_the_closed_2ad0ac_s12) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l12 the_displaced_fiducial_has_the_closed_2ad0ac_s12 the_displaced_fiducial_has_the_closed_2ad0ac_s13) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l13 the_displaced_fiducial_has_the_closed_2ad0ac_s13 the_displaced_fiducial_has_the_closed_2ad0ac_s14) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l14 the_displaced_fiducial_has_the_closed_2ad0ac_s14 the_displaced_fiducial_has_the_closed_2ad0ac_s15) (.seq (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l15 the_displaced_fiducial_has_the_closed_2ad0ac_s15 the_displaced_fiducial_has_the_closed_2ad0ac_s16) (.arrow the_displaced_fiducial_has_the_closed_2ad0ac_l16 the_displaced_fiducial_has_the_closed_2ad0ac_s16 the_displaced_fiducial_has_the_closed_2ad0ac_s17))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_displaced_fiducial_has_the_closed_2ad0ac_true_arm : IGProtocol the_displaced_fiducial_has_the_closed_2ad0ac_s0 the_displaced_fiducial_has_the_closed_2ad0ac_s17 :=
  (the_displaced_fiducial_has_the_closed_2ad0ac_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def the_displaced_fiducial_has_the_closed_2ad0ac_tier : OuroboricityTier := TierFunctor.obj the_displaced_fiducial_has_the_closed_2ad0ac_s0
#eval the_displaced_fiducial_has_the_closed_2ad0ac_tier  -- the Grammar's own verdict on its tier
