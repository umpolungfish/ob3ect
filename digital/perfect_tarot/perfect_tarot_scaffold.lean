-- IGProtocol scaffold: VINIT → IMSCRIB → CLINK → AFWD → FSPLIT → EVALT → EVALF → FFUSE → AREV → CLINK → ENGAGR → IFIX → TANCH
-- Class: perfect tarot
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑱  | identity — self-imscription
--   [2] CLINK     fid    := 𐑱               𐑠 → 𐑾  | composition — regime coherence
--   [3] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑗 → 𐑳  | composition — regime coherence
--   [10] ENGAGR    stoi   := 𐑳               𐑱 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def perfect_tarot_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The silent room and the face-down deck establish the void of pure potential b...)
  (.arrow 𐑠 𐑼 𐑱)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The querent selects the Significator card, anchoring their identity and self-...)
  (.arrow 𐑱 𐑠 𐑾)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (The querent shuffles the deck, physically linking their kinetic energy to the...)
  (.arrow 𐑾 𐑱 𐑚)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The reader deals the cards, projecting the manifest question forward into tim...)
  -- FSPLIT [4] (gran := 𐑚) (The Cut divides the deck and the Querent's Query into the Conscious Intent (T-arm) and Unconscious Shadow (F-arm).) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Upright cards are revealed in the conscious positions, affirming clear intent...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (Reversed or challenging cards appear in the shadow positions, exposing blocks...))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [7] FFUSE | stoi := 𐑙 (The Synthesis weaves the Conscious and Unconscious spreads back together, reconstituting the fully realized Querent's Query.)
  (.arrow 𐑗 𐑙 𐑱)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (The reader interprets the spread, descending the abstract archetypes back int...)
  (.arrow 𐑱 𐑗 𐑳)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (The Narrative Weave links the unified cards into a coherent chronological and...)
  (.arrow 𐑳 𐑱 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The reader encounters the Aporia, holding a paradoxical truth where opposing ...)
  (.arrow 𐑭 𐑳 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The reader speaks the final interpretation aloud, fixing the ephemeral divina...)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The cards are gathered and the reading is closed, sealing the hermeneutic cir...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def perfect_tarot_true_arm : IGProtocol 𐑼 𐑡 :=
  (perfect_tarot_protocol).restrictToEVALT

-- false arm
noncomputable def perfect_tarot_false_arm : IGProtocol 𐑼 𐑡 :=
  (perfect_tarot_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem perfect_tarot_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
