-- IGProtocol scaffold: VINIT → IMSCRIB → TANCH → AFWD → FSPLIT → CLINK → ENGAGR → FFUSE → IFIX → EVALT → AREV → CLINK → IFIX
-- Class: Operational Magic
-- Fingerprint: sig=(7,2,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=13
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
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑡  | identity — self-imscription
--   [2] TANCH     top    := 𐑡               𐑠 → 𐑾  | terminal object — connectivity boundary
--   [3] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [8] IFIX      prot   := 𐑭               𐑙 → ⊙  | irreversible fixation — winding number
--   [9] EVALT     crit   := ⊙               𐑭 → 𐑗  | evaluate-true — criticality gate open
--   [10] AREV      pol    := 𐑗               ⊙ → 𐑱  | reverse morphism — parity flip
--   [11] CLINK     fid    := 𐑱               𐑗 → 𐑭  | composition — regime coherence
--   [12] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operational_magic_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The magician stands in the center of the uninitialized room.)
  (.arrow 𐑠 𐑼 𐑡)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The magician recognizes their own authority (I AM).)
  (.arrow 𐑡 𐑠 𐑾)  -- [2] TANCH | top := 𐑡 | terminal object — connectivity boundary (The magician traces the Magic Circle, establishing the system boundary.)
  (.arrow 𐑾 𐑡 𐑚)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The magician invokes the four elemental watchtowers to orient the space.)
  -- FSPLIT [4] (gran := 𐑚) (The magician takes the abstract intent and splits it into a drawn sigil and a secret name.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (The magician chains the lighting of incense to the vibration of the name.)
        (.arrow 𐑳 𐑚 𐑙)  -- [6] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The magician enters a trance, existing in both the physical and astral planes...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [7] FFUSE | stoi := 𐑙 (The magician focuses the trance energy onto the sigil while speaking the name, fusing intent into form.)
  (.arrow 𐑭 𐑙 ⊙)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (The sigil is anointed with oil, permanently fixing the charge into the physic...)
  (.arrow ⊙ 𐑭 𐑗)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The magician perceives the manifestation of the desired change in the environ...)
  (.arrow 𐑗 ⊙ 𐑱)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (The magician performs the Lesser Banishing Ritual to release the forces.)
  (.arrow 𐑱 𐑗 𐑭)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (The magician closes the circle and extinguishes the candles.)
  (.arrow 𐑭 𐑱 𐑼)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (The magician records the entire operation in their Book of Shadows.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operational_magic_true_arm : IGProtocol 𐑼 𐑭 :=
  (operational_magic_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operational_magic_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
