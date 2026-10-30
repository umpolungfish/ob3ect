-- IGProtocol scaffold: VINIT → IFIX → AFWD → CLINK → FSPLIT → EVALT → AFWD → IMSCRIB → FFUSE → FSPLIT → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: dim(x) = 0 ∧ fin(x) — point-like prime atom ∧\nx ⊆ y ∧ cont(y) ∧\nFun(x, y) ∧ Nat(y, z) → Fun(x, z) — bridge composition ∧\n¬∃sym(x) ∧\nP(x) ∈ {0,1} ∧ det(x) ∧\nτ = ∞ ∧ ord(x) — infinite extension ∧\n∃y∈x( |y| ∼ |x| ) — bridge existence ∧\nf → all(x) ∧ broadcast(x, f) ∧\nξ → ∞ ∧ chaotic(x) ∧\n∀n∃φ( rank(φ) > n ∧ φ fixed by μ∘δ ∧ φ ∈ V ) ∧\n∃a∈A∃b∈B( type(a) ≠ type(b) ) — moat vs bridge ∧\n∮_γ dx = 0
-- Fingerprint: sig=(8,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=17
-- Expected tier: O₁
-- FSPLIT/FFUSE pairs: [(4, 8), (9, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑭  | initial object — ground of distinction
--   [1] IFIX      prot   := 𐑭               𐑼 → 𐑾  | irreversible fixation — winding number
--   [2] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [14] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [15] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [16] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s2 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l2 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l6 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_protocol : IGProtocol dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 = dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 (idempotent)
  (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l0 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s1) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l1 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s1 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s2) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l2 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s2 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s3) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l3 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s3 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s4) (.seq (.prod (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l4 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s4 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8) (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l4 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s4 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8)) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l8 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l8 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s8 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s9) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l9 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s9 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s10) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l10 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s10 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s11) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l11 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s11 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s12) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l12 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s12 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s13) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l13 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s13 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s14) (.seq (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l14 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s14 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s15) (.arrow dim_x_0_fin_x_point_like_prime_atom_nx_205f69_l15 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s15 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s16))))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_true_arm : IGProtocol dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s16 :=
  (dim_x_0_fin_x_point_like_prime_atom_nx_205f69_protocol).restrictToEVALT

-- false arm
noncomputable def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_false_arm : IGProtocol dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0 dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s16 :=
  (dim_x_0_fin_x_point_like_prime_atom_nx_205f69_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). assess_tier verdict on the imscribed tuple: .O₁.
def dim_x_0_fin_x_point_like_prime_atom_nx_205f69_tier : OuroboricityTier := TierFunctor.obj dim_x_0_fin_x_point_like_prime_atom_nx_205f69_s0
#eval dim_x_0_fin_x_point_like_prime_atom_nx_205f69_tier  -- the Grammar's own verdict on its tier
