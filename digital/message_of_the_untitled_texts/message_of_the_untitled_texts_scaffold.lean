-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → AREV → CLINK → FFUSE → IMSCRIB → IFIX → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → AREV → CLINK → IFIX → IMSCRIB → AFWD → TANCH
-- Class: Message of The Untitled Texts
-- Fingerprint: sig=(11,3,6,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=22
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [11] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [12] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [13] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [14] EVALF     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [15] ENGAGR    stoi   := 𐑳               𐑖 → 𐑗  | engage paradox — B-state, both arms
--   [16] AREV      pol    := 𐑗               𐑳 → 𐑱  | reverse morphism — parity flip
--   [17] CLINK     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [18] IFIX      prot   := 𐑭               𐑱 → 𐑠  | irreversible fixation — winding number
--   [19] IMSCRIB   gram   := 𐑠               𐑭 → 𐑾  | identity — self-imscription
--   [20] AFWD      rel    := 𐑾               𐑠 → 𐑡  | forward morphism — bidirectional arrow
--   [21] TANCH     top    := 𐑡               𐑾 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def message_of_the_untitled_texts_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Silence of the Ineffable Father, the first source before the All)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The first sound/Word penetrates everywhere, awakening perception)
  -- FSPLIT [2] (gran := 𐑚) (The Monad divides into the Existent (Pleroma/Light) and Non-Existent (Matter/Deep)) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Pleroma branch established with four gates, monads, parastatai, and overseer ...)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [4] EVALF | chir := 𐑖 | evaluate-false — chirality check (Matter branch established as veiled, formless, and separated by purifying powers)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [5] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Only-Begotten in the Setheus holds the light-darkness paradice)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (The light-spark descends from the indivisible one into the self-begotten places)
        (.arrow 𐑱 𐑚 𐑙)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (Cosmic anatomy composition: belly to pleroma, nerves to powers, digits to dec...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [8] FFUSE | stoi := 𐑙 (Scattered powers and aeons reconstitute into the single Man/City of the Father)
  (.arrow 𐑠 𐑙 𐑭)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (The self-begotten self-father recognizes his own likeness within the Man)
  (.arrow 𐑭 𐑠 𐑾)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (The seal of the Father and the eternal crown are permanently fixed upon the v...)
  (.arrow 𐑾 𐑭 𐑚)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Mother establishes ranks and ordinances for the offspring to ascend throu...)
  (.arrow 𐑚 𐑾 ⊙)  -- [12] FSPLIT | gran := 𐑚 | split δ — range decomposition (The Forefather divides the created aeon into the right land (life/light/rest)...)
  (.arrow ⊙ 𐑚 𐑖)  -- [13] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Those who worshipped receive the right land, eternal life, immortality, and c...)
  (.arrow 𐑖 ⊙ 𐑳)  -- [14] EVALF | chir := 𐑖 | evaluate-false — chirality check (Those who opposed are cast into the left land, separated by veils and watchers)
  (.arrow 𐑳 𐑖 𐑗)  -- [15] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The boundary veils hold both lands simultaneously, maintaining the contest fo...)
  (.arrow 𐑗 𐑳 𐑱)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (The Lord of Glory lowers himself, separates matter into two parts, and concea...)
  (.arrow 𐑱 𐑗 𐑭)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (The ranks of air, true dwelling, repentance, and living water powers chain to...)
  (.arrow 𐑭 𐑱 𐑠)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (The ordinance of the hidden aeons is fixed as eternal law, establishing the b...)
  (.arrow 𐑠 𐑭 𐑾)  -- [19] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Man gazes inward, knowing he is the incomprehensible one who comprehends ...)
  (.arrow 𐑾 𐑠 𐑡)  -- [20] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The blessing of the Man ascends to the infinite Father, completing the cycle ...)
  (.arrow 𐑡 𐑾 𐑼)  -- [21] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Man/City acts as the terminal anchor, enclosing all fatherhoods, deeps, a...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def message_of_the_untitled_texts_true_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_the_untitled_texts_protocol).restrictToEVALT

-- false arm
noncomputable def message_of_the_untitled_texts_false_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_the_untitled_texts_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem message_of_the_untitled_texts_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
