-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → EVALF → AREV → CLINK → ENGAGR → FFUSE → IFIX → IMSCRIB → TANCH
-- Class: Köthe Theorem
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def k_the_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the void — no Köthe matrix, no sequence space structure exists yet)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Establish the terminal anchor — the Köthe dual λ(A)′ as the boundary containi...)
  (.arrow 𐑾 𐑡 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Define the canonical embedding λ(A) → λ(A)′′ — forward morphism toward reflex...)
  -- FSPLIT [3] (gran := 𐑚) (Branch the Köthe matrix A into two evaluation paths: T-arm (rows satisfying Köthe condition) and F-arm (rows violating it)) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the T-arm — for each row i in the T-arm, there exists j such that 0 < ...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Compose the T-arm evaluation with the embedding morphism — chain the forward ...)
        (.arrow 𐑠 𐑚 𐑙)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize reflexivity in the T-arm — λ(A) ≅ λ(A)′′; the space knows itself in...)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negate the F-arm — for each row i in the F-arm, either a(i,j) = ∞ for all j, ...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (Define the restriction map λ(A)′′ → λ(A) on the F-arm — reverse morphism, des...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (Compose the F-arm evaluation with the restriction morphism — chain the revers...)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Introduce a paradice — a Köthe matrix with mixed rows: some satisfying the co...))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [11] FFUSE | stoi := 𐑙 (Reconstitute the original Köthe matrix A from both branches — the T-arm (perfect duality) and F-arm (imperfect duality) fuse back into A; FFUSE(FSPLIT(A)) = A)
  (.arrow 𐑭 𐑙 𐑠)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the Köthe matrix A as a permanent, append-only sequence of rows — each...)
  (.arrow 𐑠 𐑭 𐑡)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (Close the loop — the final state recognizes the initial structure; reflexivit...)
  (.arrow 𐑡 𐑠 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the boundary — the Köthe dual λ(A)′ contains and closes the entire system)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def k_the_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (k_the_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def k_the_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (k_the_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem k_the_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
