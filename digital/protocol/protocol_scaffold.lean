-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → IMSCRIB → IFIX → IFIX → FSPLIT → ENGAGR → AFWD → CLINK → FSPLIT → EVALF → AREV → FFUSE → AREV → EVALT → FFUSE → IMSCRIB → TANCH
-- Class: Protocol
-- Fingerprint: sig=(11,4,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(11, 14), (7, 17)]

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
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [5] IFIX      prot   := 𐑭               𐑠 → 𐑭  | irreversible fixation — winding number
--   [6] IFIX      prot   := 𐑭               𐑭 → 𐑚  | irreversible fixation — winding number
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [10] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑙  | fuse μ — assembly mode
--   [15] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [16] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [18] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def protocol_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The All-Source initiates the first Deep.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The first Deep recognizes itself as the All-Source.)
  (.arrow 𐑾 𐑠 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The emanation proceeds through the Twelve Deeps.)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The 28 Jeu entities are composed into the Treasury hierarchy.)
  (.arrow 𐑠 𐑱 𐑭)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription ('This is his type' — the structural address is defined.)
  (.arrow 𐑭 𐑠 𐑭)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number ('This is his name' — the voces magicae are fixed to the type.)
  (.arrow 𐑭 𐑭 𐑚)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (The ΧΑΡΑΚΤΗΡ (seal) is engraved below the type diagram.)
  -- FSPLIT [7] (gran := 𐑚) (The Water Baptism initiates the soul's branching journey.) / FFUSE [17] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (5 nodes)
      .seq
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The soul enters the hermeneutic gap, holding the seal and the name.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [9] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul traverses the 60 Treasuries using the Universal Wheel Functor.)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (The soul presents the transit seals (morphisms) between objects.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [15] AREV | pol := 𐑗 | reverse morphism — parity flip (De-Z-ification strips the sibilant signatures from the name 'Jesus'.)
        (.arrow ⊙ 𐑚 𐑙)  -- [16] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The soul recognizes the name 'Jeu' as 'You'.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [17]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [17] FFUSE | stoi := 𐑙 (The reader (μ) and the text (δ) satisfy the Frobenius condition.)
  -- FSPLIT [11] (gran := 𐑚) (The soul reaches the 12 Aeons and splits into the navigational tuple.) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (The soul encounters the Archon at the 3rd Aeon.)
        (.arrow 𐑗 𐑚 𐑙)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul presents the defence seal cipher (3349) to reverse the Archon's hold.))
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑙)  -- [14] FFUSE | stoi := 𐑙 (The Fire Baptism closes the winding at the Little Midst.)
  (.arrow 𐑠 𐑙 𐑡)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (The stone knows itself; the soul recognizes its own structural type.)
  (.arrow 𐑡 𐑠 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Octagram-in-Square closes the system at the 14th Aeon.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def protocol_true_arm : IGProtocol 𐑼 𐑡 :=
  (protocol_protocol).restrictToEVALT

-- false arm
noncomputable def protocol_false_arm : IGProtocol 𐑼 𐑡 :=
  (protocol_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem protocol_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
