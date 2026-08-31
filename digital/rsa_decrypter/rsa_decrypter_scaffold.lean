-- IGProtocol scaffold: ⊢ → ⊣ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ⊞ → ≻ → ⋈ → ⊙ → ⊤ → ⊡ → ⊣
-- Class: RSA Decrypter
-- Fingerprint: sig=(9,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] ⊣     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] ⋈     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ⊞    stoi   := 𐑳               𐑱 → 𐑾  | engage paradox — B-state, both arms
--   [10] ≻      rel    := 𐑾               𐑳 → 𐑱  | forward morphism — bidirectional arrow
--   [11] ⋈     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [12] ⊙   gram   := 𐑠               𐑱 → ⊙  | identity — self-imscription
--   [13] ⊤     crit   := ⊙               𐑠 → 𐑭  | evaluate-true — criticality gate open
--   [14] ⊡      prot   := 𐑭               ⊙ → 𐑡  | irreversible fixation — winding number
--   [15] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def rsa_decrypter_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rsa_decrypter_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rsa_decrypter_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def rsa_decrypter_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rsa_decrypter_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rsa_decrypter_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def rsa_decrypter_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def rsa_decrypter_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def rsa_decrypter_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def rsa_decrypter_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def rsa_decrypter_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def rsa_decrypter_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def rsa_decrypter_l10 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def rsa_decrypter_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def rsa_decrypter_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def rsa_decrypter_protocol : IGProtocol rsa_decrypter_s0 rsa_decrypter_s15 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct rsa_decrypter_s7 rsa_decrypter_s7 = rsa_decrypter_s7 (idempotent)
  (.seq (.arrow rsa_decrypter_l0 rsa_decrypter_s0 rsa_decrypter_s1) (.seq (.arrow rsa_decrypter_l1 rsa_decrypter_s1 rsa_decrypter_s2) (.seq (.prod (.arrow rsa_decrypter_l2 rsa_decrypter_s2 rsa_decrypter_s7) (.arrow rsa_decrypter_l2 rsa_decrypter_s2 rsa_decrypter_s7)) (.seq (.arrow rsa_decrypter_l7 rsa_decrypter_s7 rsa_decrypter_s7) (.seq (.arrow rsa_decrypter_l7 rsa_decrypter_s7 rsa_decrypter_s8) (.seq (.arrow rsa_decrypter_l8 rsa_decrypter_s8 rsa_decrypter_s9) (.seq (.arrow rsa_decrypter_l9 rsa_decrypter_s9 rsa_decrypter_s10) (.seq (.arrow rsa_decrypter_l10 rsa_decrypter_s10 rsa_decrypter_s11) (.seq (.arrow rsa_decrypter_l11 rsa_decrypter_s11 rsa_decrypter_s12) (.seq (.arrow rsa_decrypter_l12 rsa_decrypter_s12 rsa_decrypter_s13) (.seq (.arrow rsa_decrypter_l13 rsa_decrypter_s13 rsa_decrypter_s14) (.arrow rsa_decrypter_l14 rsa_decrypter_s14 rsa_decrypter_s15))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def rsa_decrypter_true_arm : IGProtocol rsa_decrypter_s0 rsa_decrypter_s15 :=
  (rsa_decrypter_protocol).restrictToEVALT

-- false arm
noncomputable def rsa_decrypter_false_arm : IGProtocol rsa_decrypter_s0 rsa_decrypter_s15 :=
  (rsa_decrypter_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def rsa_decrypter_tier_ground : OuroboricityTier := TierFunctor.obj rsa_decrypter_s0
def rsa_decrypter_tier : OuroboricityTier := TierFunctor.obj rsa_decrypter_s15
#eval rsa_decrypter_tier_ground  -- tier of the ground (pre-transformation)
#eval rsa_decrypter_tier  -- the Grammar's own verdict on the closed object

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem rsa_decrypter_frobenius :
    igFrobeniusAlg.mul rsa_decrypter_s0 rsa_decrypter_s0 = rsa_decrypter_s0 :=
  igFrobAlg_self_fusion rsa_decrypter_s0
