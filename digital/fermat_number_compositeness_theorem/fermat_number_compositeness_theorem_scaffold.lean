-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → AFWD → CLINK → CLINK → CLINK → FSPLIT → EVALT → IFIX → FFUSE → AREV → EVALF → IFIX → FFUSE → ENGAGR → IMSCRIB → CLINK → TANCH
-- Class: Fermat Number Compositeness Theorem
-- Fingerprint: sig=(11,3,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [11] AREV      pol    := 𐑗               𐑙 → 𐑖  | reverse morphism — parity flip
--   [12] EVALF     chir   := 𐑖               𐑗 → 𐑭  | evaluate-false — chirality check
--   [13] IFIX      prot   := 𐑭               𐑖 → 𐑙  | irreversible fixation — winding number
--   [14] FFUSE     stoi   := 𐑙               𐑭 → 𐑳  | fuse μ — assembly mode
--   [15] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [16] IMSCRIB   gram   := 𐑠               𐑳 → 𐑱  | identity — self-imscription
--   [17] CLINK     fid    := 𐑱               𐑠 → 𐑡  | composition — regime coherence
--   [18] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def fermat_number_compositeness_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize F_n as an uncomputed Fermat number 2^(2^n) + 1 with no known facto...)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Invoke the Fundamental Theorem of Arithmetic as the boundary that guarantees ...)
  (.arrow 𐑠 𐑡 𐑾)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize F_n as itself — the invariant integer form that persists through al...)
  (.arrow 𐑾 𐑠 𐑱)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Begin trial division, ascending through candidate primes p = 3, 5, 7, 11, ......)
  (.arrow 𐑱 𐑾 𐑱)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Compose the first divisor test (p = 3) with the next (p = 5), forming a pipel...)
  (.arrow 𐑱 𐑱 𐑱)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Compose the second test with the third, extending the pipeline.)
  (.arrow 𐑱 𐑱 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Continue composing divisor tests sequentially until a divisor is found or the...)
  -- FSPLIT [7] (gran := 𐑚) (Branch on the outcome of the divisor search: does a prime p divide F_n?) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-branch activated — a divisor p has been found; F_n is composite.)
        (.arrow 𐑭 𐑚 𐑙)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the factorization F_n = p × q (or the explicit factors) as a permanent...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [10] FFUSE | stoi := 𐑙 (T-branch result (divisor found) fuses back into the verdict: F_n is composite.)
  (.arrow 𐑗 𐑙 𐑖)  -- [11] AREV | pol := 𐑗 | reverse morphism — parity flip (F-branch activated — no divisor found in the trial range; descent into primal...)
  (.arrow 𐑖 𐑗 𐑭)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-branch evaluation — no factor discovered; F_n is a prime candidate.)
  (.arrow 𐑭 𐑖 𐑙)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the primality certificate (or exhaustive search completion) as a perma...)
  (.arrow 𐑙 𐑭 𐑳)  -- [14] FFUSE | stoi := 𐑙 | fuse μ — assembly mode (F-branch result (no divisor found) fuses back into the verdict: F_n is prime.)
  (.arrow 𐑳 𐑙 𐑠)  -- [15] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Paradice state invoked — Fermat's conjecture (all F_n prime) and Euler's refu...)
  (.arrow 𐑠 𐑳 𐑱)  -- [16] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference loop: the compositeness status of F_n is recognized as the ide...)
  (.arrow 𐑱 𐑠 𐑡)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (Compose the final verdict with the next Fermat number F_(n+1), extending the ...)
  (.arrow 𐑡 𐑱 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close the system: the Fundamental Theorem guarantees that every Fermat number...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def fermat_number_compositeness_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (fermat_number_compositeness_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def fermat_number_compositeness_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (fermat_number_compositeness_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem fermat_number_compositeness_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
