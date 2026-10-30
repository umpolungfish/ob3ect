-- IGProtocol scaffold: ⊢ → ⊣ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ∈ → ≻ → ⊞ → ⊤ → ⊥ → ∋ → ⋈ → ⊙ → ⊡ → ⊣
-- Class: Belnap semiprime unfolding
-- Fingerprint: sig=(10,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=20
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(3, 8), (10, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑱  | terminal object — connectivity boundary
--   [2] ⋈     fid    := 𐑱               𐑡 → 𐑚  | composition — regime coherence
--   [3] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [9] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [10] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [14] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [16] ⋈     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [17] ⊙   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [18] ⊡      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [19] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def belnap_semiprime_unfolding_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def belnap_semiprime_unfolding_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def belnap_semiprime_unfolding_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def belnap_semiprime_unfolding_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def belnap_semiprime_unfolding_s19 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def belnap_semiprime_unfolding_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l4 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l11 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def belnap_semiprime_unfolding_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def belnap_semiprime_unfolding_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def belnap_semiprime_unfolding_l19 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def belnap_semiprime_unfolding_protocol : IGProtocol belnap_semiprime_unfolding_s0 belnap_semiprime_unfolding_s19 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct belnap_semiprime_unfolding_s8 belnap_semiprime_unfolding_s8 = belnap_semiprime_unfolding_s8 (idempotent)
  (.seq (.arrow belnap_semiprime_unfolding_l0 belnap_semiprime_unfolding_s0 belnap_semiprime_unfolding_s1) (.seq (.arrow belnap_semiprime_unfolding_l1 belnap_semiprime_unfolding_s1 belnap_semiprime_unfolding_s2) (.seq (.arrow belnap_semiprime_unfolding_l2 belnap_semiprime_unfolding_s2 belnap_semiprime_unfolding_s3) (.seq (.prod (.arrow belnap_semiprime_unfolding_l3 belnap_semiprime_unfolding_s3 belnap_semiprime_unfolding_s8) (.arrow belnap_semiprime_unfolding_l3 belnap_semiprime_unfolding_s3 belnap_semiprime_unfolding_s8)) (.seq (.arrow belnap_semiprime_unfolding_l8 belnap_semiprime_unfolding_s8 belnap_semiprime_unfolding_s8) (.seq (.arrow belnap_semiprime_unfolding_l8 belnap_semiprime_unfolding_s8 belnap_semiprime_unfolding_s9) (.seq (.arrow belnap_semiprime_unfolding_l9 belnap_semiprime_unfolding_s9 belnap_semiprime_unfolding_s10) (.seq (.arrow belnap_semiprime_unfolding_l10 belnap_semiprime_unfolding_s10 belnap_semiprime_unfolding_s11) (.seq (.arrow belnap_semiprime_unfolding_l11 belnap_semiprime_unfolding_s11 belnap_semiprime_unfolding_s12) (.seq (.arrow belnap_semiprime_unfolding_l12 belnap_semiprime_unfolding_s12 belnap_semiprime_unfolding_s13) (.seq (.arrow belnap_semiprime_unfolding_l13 belnap_semiprime_unfolding_s13 belnap_semiprime_unfolding_s14) (.seq (.arrow belnap_semiprime_unfolding_l14 belnap_semiprime_unfolding_s14 belnap_semiprime_unfolding_s15) (.seq (.arrow belnap_semiprime_unfolding_l15 belnap_semiprime_unfolding_s15 belnap_semiprime_unfolding_s16) (.seq (.arrow belnap_semiprime_unfolding_l16 belnap_semiprime_unfolding_s16 belnap_semiprime_unfolding_s17) (.seq (.arrow belnap_semiprime_unfolding_l17 belnap_semiprime_unfolding_s17 belnap_semiprime_unfolding_s18) (.arrow belnap_semiprime_unfolding_l18 belnap_semiprime_unfolding_s18 belnap_semiprime_unfolding_s19))))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def belnap_semiprime_unfolding_true_arm : IGProtocol belnap_semiprime_unfolding_s0 belnap_semiprime_unfolding_s19 :=
  (belnap_semiprime_unfolding_protocol).restrictToEVALT

-- false arm
noncomputable def belnap_semiprime_unfolding_false_arm : IGProtocol belnap_semiprime_unfolding_s0 belnap_semiprime_unfolding_s19 :=
  (belnap_semiprime_unfolding_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def belnap_semiprime_unfolding_tier_ground : OuroboricityTier := TierFunctor.obj belnap_semiprime_unfolding_s0
def belnap_semiprime_unfolding_tier : OuroboricityTier := TierFunctor.obj belnap_semiprime_unfolding_s19
#eval belnap_semiprime_unfolding_tier_ground  -- tier of the ground (pre-transformation)
#eval belnap_semiprime_unfolding_tier  -- the Grammar's own verdict on the closed object
