-- IGProtocol scaffold: VINIT → TANCH → AFWD → AREV → CLINK → IMSCRIB → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IFIX
-- Class: Psychic Boundary Puncture
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(6, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑗  | forward morphism — bidirectional arrow
--   [3] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [4] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] IFIX      prot   := 𐑭               𐑙 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def psychic_boundary_puncture_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (unformed-psychic-field — establishes the void state before any self/other dis...)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (ego-boundary — closes the system by defining the perceptual limit of the subj...)
  (.arrow 𐑾 𐑡 𐑗)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (puncture-event — directs external stimulus toward the boundary as a forward m...)
  (.arrow 𐑗 𐑾 𐑱)  -- [3] AREV | pol := 𐑗 | reverse morphism — parity flip (recoil — initiates the reverse defensive contraction against the intrusion.)
  (.arrow 𐑱 𐑗 𐑠)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (interaction-zone — chains the puncture and recoil into a single localized event.)
  (.arrow 𐑠 𐑱 𐑚)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-recognition — the boundary reflects on the interaction, recognizing it a...)
  -- FSPLIT [6] (gran := 𐑚) (dual-stream-bifurcation — branches the punctured boundary into conscious and unconscious processing streams.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (conscious-affirmation — anchors the T-arm by validating the experience as rea...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (unconscious-rejection — anchors the F-arm by flagging the experience as threa...)
        (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradox-holding — holds the simultaneous truth and falsity of the breach with...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [10] FFUSE | stoi := 𐑙 (structural-integration — fuses the conscious and unconscious streams back into a single coherent boundary.)
  (.arrow 𐑭 𐑙 𐑼)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (memory-trace — permanently records the reconstituted boundary state as an irr...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def psychic_boundary_puncture_true_arm : IGProtocol 𐑼 𐑭 :=
  (psychic_boundary_puncture_protocol).restrictToEVALT

-- false arm
noncomputable def psychic_boundary_puncture_false_arm : IGProtocol 𐑼 𐑭 :=
  (psychic_boundary_puncture_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem psychic_boundary_puncture_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
