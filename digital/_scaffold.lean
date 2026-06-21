-- IGProtocol scaffold: VINIT → IMSCRIB → IFIX → CLINK → CLINK → FSPLIT → AFWD → EVALT → IFIX → AREV → EVALF → CLINK → ENGAGR → FFUSE → IMSCRIB → TANCH
-- Class: ob3ect_sequence
-- Fingerprint: sig=(9,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 13)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑭  | identity — self-imscription
--   [2] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [3] CLINK     fid    := 𐑱               𐑭 → 𐑱  | composition — regime coherence
--   [4] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [13] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [14] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ob3ect_sequence_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The uncarved wood of the Mamari tablet is selected.)
  (.arrow 𐑠 𐑼 𐑭)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The scribe identifies the first sacred glyph type.)
  (.arrow 𐑭 𐑠 𐑱)  -- [2] IFIX | prot := 𐑭 | irreversible fixation — winding number (The first glyph is carved with a shark tooth.)
  (.arrow 𐑱 𐑭 𐑱)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (FRGATE is linked to STAFF to establish divine authority.)
  (.arrow 𐑱 𐑱 𐑚)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (STAFF is linked to TWIN to double the sacred power.)
  -- FSPLIT [5] (gran := 𐑚) (The first line reaches the edge, splitting the flow.) / FFUSE [13] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Line 1 proceeds Left-to-Right across the earthly ground.)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (A CYCLE glyph is placed, marking the New Moon (Ohiro).)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (The 4-gram is fixed into the wood grain.)
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (The tablet is rotated 180° for the second line.)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (VSPACE is placed, marking an ordinary night (Oata).)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (The reversed formula [VARIABLE]→TWIN→STAFF→FRGATE is composed.)
        (.arrow 𐑳 𐑚 𐑙)  -- [12] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The 𐑮 threshold is held as the meaning remains sacred/hidden.))
    -- reconnect at FFUSE [13]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [13] FFUSE | stoi := 𐑙 (The forward and reverse lines are joined by the serpentine reading path.)
  (.arrow 𐑠 𐑙 𐑡)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (The scribe recognizes the completion of the first lunar month.)
  (.arrow 𐑡 𐑠 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (The final glyph (END) is carved, sealing the 28-night cycle.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ob3ect_sequence_true_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALT

-- false arm
noncomputable def ob3ect_sequence_false_arm : IGProtocol 𐑼 𐑡 :=
  (ob3ect_sequence_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ob3ect_sequence_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
