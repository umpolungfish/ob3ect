-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → AREV → FFUSE → IMSCRIB → IFIX → CLINK → TANCH
-- Class: Brennan Theorem
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [12] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [13] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [14] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def brennan_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (genesis of a germ f(z) = Σ aₙ(z - z₀)ⁿ at a single point z₀ in the complex plane)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the Riemann sphere ℂ ∪ {∞} as the universal boundary containing all...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (begin analytic continuation along a path γ from z₀ toward a target point w)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (compose continuation steps along γ into a single extended function on the path)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (verify that a contractible loop returns to the same germ (identity continuati...)
  -- FSPLIT [5] (gran := 𐑚) (encounter a branch point (e.g., z = 0 for √z); the germ splits into two distinct analytic branches) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm — continuation along upper sheet avoids the singularity, extends succes...)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm — continuation along lower sheet reveals the multi-valued nature, monod...)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (at the branch point itself, both sheets are held simultaneously; the function...)
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism — trace back through the branch point, descending into the m...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [10] FFUSE | stoi := 𐑙 (glue the two branches together on the Riemann surface; the multi-valued function is now single-valued on the surface)
  (.arrow 𐑠 𐑙 𐑭)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (verify that a loop around the branch point on the Riemann surface returns to ...)
  (.arrow 𐑭 𐑠 𐑱)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanently record the Riemann surface topology and monodromy group; the anal...)
  (.arrow 𐑱 𐑭 𐑡)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (compose all continuation paths into the complete analytic continuation of f)
  (.arrow 𐑡 𐑱 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (the final extended function is contained within the Riemann sphere; all singu...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def brennan_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (brennan_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def brennan_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (brennan_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem brennan_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
