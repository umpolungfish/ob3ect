-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → FSPLIT → EVALT → CLINK → IMSCRIB → AFWD → CLINK → IFIX → FSPLIT → AREV → FFUSE → CLINK → EVALT → FFUSE → IMSCRIB → TANCH
-- Class: equiangular proves the 143 Weyl-Heisenberg overlap condition: for all (a,b)≠(0,0), 13·|⟨ψ|D_{a,b}ψ⟩|²=1, by transferring each O_{a,b}·Ō_{a,b}=1/13 from the ExistenceRing through phi, with the formal overlap O_{a,b} computed as Σ_j z̄_j ζ^{(j-a)b} z_{j-a} and phi preserving the ring arithmetic
-- Fingerprint: sig=(10,4,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=18
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(10, 12), (3, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑚  | irreversible fixation — winding number
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [14] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [16] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [17] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def equiangular_proves_the_143_weyl_595f18_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_s17 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := fee, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def equiangular_proves_the_143_weyl_595f18_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def equiangular_proves_the_143_weyl_595f18_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l12 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l13 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def equiangular_proves_the_143_weyl_595f18_l17 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def equiangular_proves_the_143_weyl_595f18_protocol : IGProtocol equiangular_proves_the_143_weyl_595f18_s0 equiangular_proves_the_143_weyl_595f18_s17 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct equiangular_proves_the_143_weyl_595f18_s12 equiangular_proves_the_143_weyl_595f18_s12 = equiangular_proves_the_143_weyl_595f18_s12 (idempotent)
  (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l0 equiangular_proves_the_143_weyl_595f18_s0 equiangular_proves_the_143_weyl_595f18_s1) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l1 equiangular_proves_the_143_weyl_595f18_s1 equiangular_proves_the_143_weyl_595f18_s2) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l2 equiangular_proves_the_143_weyl_595f18_s2 equiangular_proves_the_143_weyl_595f18_s3) (.seq (.prod (.arrow equiangular_proves_the_143_weyl_595f18_l3 equiangular_proves_the_143_weyl_595f18_s3 equiangular_proves_the_143_weyl_595f18_s12) (.arrow equiangular_proves_the_143_weyl_595f18_l3 equiangular_proves_the_143_weyl_595f18_s3 equiangular_proves_the_143_weyl_595f18_s12)) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l12 equiangular_proves_the_143_weyl_595f18_s12 equiangular_proves_the_143_weyl_595f18_s12) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l12 equiangular_proves_the_143_weyl_595f18_s12 equiangular_proves_the_143_weyl_595f18_s13) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l13 equiangular_proves_the_143_weyl_595f18_s13 equiangular_proves_the_143_weyl_595f18_s14) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l14 equiangular_proves_the_143_weyl_595f18_s14 equiangular_proves_the_143_weyl_595f18_s15) (.seq (.arrow equiangular_proves_the_143_weyl_595f18_l15 equiangular_proves_the_143_weyl_595f18_s15 equiangular_proves_the_143_weyl_595f18_s16) (.arrow equiangular_proves_the_143_weyl_595f18_l16 equiangular_proves_the_143_weyl_595f18_s16 equiangular_proves_the_143_weyl_595f18_s17))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def equiangular_proves_the_143_weyl_595f18_true_arm : IGProtocol equiangular_proves_the_143_weyl_595f18_s0 equiangular_proves_the_143_weyl_595f18_s17 :=
  (equiangular_proves_the_143_weyl_595f18_protocol).restrictToEVALT

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def equiangular_proves_the_143_weyl_595f18_tier : OuroboricityTier := TierFunctor.obj equiangular_proves_the_143_weyl_595f18_s0
#eval equiangular_proves_the_143_weyl_595f18_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem equiangular_proves_the_143_weyl_595f18_frobenius :
    igFrobeniusAlg.mul equiangular_proves_the_143_weyl_595f18_s0 equiangular_proves_the_143_weyl_595f18_s0 = equiangular_proves_the_143_weyl_595f18_s0 :=
  igFrobAlg_self_fusion equiangular_proves_the_143_weyl_595f18_s0
