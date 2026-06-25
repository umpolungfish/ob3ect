-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → AFWD → AFWD → CLINK → AFWD → CLINK → AFWD → AREV → AFWD → AFWD → CLINK → AFWD → AFWD → AFWD → AFWD → CLINK → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → AREV → CLINK → IMSCRIB → IFIX → TANCH
-- Class: perfect tarot
-- Fingerprint: sig=(22,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=28
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(18, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [4] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [6] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [8] AFWD      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [9] AREV      pol    := 𐑗               𐑾 → 𐑾  | reverse morphism — parity flip
--   [10] AFWD      rel    := 𐑾               𐑗 → 𐑾  | forward morphism — bidirectional arrow
--   [11] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [12] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [13] AFWD      rel    := 𐑾               𐑱 → 𐑾  | forward morphism — bidirectional arrow
--   [14] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [15] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [16] AFWD      rel    := 𐑾               𐑾 → 𐑱  | forward morphism — bidirectional arrow
--   [17] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [18] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [21] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [22] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [23] AREV      pol    := 𐑗               𐑳 → 𐑱  | reverse morphism — parity flip
--   [24] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [25] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [26] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [27] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def perfect_tarot_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The unshuffled deck rests on the table, the void of uncollapsed archetypal po...)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Querent formulates the question, establishing the self-referential center...)
  (.arrow 𐑾 𐑠 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Shuffle, kinetic randomization introducing entropy and forward motion int...)
  (.arrow 𐑾 𐑾 𐑾)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Cut, shifting the deck's state to a new starting point and breaking the p...)
  (.arrow 𐑾 𐑾 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 1 (The Present / Significator), the core of the matter and the p...)
  (.arrow 𐑱 𐑾 𐑾)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Placing Card 1 at the center of the Celtic Cross, anchoring the spatial geome...)
  (.arrow 𐑾 𐑱 𐑱)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 2 (The Crossing), the immediate challenge or obstacle intersecti...)
  (.arrow 𐑱 𐑾 𐑾)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (Composing Card 2 over Card 1 to form the central cross, establishing the prim...)
  (.arrow 𐑾 𐑱 𐑗)  -- [8] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 3 (The Foundation), revealing the subconscious roots and hidden ...)
  (.arrow 𐑗 𐑾 𐑾)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Drawing Card 4 (The Past), looking backward in time to recent influences and ...)
  (.arrow 𐑾 𐑗 𐑾)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 5 (The Crown), the conscious goals, aspirations, and best possib...)
  (.arrow 𐑾 𐑾 𐑱)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 6 (The Future), the forward trajectory and near-term events appr...)
  (.arrow 𐑱 𐑾 𐑾)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (Composing Cards 3, 4, 5, and 6 into the staff of the cross, mapping the tempo...)
  (.arrow 𐑾 𐑱 𐑾)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 7 (The Self), the Querent's internal attitude, self-perception, ...)
  (.arrow 𐑾 𐑾 𐑾)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 8 (The Environment), external influences, other people, and the ...)
  (.arrow 𐑾 𐑾 𐑾)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 9 (Hopes and Fears), the psychological projections, emotional st...)
  (.arrow 𐑾 𐑾 𐑱)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Drawing Card 10 (The Outcome), the final resolution and ultimate destination ...)
  (.arrow 𐑱 𐑾 𐑚)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (Composing the final four cards into the right-hand staff of the spread, compl...)
  -- FSPLIT [18] (gran := 𐑚) (The Bifurcation of Meaning, splitting the central archetype into its Upright (manifest) and Reversed (shadow) potentials for deep analysis.) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [19] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Upright potential is evaluated, exploring the active, manifest expression...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [20] EVALF | chir := 𐑖 | evaluate-false — chirality check (The Reversed potential is evaluated, exploring the passive, hidden, or shadow...))
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [21] FFUSE | stoi := 𐑙 (The Archetypal Integration, synthesizing the manifest and shadow expressions back into the whole, undivided Archetype.)
  (.arrow 𐑳 𐑙 𐑗)  -- [22] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Liminal Paradox, holding the tension of a paradoxical card where opposite...)
  (.arrow 𐑗 𐑳 𐑱)  -- [23] AREV | pol := 𐑗 | reverse morphism — parity flip (Encountering a physically reversed card in the spread, descending into its bl...)
  (.arrow 𐑱 𐑗 𐑠)  -- [24] CLINK | fid := 𐑱 | composition — regime coherence (Weaving the reversed card's shadow meaning into the overall narrative of the ...)
  (.arrow 𐑠 𐑱 𐑭)  -- [25] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Querent's Resonance, the 'Aha!' moment of self-recognition where the arch...)
  (.arrow 𐑭 𐑠 𐑡)  -- [26] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Journal Entry, permanently recording the cards, positions, and interpreta...)
  (.arrow 𐑡 𐑭 𐑼)  -- [27] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Closing of the Reading, clearing the deck's energy, thanking the archetyp...)

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
