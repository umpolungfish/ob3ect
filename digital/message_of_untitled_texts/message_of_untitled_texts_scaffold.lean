-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → FSPLIT → CLINK → FFUSE → IFIX → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → AREV → IMSCRIB → CLINK → FFUSE → IFIX → TANCH
-- Class: Message of Untitled Texts
-- Fingerprint: sig=(9,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5), (8, 15)]

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
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [6] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [7] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [13] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [14] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [17] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def message_of_untitled_texts_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Silence before the first sound or perception of the All.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The First Father gives form to the All within himself, self-originating.)
  (.arrow 𐑾 𐑠 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The voice penetrates everywhere, the first sound perceived by the All.)
  -- FSPLIT [3] (gran := 𐑚) (The Monad comes forth, branching into the twelve deeps of wisdom and gnosis.) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑱 𐑚 𐑙)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (The twelve deeps compose the image of the Father and the mirror of the All.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [5] FFUSE | stoi := 𐑙 (The truth covers them all, reconstituting the Monad as the unknowable one.)
  (.arrow 𐑭 𐑙 𐑾)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (The names are fixed in the silence, unutterable and imperishable.)
  (.arrow 𐑾 𐑭 𐑚)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Setheus sends the light-spark to the indivisible one to illuminate the Pleroma.)
  -- FSPLIT [8] (gran := 𐑚) (The Lord of Glory lowers himself and separates matter into two parts.) / FFUSE [15] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Right Side is established as the Land of Life and Light.)
      -- F-branch (5 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (The Left Side is established as the Land of Death and Darkness.)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The veil is placed between them, holding both realms in a balanced tension.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (The powers of the mother pray to the infinite one for the return of the offsp...)
      .seq
        (.arrow 𐑠 𐑚 𐑙)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Man is begotten in the self-originate mind, wearing creation as a garment.)
        (.arrow 𐑱 𐑚 𐑙)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (The creative word unites the members, gathering the dispersed of Israel.))
    -- reconnect at FFUSE [15]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [15] FFUSE | stoi := 𐑙 (They all become one in the one and only One, restoring the original unity.)
  (.arrow 𐑭 𐑙 𐑡)  -- [16] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Christ seals the believers with the seal of the Father, a permanent record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [17] TANCH | top := 𐑡 | terminal object — connectivity boundary (The All rests in the ineffable, unutterable, and untroubled Setheus.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def message_of_untitled_texts_true_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_untitled_texts_protocol).restrictToEVALT

-- false arm
noncomputable def message_of_untitled_texts_false_arm : IGProtocol 𐑼 𐑡 :=
  (message_of_untitled_texts_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem message_of_untitled_texts_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
