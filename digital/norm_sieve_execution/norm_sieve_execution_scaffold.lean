-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALF → AREV → FFUSE → FSPLIT → EVALT → AFWD → CLINK → IFIX → FFUSE → IMSCRIB → FSPLIT → EVALF → AFWD → FFUSE → EVALT → TANCH
-- Class: norm_sieve_execution
-- Fingerprint: sig=(8,6,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=False | period=19
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(2, 5), (6, 11), (13, 16)]

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
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [12] IMSCRIB   gram   := 𐑠               𐑙 → 𐑚  | identity — self-imscription
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [16] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [17] EVALT     crit   := ⊙               𐑙 → 𐑡  | evaluate-true — criticality gate open
--   [18] TANCH     top    := 𐑡               ⊙ → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def norm_sieve_execution_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def norm_sieve_execution_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def norm_sieve_execution_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def norm_sieve_execution_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def norm_sieve_execution_l15 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def norm_sieve_execution_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def norm_sieve_execution_protocol : IGProtocol norm_sieve_execution_s0 norm_sieve_execution_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct norm_sieve_execution_s5 norm_sieve_execution_s5 = norm_sieve_execution_s5 (idempotent)
  (.seq (.arrow norm_sieve_execution_l0 norm_sieve_execution_s0 norm_sieve_execution_s1) (.seq (.arrow norm_sieve_execution_l1 norm_sieve_execution_s1 norm_sieve_execution_s2) (.seq (.prod (.arrow norm_sieve_execution_l2 norm_sieve_execution_s2 norm_sieve_execution_s5) (.arrow norm_sieve_execution_l2 norm_sieve_execution_s2 norm_sieve_execution_s5)) (.seq (.arrow norm_sieve_execution_l5 norm_sieve_execution_s5 norm_sieve_execution_s5) (.seq (.arrow norm_sieve_execution_l5 norm_sieve_execution_s5 norm_sieve_execution_s6) (.seq (.arrow norm_sieve_execution_l6 norm_sieve_execution_s6 norm_sieve_execution_s7) (.seq (.arrow norm_sieve_execution_l7 norm_sieve_execution_s7 norm_sieve_execution_s8) (.seq (.arrow norm_sieve_execution_l8 norm_sieve_execution_s8 norm_sieve_execution_s9) (.seq (.arrow norm_sieve_execution_l9 norm_sieve_execution_s9 norm_sieve_execution_s10) (.seq (.arrow norm_sieve_execution_l10 norm_sieve_execution_s10 norm_sieve_execution_s11) (.seq (.arrow norm_sieve_execution_l11 norm_sieve_execution_s11 norm_sieve_execution_s12) (.seq (.arrow norm_sieve_execution_l12 norm_sieve_execution_s12 norm_sieve_execution_s13) (.seq (.arrow norm_sieve_execution_l13 norm_sieve_execution_s13 norm_sieve_execution_s14) (.seq (.arrow norm_sieve_execution_l14 norm_sieve_execution_s14 norm_sieve_execution_s15) (.seq (.arrow norm_sieve_execution_l15 norm_sieve_execution_s15 norm_sieve_execution_s16) (.seq (.arrow norm_sieve_execution_l16 norm_sieve_execution_s16 norm_sieve_execution_s17) (.arrow norm_sieve_execution_l17 norm_sieve_execution_s17 norm_sieve_execution_s18)))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def norm_sieve_execution_true_arm : IGProtocol norm_sieve_execution_s0 norm_sieve_execution_s18 :=
  (norm_sieve_execution_protocol).restrictToEVALT

-- false arm
noncomputable def norm_sieve_execution_false_arm : IGProtocol norm_sieve_execution_s0 norm_sieve_execution_s18 :=
  (norm_sieve_execution_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def norm_sieve_execution_tier : OuroboricityTier := TierFunctor.obj norm_sieve_execution_s0
#eval norm_sieve_execution_tier  -- the Grammar's own verdict on its tier
