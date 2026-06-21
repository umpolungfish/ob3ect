-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → IFIX → FFUSE → ENGAGR → IMSCRIB → AREV → EVALF → IFIX → TANCH
-- Class: message
-- Fingerprint: sig=(6,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [7] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [8] IMSCRIB   gram   := 𐑠               𐑳 → 𐑗  | identity — self-imscription
--   [9] AREV      pol    := 𐑗               𐑠 → 𐑖  | reverse morphism — parity flip
--   [10] EVALF     chir   := 𐑖               𐑗 → 𐑭  | evaluate-false — chirality check
--   [11] IFIX      prot   := 𐑭               𐑖 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def message_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The All-Source initiates the first Deep.)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The first emanation moves toward the All-Wise chirality.)
  (.arrow 𐑱 𐑾 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (The address is composed through the Twelve Fatherhoods.)
  -- FSPLIT [3] (gran := 𐑚) (The Water Baptism branches the soul into the treasury hierarchy.) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The soul recognizes the name at the innermost rectangle.)
        (.arrow 𐑭 𐑚 𐑙)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number (The seal of Jeu 1 is permanently engraved as a certificate.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [6] FFUSE | stoi := 𐑙 (The Fire Baptism closes the winding initiated by the water.)
  (.arrow 𐑳 𐑙 𐑠)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The soul holds the cross-ennead, balancing the right and left pleroma.)
  (.arrow 𐑠 𐑳 𐑗)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (The soul identifies with the name Jeu, recognizing 'You'.)
  (.arrow 𐑗 𐑠 𐑖)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul begins the ascent, stripping the Z-phonemes of the aeons.)
  (.arrow 𐑖 𐑗 𐑭)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (A structural lacuna is encountered where the medium cannot hold the closure.)
  (.arrow 𐑭 𐑖 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The octagram-in-square is fixed as the final O-infinity record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Universal Wheel Seal completes the traversal of the 60 treasuries.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def message_true_arm : IGProtocol 𐑼 𐑡 :=
  (message_protocol).restrictToEVALT

-- false arm
noncomputable def message_false_arm : IGProtocol 𐑼 𐑡 :=
  (message_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem message_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
