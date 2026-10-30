-- IGProtocol scaffold: ⊢ → ≻ → ⊤ → ⋈ → ∈ → ≻ → ⊤ → ≺ → ⊥ → ∋ → ⋈ → ∈ → ≻ → ⊞ → ∋ → ⊙ → ⋈ → ⊡ → ⊣
-- Class: lifting hex values with Vox
-- Fingerprint: sig=(10,4,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=19
-- Expected tier: O₂dag
-- ∈/∋ pairs: [(4, 9), (11, 14)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] ⊢     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] ≻      rel    := 𐑾               𐑼 → ⊙  | forward morphism — bidirectional arrow
--   [2] ⊤     crit   := ⊙               𐑾 → 𐑱  | evaluate-true — criticality gate open
--   [3] ⋈     fid    := 𐑱               ⊙ → 𐑚  | composition — regime coherence
--   [4] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] ⊤     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] ≺      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ⊥     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ∋     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [10] ⋈     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [11] ∈    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] ≻      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [13] ⊞    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [14] ∋     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] ⊙   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [16] ⋈     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [17] ⊡      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [18] ⊣     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def lifting_hex_values_with_vox_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s1 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def lifting_hex_values_with_vox_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def lifting_hex_values_with_vox_s18 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def lifting_hex_values_with_vox_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l1 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l5 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def lifting_hex_values_with_vox_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def lifting_hex_values_with_vox_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def lifting_hex_values_with_vox_l18 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def lifting_hex_values_with_vox_protocol : IGProtocol lifting_hex_values_with_vox_s0 lifting_hex_values_with_vox_s18 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct lifting_hex_values_with_vox_s9 lifting_hex_values_with_vox_s9 = lifting_hex_values_with_vox_s9 (idempotent)
  (.seq (.arrow lifting_hex_values_with_vox_l0 lifting_hex_values_with_vox_s0 lifting_hex_values_with_vox_s1) (.seq (.arrow lifting_hex_values_with_vox_l1 lifting_hex_values_with_vox_s1 lifting_hex_values_with_vox_s2) (.seq (.arrow lifting_hex_values_with_vox_l2 lifting_hex_values_with_vox_s2 lifting_hex_values_with_vox_s3) (.seq (.arrow lifting_hex_values_with_vox_l3 lifting_hex_values_with_vox_s3 lifting_hex_values_with_vox_s4) (.seq (.prod (.arrow lifting_hex_values_with_vox_l4 lifting_hex_values_with_vox_s4 lifting_hex_values_with_vox_s9) (.arrow lifting_hex_values_with_vox_l4 lifting_hex_values_with_vox_s4 lifting_hex_values_with_vox_s9)) (.seq (.arrow lifting_hex_values_with_vox_l9 lifting_hex_values_with_vox_s9 lifting_hex_values_with_vox_s9) (.seq (.arrow lifting_hex_values_with_vox_l9 lifting_hex_values_with_vox_s9 lifting_hex_values_with_vox_s10) (.seq (.arrow lifting_hex_values_with_vox_l10 lifting_hex_values_with_vox_s10 lifting_hex_values_with_vox_s11) (.seq (.arrow lifting_hex_values_with_vox_l11 lifting_hex_values_with_vox_s11 lifting_hex_values_with_vox_s12) (.seq (.arrow lifting_hex_values_with_vox_l12 lifting_hex_values_with_vox_s12 lifting_hex_values_with_vox_s13) (.seq (.arrow lifting_hex_values_with_vox_l13 lifting_hex_values_with_vox_s13 lifting_hex_values_with_vox_s14) (.seq (.arrow lifting_hex_values_with_vox_l14 lifting_hex_values_with_vox_s14 lifting_hex_values_with_vox_s15) (.seq (.arrow lifting_hex_values_with_vox_l15 lifting_hex_values_with_vox_s15 lifting_hex_values_with_vox_s16) (.seq (.arrow lifting_hex_values_with_vox_l16 lifting_hex_values_with_vox_s16 lifting_hex_values_with_vox_s17) (.arrow lifting_hex_values_with_vox_l17 lifting_hex_values_with_vox_s17 lifting_hex_values_with_vox_s18)))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def lifting_hex_values_with_vox_true_arm : IGProtocol lifting_hex_values_with_vox_s0 lifting_hex_values_with_vox_s18 :=
  (lifting_hex_values_with_vox_protocol).restrictToEVALT

-- false arm
noncomputable def lifting_hex_values_with_vox_false_arm : IGProtocol lifting_hex_values_with_vox_s0 lifting_hex_values_with_vox_s18 :=
  (lifting_hex_values_with_vox_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₂dag.
def lifting_hex_values_with_vox_tier_ground : OuroboricityTier := TierFunctor.obj lifting_hex_values_with_vox_s0
def lifting_hex_values_with_vox_tier : OuroboricityTier := TierFunctor.obj lifting_hex_values_with_vox_s18
#eval lifting_hex_values_with_vox_tier_ground  -- tier of the ground (pre-transformation)
#eval lifting_hex_values_with_vox_tier  -- the Grammar's own verdict on the closed object
