-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → TANCH → AREV → CLINK → IMSCRIB → FSPLIT → FFUSE → EVALT → EVALF → ENGAGR → IFIX → AFWD → CLINK → IMSCRIB → TANCH → AREV → FSPLIT → FFUSE → EVALT → IFIX
-- Class: neuronal_cells
-- Fingerprint: sig=(12,5,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(9, 10), (20, 21)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               ⊙ → 𐑡  | forward morphism — bidirectional arrow
--   [5] TANCH     top    := 𐑡               𐑾 → 𐑗  | terminal object — connectivity boundary
--   [6] AREV      pol    := 𐑗               𐑡 → 𐑱  | reverse morphism — parity flip
--   [7] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [8] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑖  | evaluate-true — criticality gate open
--   [12] EVALF     chir   := 𐑖               ⊙ → 𐑳  | evaluate-false — chirality check
--   [13] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [14] IFIX      prot   := 𐑭               𐑳 → 𐑾  | irreversible fixation — winding number
--   [15] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [16] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [17] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [18] TANCH     top    := 𐑡               𐑠 → 𐑗  | terminal object — connectivity boundary
--   [19] AREV      pol    := 𐑗               𐑡 → 𐑚  | reverse morphism — parity flip
--   [20] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [21] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [22] EVALT     crit   := ⊙               𐑙 → 𐑭  | evaluate-true — criticality gate open
--   [23] IFIX      prot   := 𐑭               ⊙ → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def neuronal_cells_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (resting potential (-70mV) establishes initial polarized state across cell mem...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (sodium channels open increasing influx driving depolarization toward threshold)
  (.arrow 𐑚 𐑾 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (dendritic inputs separate into excitatory and inhibitory graded potentials)
  (.arrow ⊙ 𐑚 𐑾)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (excitatory inputs reach threshold initiating action potential generation)
  (.arrow 𐑾 ⊙ 𐑡)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (depolarization wave propagates down axon as voltage-gated Na+ channels sequen...)
  (.arrow 𐑡 𐑾 𐑗)  -- [5] TANCH | top := 𐑡 | terminal object — connectivity boundary (peak depolarization (+30mV) triggers potassium channel opening)
  (.arrow 𐑗 𐑡 𐑱)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (K+ efflux restores negative internal charge returning to resting potential)
  (.arrow 𐑱 𐑗 𐑠)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (action potential trains connect to next neuron via synaptic terminals)
  (.arrow 𐑠 𐑱 𐑚)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (presynaptic neuron recognizes its own transmitter release pattern for regulation)
  -- FSPLIT [9] (gran := 𐑚) (synaptic vesicles split into different neurotransmitter categories for release) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [10] FFUSE | stoi := 𐑙 (postsynaptic receptors fuse multiple transmitter signals into integrated response)
  (.arrow ⊙ 𐑙 𐑖)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful neurotransmitter binding activates downstream neural pathway)
  (.arrow 𐑖 ⊙ 𐑳)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (insufficient neurotransmitter binding results in signal termination)
  (.arrow 𐑳 𐑖 𐑭)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (simultaneous excitatory and inhibitory synaptic inputs maintain network balance)
  (.arrow 𐑭 𐑳 𐑾)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (Hebbian plasticity creates lasting synaptic strength modification based on ac...)
  (.arrow 𐑾 𐑭 𐑱)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (metabolic energy consumption drives ion pump restoration of electrochemical g...)
  (.arrow 𐑱 𐑾 𐑠)  -- [16] CLINK | fid := 𐑱 | composition — regime coherence (neural network topology adapts through repeated action potential patterns)
  (.arrow 𐑠 𐑱 𐑡)  -- [17] IMSCRIB | gram := 𐑠 | identity — self-imscription (neuron self-models its own response characteristics for adaptive behavior)
  (.arrow 𐑡 𐑠 𐑗)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (cell death threshold represents irreversible commitment to apoptosis)
  (.arrow 𐑗 𐑡 𐑚)  -- [19] AREV | pol := 𐑗 | reverse morphism — parity flip (retrograde signaling propagates information back from synapses to soma)
  -- FSPLIT [20] (gran := 𐑚) (gene expression separates into immediate early and late response genes) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [21] FFUSE | stoi := 𐑙 (transcription factors integrate multiple signaling pathways into gene activation)
  (.arrow ⊙ 𐑙 𐑭)  -- [22] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful neural coding transmits information to higher brain centers)
  (.arrow 𐑭 ⊙ 𐑼)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (memory consolidation creates permanent neural pathway modifications)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def neuronal_cells_true_arm : IGProtocol 𐑼 𐑭 :=
  (neuronal_cells_protocol).restrictToEVALT

-- false arm
noncomputable def neuronal_cells_false_arm : IGProtocol 𐑼 𐑭 :=
  (neuronal_cells_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem neuronal_cells_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
