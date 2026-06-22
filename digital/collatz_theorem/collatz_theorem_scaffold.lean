-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → EVALF → AFWD → FFUSE → CLINK → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → IFIX → AREV → FSPLIT → EVALT → FFUSE → IMSCRIB → IFIX → AFWD → TANCH → IMSCRIB
-- Class: Collatz Theorem
-- Fingerprint: sig=(11,5,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7), (16, 18)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [10] FSPLIT    gran   := 𐑚               𐑠 → ⊙  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [13] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [14] IFIX      prot   := 𐑭               𐑳 → 𐑗  | irreversible fixation — winding number
--   [15] AREV      pol    := 𐑗               𐑭 → 𐑚  | reverse morphism — parity flip
--   [16] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [18] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [19] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [20] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [21] AFWD      rel    := 𐑾               𐑭 → 𐑡  | forward morphism — bidirectional arrow
--   [22] TANCH     top    := 𐑡               𐑾 → 𐑠  | terminal object — connectivity boundary
--   [23] IMSCRIB   gram   := 𐑠               𐑡 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def collatz_theorem_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the domain with an arbitrary positive integer n in the void state ...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply the forward Collatz map T(n) as a directed transformation toward the te...)
  -- FSPLIT [2] (gran := 𐑚) (Branch the trajectory at the parity gate δ(n) into even and odd computational paths.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the even branch where n is divisible by 2, permitting the halving oper...)
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Execute the halving morphism n/2 on the affirmed even path.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negate the even condition, routing the odd branch to the expansion operation.)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Execute the expansion morphism 3n+1 on the routed odd path.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Reconstitute the even and odd branches back into a single unified trajectory via parity encoding.)
  (.arrow 𐑱 𐑙 𐑠)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Sequentially chain the next iteration T^k(n) to continue the forward morphism.)
  (.arrow 𐑠 𐑱 𐑚)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference the trajectory's parity sequence to verify injectivity and pat...)
  (.arrow 𐑚 𐑠 ⊙)  -- [10] FSPLIT | gran := 𐑚 | split δ — range decomposition (Re-branch the iterated trajectory at the next parity gate to monitor divergence.)
  (.arrow ⊙ 𐑚 𐑖)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the convergent path that trends toward the terminal cycle basin.)
  (.arrow 𐑖 ⊙ 𐑳)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (Flag the hypothetical divergent path or exotic cycle state.)
  (.arrow 𐑳 𐑖 𐑭)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Hold the critical phase boundary φ̈y where negative drift and expansion coexi...)
  (.arrow 𐑭 𐑳 𐑗)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently record the logarithmic drift λ ≈ -0.074 as an irreversible boundi...)
  (.arrow 𐑗 𐑭 𐑚)  -- [15] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse the morphism to trace backward through the inverse tree T⁻¹ from the ...)
  -- FSPLIT [16] (gran := 𐑚) (Branch the inverse relation into the doubling preimage 2m and the conditional preimage (m-1)/3.) / FFUSE [18] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the valid inverse preimages that populate the tree structure.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [18]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [18] FFUSE | stoi := 𐑙 (Fuse all inverse branches to reconstruct the complete tree T = Z⁺.)
  (.arrow 𐑠 𐑙 𐑭)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference the bidirectional coupling to certify S_c ↔ I_d exhaustion.)
  (.arrow 𐑭 𐑠 𐑾)  -- [20] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently fix the completeness of the inverse tree as a structural witness.)
  (.arrow 𐑾 𐑭 𐑡)  -- [21] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Advance the unified trajectory forward one final step into the terminal attra...)
  (.arrow 𐑡 𐑾 𐑠)  -- [22] TANCH | top := 𐑡 | terminal object — connectivity boundary (Anchor the entire system at the closed boundary of the cycle 1 → 4 → 2 → 1.)
  (.arrow 𐑠 𐑡 𐑼)  -- [23] IMSCRIB | gram := 𐑠 | identity — self-imscription (Close the ouroboric loop with self-referential proof certification at O_inf.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def collatz_theorem_true_arm : IGProtocol 𐑼 𐑠 :=
  (collatz_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def collatz_theorem_false_arm : IGProtocol 𐑼 𐑠 :=
  (collatz_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem collatz_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
