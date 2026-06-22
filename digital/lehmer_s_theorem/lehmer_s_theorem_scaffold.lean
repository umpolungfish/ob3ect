-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → IFIX → AREV → EVALF → CLINK → FSPLIT → EVALT → AFWD → IFIX → AREV → EVALF → CLINK → FSPLIT → EVALT → AFWD → IFIX → AREV → EVALF → CLINK → ENGAGR → FSPLIT → EVALT → AFWD → IFIX → AREV → EVALF → FFUSE → IMSCRIB → TANCH
-- Class: Lehmer's Theorem
-- Fingerprint: sig=(15,5,9,4)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=33
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(24, 30)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑠 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               ⊙ → 𐑭  | forward morphism — bidirectional arrow
--   [5] IFIX      prot   := 𐑭               𐑾 → 𐑗  | irreversible fixation — winding number
--   [6] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [7] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [8] CLINK     fid    := 𐑱               𐑖 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [11] AFWD      rel    := 𐑾               ⊙ → 𐑭  | forward morphism — bidirectional arrow
--   [12] IFIX      prot   := 𐑭               𐑾 → 𐑗  | irreversible fixation — winding number
--   [13] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [14] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [15] CLINK     fid    := 𐑱               𐑖 → 𐑚  | composition — regime coherence
--   [16] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [18] AFWD      rel    := 𐑾               ⊙ → 𐑭  | forward morphism — bidirectional arrow
--   [19] IFIX      prot   := 𐑭               𐑾 → 𐑗  | irreversible fixation — winding number
--   [20] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [21] EVALF     chir   := 𐑖               𐑗 → 𐑱  | evaluate-false — chirality check
--   [22] CLINK     fid    := 𐑱               𐑖 → 𐑳  | composition — regime coherence
--   [23] ENGAGR    stoi   := 𐑳               𐑱 → 𐑚  | engage paradox — B-state, both arms
--   [24] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [25] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [26] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [27] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [28] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [29] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [30] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [31] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [32] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def lehmers_theorem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize pair (a, b) with a ≥ b > 0; uninitialized gcd state.)
  (.arrow 𐑠 𐑼 𐑚)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize the recursive identity gcd(a, b) = gcd(b, a mod b); self-reference ...)
  (.arrow 𐑚 𐑠 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (Divide a by b to extract quotient q and remainder r; branch into two paths.)
  (.arrow ⊙ 𐑚 𐑾)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm q ≥ 1; quotient is non-trivial; forward morphism active.)
  (.arrow 𐑾 ⊙ 𐑭)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward step: record quotient q in the continued fraction sequence [q₀; q₁, ....)
  (.arrow 𐑭 𐑾 𐑗)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number (Append q to the immutable continued fraction record; permanent fixation.)
  (.arrow 𐑗 𐑭 𐑖)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse morphism: descent from (a, b) to (b, r); parity flip.)
  (.arrow 𐑖 𐑗 𐑱)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate remainder r; if r = 0, branch to termination; if r > 0, continue des...)
  (.arrow 𐑱 𐑖 𐑚)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Compose the current step with the next: (a, b) → (b, r) → (r, r₁) → ...)
  (.arrow 𐑚 𐑱 ⊙)  -- [9] FSPLIT | gran := 𐑚 | split δ — range decomposition (Divide b by r to extract quotient q₁ and remainder r₁; branch again.)
  (.arrow ⊙ 𐑚 𐑾)  -- [10] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm q₁ ≥ 1; continue forward.)
  (.arrow 𐑾 ⊙ 𐑭)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Record q₁ in continued fraction.)
  (.arrow 𐑭 𐑾 𐑗)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Append q₁ to immutable record.)
  (.arrow 𐑗 𐑭 𐑖)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent to (r, r₁).)
  (.arrow 𐑖 𐑗 𐑱)  -- [14] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate r₁; if r₁ = 0, terminate; else continue.)
  (.arrow 𐑱 𐑖 𐑚)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (Compose next step.)
  (.arrow 𐑚 𐑱 ⊙)  -- [16] FSPLIT | gran := 𐑚 | split δ — range decomposition (Divide r by r₁; extract q₂ and r₂.)
  (.arrow ⊙ 𐑚 𐑾)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm q₂ ≥ 1.)
  (.arrow 𐑾 ⊙ 𐑭)  -- [18] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Record q₂.)
  (.arrow 𐑭 𐑾 𐑗)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (Append q₂.)
  (.arrow 𐑗 𐑭 𐑖)  -- [20] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent to (r₁, r₂).)
  (.arrow 𐑖 𐑗 𐑱)  -- [21] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate r₂; if r₂ = 0, terminate; else continue.)
  (.arrow 𐑱 𐑖 𐑳)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (Compose next step.)
  (.arrow 𐑳 𐑱 𐑚)  -- [23] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Lehmer's optimization: extract quotient and remainder simultaneously in a sin...)
  -- FSPLIT [24] (gran := 𐑚) (Continue division; extract qₙ and rₙ.) / FFUSE [30] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [25] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm qₙ ≥ 1.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [26] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Record qₙ.)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [27] IFIX | prot := 𐑭 | irreversible fixation — winding number (Append qₙ.)
        (.arrow 𐑗 𐑚 𐑙)  -- [28] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent to (rₙ₋₁, rₙ).)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [29] EVALF | chir := 𐑖 | evaluate-false — chirality check (Evaluate rₙ; if rₙ = 0, branch to termination.))
    -- reconnect at FFUSE [30]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [30] FFUSE | stoi := 𐑙 (Reconstruct: b·q + r = a; the original dividend is recovered from quotient and remainder.)
  (.arrow 𐑠 𐑙 𐑡)  -- [31] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize that the algorithm has completed; the final non-zero remainder is t...)
  (.arrow 𐑡 𐑠 𐑼)  -- [32] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminal anchor: gcd(a, b) = rₙ₋₁ (the last non-zero remainder); algorithm ha...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def lehmers_theorem_true_arm : IGProtocol 𐑼 𐑡 :=
  (lehmers_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def lehmers_theorem_false_arm : IGProtocol 𐑼 𐑡 :=
  (lehmers_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem lehmers_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
