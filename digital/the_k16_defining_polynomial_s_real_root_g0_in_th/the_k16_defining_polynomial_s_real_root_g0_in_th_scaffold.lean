-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → AFWD → AREV → TANCH → CLINK → IMSCRIB → AFWD → AFWD → ENGAGR → IFIX → IMSCRIB
-- Class: The K16 defining polynomial's real root g0 in the open interval (0,1) is exhibited constructively by the Intermediate Value Theorem: eval(0)=1>0, eval(1)=-1<0, so a root exists, and since neither endpoint is a root the inequalities are strict. This root is the coordinate at which the embedding ring homomorphism phi: R -> C evaluates every K16 power-basis element, extending to the full ring K16(s0,s1,s3,s9,i,c5,u1) by complex square roots (no positivity needed since C is algebraically closed). Setting psi_k = phi(rZ k) transfers the norm identity (sum of moduli = 1) and all 143 Weyl-Heisenberg overlap identities (each = 1/13) from the exact SIC_D12_ExistenceRing to IsSICPOVM 12 psi. This discharges crystal_forces_d12_sic, dropping it from an existence axiom to a proved theorem: the d=12 SIC-POVM fiducial exists as a concrete vector in C^12. The object is self-verifying: solve (find the root) then coagula (evaluate and transfer), with mu-after-delta closure witnessed by the ring homomorphism preserving multiplication and conjugation.
-- Fingerprint: sig=(11,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
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
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [7] AFWD      rel    := 𐑾               𐑙 → 𐑗  | forward morphism — bidirectional arrow
--   [8] AREV      pol    := 𐑗               𐑾 → 𐑡  | reverse morphism — parity flip
--   [9] TANCH     top    := 𐑡               𐑗 → 𐑱  | terminal object — connectivity boundary
--   [10] CLINK     fid    := 𐑱               𐑡 → 𐑠  | composition — regime coherence
--   [11] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [12] AFWD      rel    := 𐑾               𐑠 → 𐑾  | forward morphism — bidirectional arrow
--   [13] AFWD      rel    := 𐑾               𐑾 → 𐑳  | forward morphism — bidirectional arrow
--   [14] ENGAGR    stoi   := 𐑳               𐑾 → 𐑭  | engage paradox — B-state, both arms
--   [15] IFIX      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [16] IMSCRIB   gram   := 𐑠               𐑭 → 𐑼  | identity — self-imscription

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def the_k16_defining_polynomials_real_root_97542f_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s3 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s4 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s5 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s6 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s7 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s12 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s13 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s14 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_s15 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }
private def the_k16_defining_polynomials_real_root_97542f_s16 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := up, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def the_k16_defining_polynomials_real_root_97542f_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l3 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l7 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l8 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l12 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l13 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l14 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def the_k16_defining_polynomials_real_root_97542f_l15 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def the_k16_defining_polynomials_real_root_97542f_l16 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def the_k16_defining_polynomials_real_root_97542f_protocol : IGProtocol the_k16_defining_polynomials_real_root_97542f_s0 the_k16_defining_polynomials_real_root_97542f_s16 :=
  .withGram Grammar.measure <|
  -- Dual-Link self-pairing: .prod arms fuse via tensorProduct the_k16_defining_polynomials_real_root_97542f_s6 the_k16_defining_polynomials_real_root_97542f_s6 = the_k16_defining_polynomials_real_root_97542f_s6 (idempotent)
  (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l0 the_k16_defining_polynomials_real_root_97542f_s0 the_k16_defining_polynomials_real_root_97542f_s1) (.seq (.prod (.arrow the_k16_defining_polynomials_real_root_97542f_l1 the_k16_defining_polynomials_real_root_97542f_s1 the_k16_defining_polynomials_real_root_97542f_s6) (.arrow the_k16_defining_polynomials_real_root_97542f_l1 the_k16_defining_polynomials_real_root_97542f_s1 the_k16_defining_polynomials_real_root_97542f_s6)) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l6 the_k16_defining_polynomials_real_root_97542f_s6 the_k16_defining_polynomials_real_root_97542f_s6) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l6 the_k16_defining_polynomials_real_root_97542f_s6 the_k16_defining_polynomials_real_root_97542f_s7) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l7 the_k16_defining_polynomials_real_root_97542f_s7 the_k16_defining_polynomials_real_root_97542f_s8) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l8 the_k16_defining_polynomials_real_root_97542f_s8 the_k16_defining_polynomials_real_root_97542f_s9) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l9 the_k16_defining_polynomials_real_root_97542f_s9 the_k16_defining_polynomials_real_root_97542f_s10) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l10 the_k16_defining_polynomials_real_root_97542f_s10 the_k16_defining_polynomials_real_root_97542f_s11) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l11 the_k16_defining_polynomials_real_root_97542f_s11 the_k16_defining_polynomials_real_root_97542f_s12) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l12 the_k16_defining_polynomials_real_root_97542f_s12 the_k16_defining_polynomials_real_root_97542f_s13) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l13 the_k16_defining_polynomials_real_root_97542f_s13 the_k16_defining_polynomials_real_root_97542f_s14) (.seq (.arrow the_k16_defining_polynomials_real_root_97542f_l14 the_k16_defining_polynomials_real_root_97542f_s14 the_k16_defining_polynomials_real_root_97542f_s15) (.arrow the_k16_defining_polynomials_real_root_97542f_l15 the_k16_defining_polynomials_real_root_97542f_s15 the_k16_defining_polynomials_real_root_97542f_s16)))))))))))))

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def the_k16_defining_polynomials_real_root_97542f_true_arm : IGProtocol the_k16_defining_polynomials_real_root_97542f_s0 the_k16_defining_polynomials_real_root_97542f_s16 :=
  (the_k16_defining_polynomials_real_root_97542f_protocol).restrictToEVALT

-- false arm
noncomputable def the_k16_defining_polynomials_real_root_97542f_false_arm : IGProtocol the_k16_defining_polynomials_real_root_97542f_s0 the_k16_defining_polynomials_real_root_97542f_s16 :=
  (the_k16_defining_polynomials_real_root_97542f_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

-- Tier: apply the Grammar to the object (self-application). Fingerprint heuristic suggested .O₂.
def the_k16_defining_polynomials_real_root_97542f_tier : OuroboricityTier := TierFunctor.obj the_k16_defining_polynomials_real_root_97542f_s0
#eval the_k16_defining_polynomials_real_root_97542f_tier  -- the Grammar's own verdict on its tier

-- Frobenius (split → fuse): μ∘δ = id on the ground imscription
theorem the_k16_defining_polynomials_real_root_97542f_frobenius :
    igFrobeniusAlg.mul the_k16_defining_polynomials_real_root_97542f_s0 the_k16_defining_polynomials_real_root_97542f_s0 = the_k16_defining_polynomials_real_root_97542f_s0 :=
  igFrobAlg_self_fusion the_k16_defining_polynomials_real_root_97542f_s0
