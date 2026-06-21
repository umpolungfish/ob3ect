-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AREV → EVALF → AFWD → FFUSE → CLINK → ENGAGR → FSPLIT → EVALT → TANCH → IFIX → IMSCRIB
-- Class: 7
-- Fingerprint: sig=(7,3,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑳  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑱 → 𐑚  | engage paradox — B-state, both arms
--   [10] FSPLIT    gran   := 𐑚               𐑳 → ⊙  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑡  | evaluate-true — criticality gate open
--   [12] TANCH     top    := 𐑡               ⊙ → 𐑭  | terminal object — connectivity boundary
--   [13] IFIX      prot   := 𐑭               𐑡 → 𐑠  | irreversible fixation — winding number
--   [14] IMSCRIB   gram   := 𐑠               𐑭 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def 7_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Select an arbitrary positive integer n.)
  (.arrow 𐑠 𐑼 𐑚)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify n as the starting point of a unique trajectory.)
  -- FSPLIT [2] (gran := 𐑚) (Evaluate the parity of the current state.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If n is even, proceed to the reverse arm.)
        (.arrow 𐑗 𐑚 𐑙)  -- [4] AREV | pol := 𐑗 | reverse morphism — parity flip (Apply n / 2.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (If n is odd, proceed to the forward arm.)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Apply 3n + 1.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Re-enter the iterative loop with the new value T(n).)
  (.arrow 𐑱 𐑙 𐑳)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Chain the result to the previous sequence of states.)
  (.arrow 𐑳 𐑱 𐑚)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Localize the tension between 3n+1 growth and n/2 decay within the Belnap kernel.)
  (.arrow 𐑚 𐑳 ⊙)  -- [10] FSPLIT | gran := 𐑚 | split δ — range decomposition (Check if the new state T(n) equals 1.)
  (.arrow ⊙ 𐑚 𐑡)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If state is 1, the trajectory is affirmative.)
  (.arrow 𐑡 ⊙ 𐑭)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Anchor the trajectory in the terminal cycle {1, 4, 2}.)
  (.arrow 𐑭 𐑡 𐑠)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the convergence of n as a permanent mathematical fact.)
  (.arrow 𐑠 𐑭 𐑼)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (The trajectory recognizes its own completion.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def 7_true_arm : IGProtocol 𐑼 𐑠 :=
  (7_protocol).restrictToEVALT

-- false arm
noncomputable def 7_false_arm : IGProtocol 𐑼 𐑠 :=
  (7_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem 7_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
