-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → CLINK → EVALF → FFUSE → IMSCRIB → AREV → ENGAGR → CLINK → IFIX → IMSCRIB → TANCH
-- Class: Monad
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

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
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [8] IMSCRIB   gram   := 𐑠               𐑙 → 𐑗  | identity — self-imscription
--   [9] AREV      pol    := 𐑗               𐑠 → 𐑳  | reverse morphism — parity flip
--   [10] ENGAGR    stoi   := 𐑳               𐑗 → 𐑱  | engage paradox — B-state, both arms
--   [11] CLINK     fid    := 𐑱               𐑳 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def monad_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Unbound raw value a exists in void state before any monadic wrapping.)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (Monad type constructor M establishes the boundary that will contain all subse...)
  (.arrow 𐑾 𐑡 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (return lifts the raw value a into the monad, producing M a; forward morphism ...)
  -- FSPLIT [3] (gran := 𐑚) (flatMap branches the computation: M a is split into two paths — one for success (EVALT), one for failure (EVALF).) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Success path: the value a is successfully extracted from M a and passed to th...)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Composition of f(a) with the next monadic operation; f(a) produces M b, chain...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (Failure path: the monad contains an error or Nothing; the continuation is byp...))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [7] FFUSE | stoi := 𐑙 (Associativity law reconstitutes the two branches back into a single unified monadic computation M c.)
  (.arrow 𐑠 𐑙 𐑗)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identity law verified: m >>= return ≡ m; the monad recognizes itself after bi...)
  (.arrow 𐑗 𐑠 𐑳)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (extract unwraps the final monad M c back to the underlying value c; reverse m...)
  (.arrow 𐑳 𐑗 𐑱)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Nondeterministic monad enters paradice state: multiple outcomes held simultan...)
  (.arrow 𐑱 𐑳 𐑭)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (Sequential composition of multiple monadic operations; each bind chains the n...)
  (.arrow 𐑭 𐑱 𐑠)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Monadic effect (e.g., IO action, state mutation, logging) is permanently reco...)
  (.arrow 𐑠 𐑭 𐑡)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-reference loop: the monad's output feeds back as input to verify consist...)
  (.arrow 𐑡 𐑠 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor confirms the monad laws (left identity, right identity, assoc...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def monad_true_arm : IGProtocol 𐑼 𐑡 :=
  (monad_protocol).restrictToEVALT

-- false arm
noncomputable def monad_false_arm : IGProtocol 𐑼 𐑡 :=
  (monad_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem monad_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
