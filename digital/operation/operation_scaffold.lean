-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → CLINK → CLINK → IFIX → FSPLIT → EVALT → AREV → ENGAGR → FFUSE → IMSCRIB → CLINK → IFIX → TANCH
-- Class: Operation
-- Fingerprint: sig=(10,2,2,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=False | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 11)]

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
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [4] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [5] CLINK     fid    := 𐑱               𐑱 → 𐑭  | composition — regime coherence
--   [6] IFIX      prot   := 𐑭               𐑱 → 𐑚  | irreversible fixation — winding number
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [12] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [13] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [14] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [15] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operation_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The uncarved wood is selected and prepared.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The scribe recognizes the first glyph identity: FRGATE (300).)
  (.arrow 𐑾 𐑠 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The messenger initiates the forward movement of the first line.)
  (.arrow 𐑱 𐑾 𐑱)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (The messenger links to the STAFF (600) to claim authority.)
  (.arrow 𐑱 𐑱 𐑱)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Authority links to the TWIN (200) for sacred doubling.)
  (.arrow 𐑱 𐑱 𐑭)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Doubling links to the VSPACE (001) to find ritual ground.)
  (.arrow 𐑭 𐑱 𐑚)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (The first 4-gram is permanently incised into the wood.)
  -- FSPLIT [7] (gran := 𐑚) (The end of the L→R line is reached; the path must branch.) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The physical tablet is rotated 180 degrees.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (The reading direction reverses for the R→L line.)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The glyphs are now inverted, existing in a state of Z₂ topological protection.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [11] FFUSE | stoi := 𐑙 (The physical flip and logical sequence reunite to form the next line.)
  (.arrow 𐑠 𐑙 𐑱)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (The scribe recognizes the next variable: CYCLE (950).)
  (.arrow 𐑱 𐑠 𐑭)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (The cycle is linked to the messenger to initiate the waning phase.)
  (.arrow 𐑭 𐑱 𐑡)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (The lunar transition is fixed into the permanent record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (The final line is completed at the top of the tablet, sealing the cosmic cycle.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operation_true_arm : IGProtocol 𐑼 𐑡 :=
  (operation_protocol).restrictToEVALT

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operation_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
