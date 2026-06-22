-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → EVALT → AFWD → AFWD → AFWD → IFIX → CLINK → FFUSE → EVALF → FFUSE → AFWD → FSPLIT → EVALT → AFWD → AFWD → AFWD → IFIX → CLINK → FFUSE → AFWD → ENGAGR → CLINK → IMSCRIB → AREV → TANCH → IFIX
-- Class: Hadamard Theorem
-- Fingerprint: sig=(17,5,4,3)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=29
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 10), (14, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [9] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑖  | fuse μ — assembly mode
--   [11] EVALF     chir   := 𐑖               𐑙 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑖 → 𐑾  | fuse μ — assembly mode
--   [13] AFWD      rel    := 𐑾               𐑙 → 𐑚  | forward morphism — bidirectional arrow
--   [14] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [17] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [18] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [19] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [20] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [21] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [22] AFWD      rel    := 𐑾               𐑙 → 𐑳  | forward morphism — bidirectional arrow
--   [23] ENGAGR    stoi   := 𐑳               𐑾 → 𐑱  | engage paradox — B-state, both arms
--   [24] CLINK     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [25] IMSCRIB   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [26] AREV      pol    := 𐑗               𐑠 → 𐑡  | reverse morphism — parity flip
--   [27] TANCH     top    := 𐑡               𐑗 → 𐑭  | terminal object — connectivity boundary
--   [28] IFIX      prot   := 𐑭               𐑡 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def hadamard_theorem_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize with undecomposed orthogonal matrix Q; no factors yet identified.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (recognize Q through its orthogonality property Q^T ∘ Q = I; self-reference es...)
  (.arrow 𐑾 𐑠 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (begin forward elimination; set column index k = 1.)
  -- FSPLIT [3] (gran := 𐑚) (branch on whether column k has nonzero subdiagonal entries.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch taken; column k requires a Householder reflection.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute Householder vector v_k from column k subdiagonal.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (construct reflection matrix H_k = I - 2(v_k ∘ v_k^T).)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (apply H_k to Q from the left; zero out subdiagonal of column k.)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (record H_k as a permanent factor in the decomposition.)
        (.arrow 𐑱 𐑚 𐑙)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (compose H_k into the chain of reflections.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑖)  -- [10] FFUSE | stoi := 𐑙 (reconstitute the partially decomposed matrix after applying H_k.)
  (.arrow 𐑖 𐑙 𐑙)  -- [11] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch taken; column k is already canonical.)
  (.arrow 𐑙 𐑖 𐑾)  -- [12] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (reconstitute the partially decomposed matrix without applying a reflection.)
  (.arrow 𐑾 𐑙 𐑚)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (advance to column k+1.)
  -- FSPLIT [14] (gran := 𐑚) (branch on whether column k+1 requires reflection.) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch taken; column k+1 requires a Householder reflection.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (compute Householder vector v_{k+1} from column k+1 subdiagonal.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [17] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (construct reflection matrix H_{k+1}.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [18] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (apply H_{k+1} to the partially decomposed matrix.)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (record H_{k+1} as a permanent factor.)
        (.arrow 𐑱 𐑚 𐑙)  -- [20] CLINK | fid := 𐑱 | composition — regime coherence (compose H_{k+1} into the chain.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [21] FFUSE | stoi := 𐑙 (reconstitute after applying H_{k+1}.)
  (.arrow 𐑾 𐑙 𐑳)  -- [22] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (continue elimination for remaining columns.)
  (.arrow 𐑳 𐑾 𐑱)  -- [23] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (at each step, the sign of the Householder reflection is ambiguous; both ±H_k ...)
  (.arrow 𐑱 𐑳 𐑠)  -- [24] CLINK | fid := 𐑱 | composition — regime coherence (compose all n Householder reflections: Q = H_1 ∘ H_2 ∘ ... ∘ H_n.)
  (.arrow 𐑠 𐑱 𐑗)  -- [25] IMSCRIB | gram := 𐑠 | identity — self-imscription (verify orthogonality of the product; the reconstructed matrix recognizes itse...)
  (.arrow 𐑗 𐑠 𐑡)  -- [26] AREV | pol := 𐑗 | reverse morphism — parity flip (backward reconstruction: multiply the chain of reflections to recover Q exactly.)
  (.arrow 𐑡 𐑗 𐑭)  -- [27] TANCH | top := 𐑡 | terminal object — connectivity boundary (the complete factorization is now closed and bounded; the Hadamard decomposit...)
  (.arrow 𐑭 𐑡 𐑼)  -- [28] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the final factorization as an immutable, append-only result.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def hadamard_theorem_true_arm : IGProtocol 𐑼 𐑭 :=
  (hadamard_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def hadamard_theorem_false_arm : IGProtocol 𐑼 𐑭 :=
  (hadamard_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem hadamard_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
