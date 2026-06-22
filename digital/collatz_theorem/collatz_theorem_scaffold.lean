-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → FFUSE → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → IFIX → CLINK → TANCH → ENGAGR
-- Class: Collatz Theorem
-- Fingerprint: sig=(6,4,3,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=14
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 3), (4, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [11] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [12] TANCH     top    := 𐑡               𐑱 → 𐑳  | terminal object — connectivity boundary
--   [13] ENGAGR    stoi   := 𐑳               𐑡 → 𐑼  | engage paradox — B-state, both arms

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def collatz_theorem_protocol : IGProtocol 𐑼 𐑳 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Establish the initial seed integer n_0 in the void state.)
  (.arrow 𐑠 𐑼 𐑚)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference the current integer n_k at step k.)
  -- FSPLIT [2] (gran := 𐑚) (Decompose n_k into remainder r and quotient q (Frobenius Pair 1).) / FFUSE [3] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [3]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑙)  -- [3] FFUSE | stoi := 𐑙 (Reconstitute n_k exactly as 2q + r, closing Frobenius Pair 1 and verifying structural integrity.)
  -- FSPLIT [4] (gran := 𐑚) (Branch execution path based on parity into Odd and Even arms (Frobenius Pair 2).) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm anchor: affirmative evaluation that n_k is Odd.)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (T-arm forward morphism: apply 3n+1 ascent operation.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm anchor: negative evaluation that n_k is Even.)
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (F-arm reverse morphism: apply n/2 descent operation.))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [9] FFUSE | stoi := 𐑙 (Reconstitute the single next state n_{k+1} from the active branch, closing Frobenius Pair 2.)
  (.arrow 𐑭 𐑙 𐑱)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (Append n_{k+1} to the permanent, irreversible hailstone trajectory log.)
  (.arrow 𐑱 𐑭 𐑡)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (Chain the new state n_{k+1} sequentially to the next iteration cycle.)
  (.arrow 𐑡 𐑱 𐑳)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor check: halt if n_{k+1} equals the boundary value 1.)
  (.arrow 𐑳 𐑡 𐑼)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter the 4-2-1 trivial cycle paradice, holding both termination and infinite...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def collatz_theorem_true_arm : IGProtocol 𐑼 𐑳 :=
  (collatz_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_theorem_false_arm : IGProtocol 𐑼 𐑳 :=
  (collatz_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem collatz_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
