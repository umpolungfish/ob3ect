-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → IMSCRIB → IFIX → FFUSE → EVALF → AREV → CLINK → ENGAGR → IMSCRIB → CLINK → TANCH
-- Class: Fuglede's Theorem
-- Fingerprint: sig=(10,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [9] EVALF     chir   := 𐑖               𐑙 → 𐑗  | evaluate-false — chirality check
--   [10] AREV      pol    := 𐑗               𐑖 → 𐑱  | reverse morphism — parity flip
--   [11] CLINK     fid    := 𐑱               𐑗 → 𐑳  | composition — regime coherence
--   [12] ENGAGR    stoi   := 𐑳               𐑱 → 𐑠  | engage paradox — B-state, both arms
--   [13] IMSCRIB   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [14] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [15] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def fugledes_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (genesis of the operator pair (T, U) in uninitialized state; no properties yet...)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the Hilbert space H as the universal container; all operators live ...)
  -- FSPLIT [2] (gran := 𐑚) (branch the normal operator T into its spectral decomposition T = ∫ λ dE(λ); one object becomes a continuum of eigenvalue-projection pairs) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (5 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirm the true branch: T satisfies TT* = T*T (normality condition holds))
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism along the true branch: normality implies the existence of a ...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (compose the spectral measure with the eigenvalue integral: ∫ λ dE(λ) is well-...)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference: the spectral decomposition recognizes T through its own adjoi...)
        (.arrow 𐑭 𐑚 𐑙)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanently record the spectral measure E(λ); this decomposition is now fixed...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [8] FFUSE | stoi := 𐑙 (reconstitute T from its spectral components: ∫ λ dE(λ) → T; the branches fuse back into the original operator)
  (.arrow 𐑖 𐑙 𐑗)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (affirm the false branch: T does not satisfy TT* = T*T (normality condition fa...)
  (.arrow 𐑗 𐑖 𐑱)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism along the false branch: non-normality implies the absence of...)
  (.arrow 𐑱 𐑗 𐑳)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (compose the reverse path: if spectral decomposition fails, then T cannot be n...)
  (.arrow 𐑳 𐑱 𐑠)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice state: an operator that is neither fully normal nor fully non-normal...)
  (.arrow 𐑠 𐑳 𐑱)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference loop: the operator recognizes itself through the paradice; ide...)
  (.arrow 𐑱 𐑠 𐑡)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (final composition: the biconditional equivalence is complete: T is normal ↔ T...)
  (.arrow 𐑡 𐑱 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the boundary; the entire theorem is now contained within the Hilbert sp...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def fugledes_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (fugledes_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def fugledes_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (fugledes_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem fugledes_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
