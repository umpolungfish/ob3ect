-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → EVALT → AREV → EVALF → FFUSE → CLINK → IMSCRIB → IFIX → TANCH
-- Class: Enuncia Language of the Old Ones
-- Fingerprint: sig=(6,2,2,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=11
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
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [7] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [9] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def enuncia_language_of_the_old_ones_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def enuncia_language_of_the_old_ones_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def enuncia_language_of_the_old_ones_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def enuncia_language_of_the_old_ones_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def enuncia_language_of_the_old_ones_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def enuncia_language_of_the_old_ones_protocol : IGProtocol enuncia_language_of_the_old_ones_s0 enuncia_language_of_the_old_ones_s10 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct enuncia_language_of_the_old_ones_s6 enuncia_language_of_the_old_ones_s6 = enuncia_language_of_the_old_ones_s6 (idempotent)
  (.seq (.arrow enuncia_language_of_the_old_ones_l0 enuncia_language_of_the_old_ones_s0 enuncia_language_of_the_old_ones_s1) (.seq (.prod (.arrow enuncia_language_of_the_old_ones_l1 enuncia_language_of_the_old_ones_s1 enuncia_language_of_the_old_ones_s6) (.arrow enuncia_language_of_the_old_ones_l1 enuncia_language_of_the_old_ones_s1 enuncia_language_of_the_old_ones_s6)) (.seq (.arrow enuncia_language_of_the_old_ones_l6 enuncia_language_of_the_old_ones_s6 enuncia_language_of_the_old_ones_s6) (.seq (.arrow enuncia_language_of_the_old_ones_l6 enuncia_language_of_the_old_ones_s6 enuncia_language_of_the_old_ones_s7) (.seq (.arrow enuncia_language_of_the_old_ones_l7 enuncia_language_of_the_old_ones_s7 enuncia_language_of_the_old_ones_s8) (.seq (.arrow enuncia_language_of_the_old_ones_l8 enuncia_language_of_the_old_ones_s8 enuncia_language_of_the_old_ones_s9) (.arrow enuncia_language_of_the_old_ones_l9 enuncia_language_of_the_old_ones_s9 enuncia_language_of_the_old_ones_s10)))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def enuncia_language_of_the_old_ones_true_arm : IGProtocol enuncia_language_of_the_old_ones_s0 enuncia_language_of_the_old_ones_s10 :=
  (enuncia_language_of_the_old_ones_protocol).restrictToEVALT

-- false arm
noncomputable def enuncia_language_of_the_old_ones_false_arm : IGProtocol enuncia_language_of_the_old_ones_s0 enuncia_language_of_the_old_ones_s10 :=
  (enuncia_language_of_the_old_ones_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def enuncia_language_of_the_old_ones_tier : OuroboricityTier := TierFunctor.obj enuncia_language_of_the_old_ones_s0
#eval enuncia_language_of_the_old_ones_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem enuncia_language_of_the_old_ones_frobenius :
    igFrobeniusAlg.mul enuncia_language_of_the_old_ones_s0 enuncia_language_of_the_old_ones_s0 = enuncia_language_of_the_old_ones_s0 :=
  igFrobAlg_self_fusion enuncia_language_of_the_old_ones_s0
