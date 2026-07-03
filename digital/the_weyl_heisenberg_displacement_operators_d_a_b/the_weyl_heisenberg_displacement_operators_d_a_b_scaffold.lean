-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → FFUSE → CLINK → IFIX → AFWD → AREV → FSPLIT → EVALT → EVALT → FFUSE → IMSCRIB → IFIX → AFWD → CLINK → AREV → IMSCRIB → FSPLIT → EVALT → IFIX → TANCH
-- Class: the Weyl-Heisenberg displacement operators D(a,b) acting on the d=12 fiducial become computable maps on length-288 coefficient vectors using the twelfth root of unity that lives inside the ray class field, so every displaced fiducial is again an exact field element
-- Fingerprint: sig=(10,5,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=22
-- Expected tier: O₀
-- FSPLIT/FFUSE pairs: [(1, 3), (8, 11)]

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
--   [3] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [4] CLINK     fid    := 𐑱               𐑙 → 𐑭  | composition — regime coherence
--   [5] IFIX      prot   := 𐑭               𐑱 → 𐑾  | irreversible fixation — winding number
--   [6] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [7] AREV      pol    := 𐑗               𐑾 → 𐑚  | reverse morphism — parity flip
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [12] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [13] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [14] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [15] CLINK     fid    := 𐑱               𐑾 → 𐑗  | composition — regime coherence
--   [16] AREV      pol    := 𐑗               𐑱 → 𐑠  | reverse morphism — parity flip
--   [17] IMSCRIB   gram   := 𐑠               𐑗 → 𐑚  | identity — self-imscription
--   [18] FSPLIT    gran   := 𐑚               𐑠 → ⊙  | split δ — range decomposition
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑭  | evaluate-true — criticality gate open
--   [20] IFIX      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [21] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_weyl_heisenberg_displacement_4e4386_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s20 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_s21 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_weyl_heisenberg_displacement_4e4386_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_l14 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_weyl_heisenberg_displacement_4e4386_l20 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_weyl_heisenberg_displacement_4e4386_l21 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_weyl_heisenberg_displacement_4e4386_protocol : IGProtocol the_weyl_heisenberg_displacement_4e4386_s0 the_weyl_heisenberg_displacement_4e4386_s21 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_weyl_heisenberg_displacement_4e4386_s3 the_weyl_heisenberg_displacement_4e4386_s3 = the_weyl_heisenberg_displacement_4e4386_s3 (idempotent)
  (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l0 the_weyl_heisenberg_displacement_4e4386_s0 the_weyl_heisenberg_displacement_4e4386_s1) (.seq (.prod (.arrow the_weyl_heisenberg_displacement_4e4386_l1 the_weyl_heisenberg_displacement_4e4386_s1 the_weyl_heisenberg_displacement_4e4386_s3) (.arrow the_weyl_heisenberg_displacement_4e4386_l1 the_weyl_heisenberg_displacement_4e4386_s1 the_weyl_heisenberg_displacement_4e4386_s3)) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l3 the_weyl_heisenberg_displacement_4e4386_s3 the_weyl_heisenberg_displacement_4e4386_s3) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l3 the_weyl_heisenberg_displacement_4e4386_s3 the_weyl_heisenberg_displacement_4e4386_s4) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l4 the_weyl_heisenberg_displacement_4e4386_s4 the_weyl_heisenberg_displacement_4e4386_s5) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l5 the_weyl_heisenberg_displacement_4e4386_s5 the_weyl_heisenberg_displacement_4e4386_s6) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l6 the_weyl_heisenberg_displacement_4e4386_s6 the_weyl_heisenberg_displacement_4e4386_s7) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l7 the_weyl_heisenberg_displacement_4e4386_s7 the_weyl_heisenberg_displacement_4e4386_s8) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l8 the_weyl_heisenberg_displacement_4e4386_s8 the_weyl_heisenberg_displacement_4e4386_s9) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l9 the_weyl_heisenberg_displacement_4e4386_s9 the_weyl_heisenberg_displacement_4e4386_s10) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l10 the_weyl_heisenberg_displacement_4e4386_s10 the_weyl_heisenberg_displacement_4e4386_s11) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l11 the_weyl_heisenberg_displacement_4e4386_s11 the_weyl_heisenberg_displacement_4e4386_s12) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l12 the_weyl_heisenberg_displacement_4e4386_s12 the_weyl_heisenberg_displacement_4e4386_s13) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l13 the_weyl_heisenberg_displacement_4e4386_s13 the_weyl_heisenberg_displacement_4e4386_s14) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l14 the_weyl_heisenberg_displacement_4e4386_s14 the_weyl_heisenberg_displacement_4e4386_s15) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l15 the_weyl_heisenberg_displacement_4e4386_s15 the_weyl_heisenberg_displacement_4e4386_s16) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l16 the_weyl_heisenberg_displacement_4e4386_s16 the_weyl_heisenberg_displacement_4e4386_s17) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l17 the_weyl_heisenberg_displacement_4e4386_s17 the_weyl_heisenberg_displacement_4e4386_s18) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l18 the_weyl_heisenberg_displacement_4e4386_s18 the_weyl_heisenberg_displacement_4e4386_s19) (.seq (.arrow the_weyl_heisenberg_displacement_4e4386_l19 the_weyl_heisenberg_displacement_4e4386_s19 the_weyl_heisenberg_displacement_4e4386_s20) (.arrow the_weyl_heisenberg_displacement_4e4386_l20 the_weyl_heisenberg_displacement_4e4386_s20 the_weyl_heisenberg_displacement_4e4386_s21)))))))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_weyl_heisenberg_displacement_4e4386_true_arm : IGProtocol the_weyl_heisenberg_displacement_4e4386_s0 the_weyl_heisenberg_displacement_4e4386_s21 :=
  (the_weyl_heisenberg_displacement_4e4386_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₀.
def the_weyl_heisenberg_displacement_4e4386_tier : OuroboricityTier := TierFunctor.obj the_weyl_heisenberg_displacement_4e4386_s0
#eval the_weyl_heisenberg_displacement_4e4386_tier  -- the Grammar's own verdict on its tier
