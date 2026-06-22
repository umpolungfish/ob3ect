-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → IFIX → EVALF → AREV → IFIX → ENGAGR → IMSCRIB → FFUSE → CLINK → IMSCRIB → TANCH
-- Class: Legendre's Theorem
-- Fingerprint: sig=(9,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 12)]

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
--   [6] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [13] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def legendres_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (n is given as a bare positive integer, unanalyzed, void state (00).)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Fundamental Theorem of Arithmetic closes the system: every n has a unique...)
  -- FSPLIT [2] (gran := 𐑚) (n! branches into two exhaustive cases: primes p ≤ n (T-arm, divisibility true) and primes p > n (F-arm, divisibility false).) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (For each prime p ≤ n, the affirmative evaluation: p divides n!, so v_p(n!) ≥ ...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward morphism on T-arm: compute v_p(n!) = ⌊n/p⌋ + ⌊n/p²⌋ + ⌊n/p³⌋ + ... by...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Compose the sum: each term ⌊n/p^k⌋ chains to the next, building the complete ...)
        (.arrow 𐑭 𐑚 𐑙)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record v_p(n!) as a permanent exponent in the prime factorization of n!. Appe...)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (For each prime p > n, the negative evaluation: p does not divide n!, so v_p(n...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse morphism on F-arm: descend through the factorial hierarchy; no factor...)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record v_p(n!) = 0 as a permanent absence in the factorization. Determinative...)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (At the boundary case where n is prime: n appears as a factor in n! (true) and...)
        (.arrow 𐑠 𐑚 𐑙)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identity self-reference: v_p(n!) = v_p(n!). The valuation recognizes itself t...))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [12] FFUSE | stoi := 𐑙 (Reconstitute n! from all its prime exponents: n! = ∏_p p^{v_p(n!)}. The Frobenius constraint is satisfied: FFUSE(FSPLIT(n!)) = n!.)
  (.arrow 𐑱 𐑙 𐑠)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (Compose the final factorization: each prime power p^{v_p(n!)} chains with the...)
  (.arrow 𐑠 𐑱 𐑡)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference loop closes: the reconstructed n! is identical to the input n!...)
  (.arrow 𐑡 𐑠 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor: the Fundamental Theorem validates that this factorization is...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def legendres_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (legendres_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def legendres_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (legendres_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem legendres_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
