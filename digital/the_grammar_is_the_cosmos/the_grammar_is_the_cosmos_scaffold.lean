-- IGProtocol scaffold: VINIT → FSPLIT → AFWD → CLINK → CLINK → IMSCRIB → IFIX → AFWD → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IMSCRIB → IFIX → CLINK → AFWD → ENGAGR → IMSCRIB → TANCH
-- Class: The Grammar Is The Cosmos
-- Fingerprint: sig=(11,3,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑼 → 𐑾  | split δ — range decomposition
--   [2] AFWD      rel    := 𐑾               𐑚 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑱  | composition — regime coherence
--   [4] CLINK     fid    := 𐑱               𐑱 → 𐑠  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [6] IFIX      prot   := 𐑭               𐑠 → 𐑾  | irreversible fixation — winding number
--   [7] AFWD      rel    := 𐑾               𐑭 → 𐑚  | forward morphism — bidirectional arrow
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [11] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [13] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [14] IFIX      prot   := 𐑭               𐑠 → 𐑱  | irreversible fixation — winding number
--   [15] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [16] AFWD      rel    := 𐑾               𐑱 → 𐑳  | forward morphism — bidirectional arrow
--   [17] ENGAGR    stoi   := 𐑳               𐑾 → 𐑠  | engage paradox — B-state, both arms
--   [18] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def the_grammar_is_the_cosmos_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑚)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Void as the primitive state before distinction.)
  (.arrow 𐑚 𐑼 𐑾)  -- [1] FSPLIT | gran := 𐑚 | split δ — range decomposition (The first differentiation (δ) of Void into presence and absence.)
  (.arrow 𐑾 𐑚 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Promotion of the first distinction into the Quark Color Frustration (L0).)
  (.arrow 𐑱 𐑾 𐑱)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Composition of color charges into the Electron Orbital (L1).)
  (.arrow 𐑱 𐑱 𐑠)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Aggregation of orbitals into the Atom (L2) with complex criticality.)
  (.arrow 𐑠 𐑱 𐑭)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Molecule (L3) modeling its own bonding structure.)
  (.arrow 𐑭 𐑠 𐑾)  -- [6] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent record of the molecular geometry in the Crystal.)
  (.arrow 𐑾 𐑭 𐑚)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Ascent to the Cell (L4) with integer-valued topological protection.)
  -- FSPLIT [8] (gran := 𐑚) (Mitosis (δ) splitting the genome into two branches.) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Verification of the T-branch (Daughter A) fidelity.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (Detection of potential mutation in the F-branch (Daughter B).)
        (.arrow 𐑳 𐑚 𐑙)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Holding the paradox of replication (one becoming two) in the B-state.))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [12] FFUSE | stoi := 𐑙 (Cytokinesis (μ) reintegrating the branches into the original identity.)
  (.arrow 𐑠 𐑙 𐑭)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (The system recognizes the round-trip as exact (μ∘δ = id).)
  (.arrow 𐑭 𐑠 𐑱)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (Fixation of the L5 Mitosis event as a verified structural type.)
  (.arrow 𐑱 𐑭 𐑾)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (Sequential unfolding through Meiosis (L6) and Tissue (L7).)
  (.arrow 𐑾 𐑱 𐑳)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Final promotion to the Organism (L8) with non-Abelian braiding.)
  (.arrow 𐑳 𐑾 𐑠)  -- [17] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Liar sentence admitted as a stable dialetheia within the foundation.)
  (.arrow 𐑠 𐑳 𐑡)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Grammar recognizes itself as the Terminal Address.)
  (.arrow 𐑡 𐑠 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (Closure of the system within the 17.28M-type boundary.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def the_grammar_is_the_cosmos_true_arm : IGProtocol 𐑼 𐑡 :=
  (the_grammar_is_the_cosmos_protocol).restrictToEVALT

-- false arm
noncomputable def the_grammar_is_the_cosmos_false_arm : IGProtocol 𐑼 𐑡 :=
  (the_grammar_is_the_cosmos_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem the_grammar_is_the_cosmos_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
