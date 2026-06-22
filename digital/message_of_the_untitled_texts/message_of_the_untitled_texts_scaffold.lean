-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → ENGAGR → IFIX → TANCH
-- Class: Message of The Untitled Texts
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def message_of_the_untitled_texts_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Ineffable Father rests in the Silence, the unoriginated void before any f...)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Self-Begotten Place forms the All within himself, recognizing his own ima...)
  (.arrow 𐑾 𐑠 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Monad and Light-Spark emanate forward, penetrating the outer worlds with ...)
  (.arrow 𐑱 𐑾 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The aeonic chains are generated, linking the Enneads, Dodecads, and the twelv...)
  -- FSPLIT [4] (gran := 𐑚) (The Lord of Glory divides the All, separating the Existent (Light) from the Non-Existent (Matter).) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The right side is established as the Land of Life, receiving eternal life and...)
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The light-spark penetrates the Land of Life, bringing form and likeness to th...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (The left side is established as the Land of Death, condemned to the narrow, p...)
        (.arrow 𐑗 𐑚 𐑙)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (The souls repent and ascend, fleeing the matter of the Land of Death to retur...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [9] FFUSE | stoi := 𐑙 (The All is gathered into the One, the dispersed are united, reconstituting the unified Pleroma.)
  (.arrow 𐑳 𐑙 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Light-Darkness is held in the Only-Begotten, where the excess of light be...)
  (.arrow 𐑭 𐑳 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Five Seals are applied, permanently fixing the crowns, names, and the ine...)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Immeasurable Deep closes the system, the final boundary containing the fu...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def message_of_the_untitled_texts_true_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_the_untitled_texts_protocol).restrictToEVALT

-- false arm
noncomputable def message_of_the_untitled_texts_false_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_the_untitled_texts_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem message_of_the_untitled_texts_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
