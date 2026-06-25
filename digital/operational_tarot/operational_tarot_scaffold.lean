-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → AREV → IFIX → CLINK → TANCH
-- Class: operational tarot
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
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [8] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [9] AREV      pol    := 𐑗               𐑳 → 𐑭  | reverse morphism — parity flip
--   [10] IFIX      prot   := 𐑭               𐑗 → 𐑱  | irreversible fixation — winding number
--   [11] CLINK     fid    := 𐑱               𐑭 → 𐑡  | composition — regime coherence
--   [12] TANCH     top    := 𐑡               𐑱 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operational_tarot_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Grounding the space and presenting the unshuffled deck, establishing the void...)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The querent formulates their core question and selects the Significator card,...)
  (.arrow 𐑾 𐑠 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The reader shuffles and deals the cards into the Celtic Cross spread, project...)
  (.arrow 𐑱 𐑾 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The reader synthesizes the positional meanings into a cohesive narrative chain.)
  -- FSPLIT [4] (gran := 𐑚) (The reader initiates the Interpretive Dialectic, splitting the core card's meaning into Light and Shadow aspects.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The reader explores the Light/Constructive aspect, affirming the positive tra...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (The reader explores the Shadow/Destructive aspect, confronting the negative o...))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [7] FFUSE | stoi := 𐑙 (The reader performs Holistic Archetypal Integration, fusing the Light and Shadow aspects back into the complete meaning.)
  (.arrow 𐑳 𐑙 𐑗)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The reader holds the paradox of the integrated archetype (e.g., The Tower's d...)
  (.arrow 𐑗 𐑳 𐑭)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (The reader translates the abstract archetypal insights back down into practic...)
  (.arrow 𐑭 𐑗 𐑱)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (The reader records the exact spread, card positions, and insights into the pe...)
  (.arrow 𐑱 𐑭 𐑡)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (The querent weaves the reading's conclusion into their ongoing life strategy.)
  (.arrow 𐑡 𐑱 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The reader blows out the candle and closes the sacred space, sealing the sess...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operational_tarot_true_arm : IGProtocol 𐑼 𐑡 :=
  (operational_tarot_protocol).restrictToEVALT

-- false arm
noncomputable def operational_tarot_false_arm : IGProtocol 𐑼 𐑡 :=
  (operational_tarot_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operational_tarot_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
