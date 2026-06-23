-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → AFWD → EVALT → CLINK → EVALT → FFUSE → IFIX → AREV → EVALF → ENGAGR → AFWD → EVALT → EVALF → CLINK → IFIX → TANCH
-- Class: Phytoglyphic Medicine
-- Fingerprint: sig=(9,2,6,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

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
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [9] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [10] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [11] EVALF     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [12] ENGAGR    stoi   := 𐑳               𐑖 → 𐑾  | engage paradox — B-state, both arms
--   [13] AFWD      rel    := 𐑾               𐑳 → ⊙  | forward morphism — bidirectional arrow
--   [14] EVALT     crit   := ⊙               𐑾 → 𐑖  | evaluate-true — criticality gate open
--   [15] EVALF     chir   := 𐑖               ⊙ → 𐑱  | evaluate-false — chirality check
--   [16] CLINK     fid    := 𐑱               𐑖 → 𐑭  | composition — regime coherence
--   [17] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def phytoglyphic_medicine_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Unharvested seed/root void of preparation.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Morphology self-recognizes as instruction set.)
  (.arrow 𐑾 𐑠 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Forward extraction begins along therapeutic path.)
  -- FSPLIT [3] (gran := 𐑚) (Bilateral serration/root bifurcation splits substrate into T (therapeutic) and F (degenerate) arms.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (T-arm proceeds through ester cleavage and menstruum contact.)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (T-arm bitterness threshold met; latch condition satisfied.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Sequential chaining of Fibonacci extraction passes.)
        (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Spiral winding closes; chamazulene blue appears.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [8] FFUSE | stoi := 𐑙 (Recombination of T and F arms restores original plant identity.)
  (.arrow 𐑭 𐑙 𐑗)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent fixation of successful pharmaceutical output.)
  (.arrow 𐑗 𐑭 𐑖)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (F-arm descent into degenerate/heat-extraction path.)
  (.arrow 𐑖 𐑗 𐑳)  -- [11] EVALF | chir := 𐑖 | evaluate-false — chirality check (F-arm fails threshold; contamination or sub-potency detected.)
  (.arrow 𐑳 𐑖 𐑾)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Paradice state held; medicine and toxin coexist in unprocessed seed.)
  (.arrow 𐑾 𐑳 ⊙)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Castor Bean XOR gate forces exclusive disjunctive choice.)
  (.arrow ⊙ 𐑾 𐑖)  -- [14] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Cold-press yields pure castor oil.)
  (.arrow 𐑖 ⊙ 𐑱)  -- [15] EVALF | chir := 𐑖 | evaluate-false — chirality check (Heat-extract yields toxic ricin contamination.)
  (.arrow 𐑱 𐑖 𐑭)  -- [16] CLINK | fid := 𐑱 | composition — regime coherence (Disjunctive composition chains oracle interrogation.)
  (.arrow 𐑭 𐑱 𐑡)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (Irrevocable record of disjunctive outcome.)
  (.arrow 𐑡 𐑭 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (Hermetic seal closes the phytoglyphic recipe loop.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def phytoglyphic_medicine_true_arm : IGProtocol 𐑼 𐑡 :=
  (phytoglyphic_medicine_protocol).restrictToEVALT

-- false arm
noncomputable def phytoglyphic_medicine_false_arm : IGProtocol 𐑼 𐑡 :=
  (phytoglyphic_medicine_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem phytoglyphic_medicine_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
