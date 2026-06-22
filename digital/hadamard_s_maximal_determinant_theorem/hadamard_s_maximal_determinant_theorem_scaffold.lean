-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → IMSCRIB → CLINK → EVALT → IFIX → ENGAGR → AREV → IMSCRIB → CLINK → TANCH
-- Class: Hadamard's Maximal Determinant Theorem
-- Fingerprint: sig=(12,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 9)]

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
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [10] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [11] CLINK     fid    := 𐑱               𐑠 → ⊙  | composition — regime coherence
--   [12] EVALT     crit   := ⊙               𐑱 → 𐑭  | evaluate-true — criticality gate open
--   [13] IFIX      prot   := 𐑭               ⊙ → 𐑳  | irreversible fixation — winding number
--   [14] ENGAGR    stoi   := 𐑳               𐑭 → 𐑗  | engage paradox — B-state, both arms
--   [15] AREV      pol    := 𐑗               𐑳 → 𐑠  | reverse morphism — parity flip
--   [16] IMSCRIB   gram   := 𐑠               𐑗 → 𐑱  | identity — self-imscription
--   [17] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [18] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def hadamards_maximal_determinant_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized matrix space ∅ — no entries, no structure, void state before an...)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Hadamard's inequality det(H) ≤ n^(n/2) — the terminal boundary that contains ...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (row orthogonalization morphism — directed transformation toward orthogonal rows)
  (.arrow 𐑱 𐑾 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (sequential row construction — compose each new row orthogonal to all previous...)
  -- FSPLIT [4] (gran := 𐑚) (branch into two candidate row vectors — split the construction decision into T-arm (positive alignment) and F-arm (negative alignment)) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm evaluation — candidate row satisfies orthogonality constraint with all ...)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism on T-arm — advance toward maximal determinant by accepting t...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm evaluation — alternative candidate row also satisfies orthogonality con...)
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism on F-arm — descend through the alternative orthogonal direction))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [9] FFUSE | stoi := 𐑙 (reconstitute full orthogonal matrix — fuse both branches back into single n×n matrix H where H^T H = nI)
  (.arrow 𐑠 𐑙 𐑱)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-adjoint verification — matrix recognizes itself through H^T H = nI, iden...)
  (.arrow 𐑱 𐑠 ⊙)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (compose determinant evaluation — chain the orthogonality verification into de...)
  (.arrow ⊙ 𐑱 𐑭)  -- [12] EVALT | crit := ⊙ | evaluate-true — criticality gate open (determinant achieves n^(n/2) — success state, Hadamard matrix confirmed)
  (.arrow 𐑭 ⊙ 𐑳)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (canonical Hadamard matrix record — permanent witness, Sylvester construction ...)
  (.arrow 𐑳 𐑭 𐑗)  -- [14] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (existence paradice — simultaneously hold that Hadamard matrices exist for n=1...)
  (.arrow 𐑗 𐑳 𐑠)  -- [15] AREV | pol := 𐑗 | reverse morphism — parity flip (contravariant descent — from specific Hadamard instances back to the universa...)
  (.arrow 𐑠 𐑗 𐑱)  -- [16] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference loop — the theorem recognizes itself in every Hadamard matrix ...)
  (.arrow 𐑱 𐑠 𐑡)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (compose back to boundary — chain all orthogonal matrices back to the Hadamard...)
  (.arrow 𐑡 𐑱 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (terminal anchor — all valid matrices satisfy det(H) ≤ n^(n/2), system closed)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def hadamards_maximal_determinant_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (hadamards_maximal_determinant_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def hadamards_maximal_determinant_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (hadamards_maximal_determinant_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem hadamards_maximal_determinant_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
