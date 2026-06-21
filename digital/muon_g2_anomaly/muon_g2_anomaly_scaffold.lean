-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → CLINK → CLINK → CLINK → CLINK → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IFIX → AREV → TANCH
-- Class: muon g2 anomaly
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
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
--   [5] CLINK     fid    := 𐑱               𐑱 → 𐑱  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑱 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [13] AREV      pol    := 𐑗               𐑭 → 𐑡  | reverse morphism — parity flip
--   [14] TANCH     top    := 𐑡               𐑗 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def muon_g2_anomaly_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Bare muon state initialized in the magnetic field)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Muon mass and charge defined as self-referential constants)
  (.arrow 𐑾 𐑠 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Propagation through the magnetic storage ring)
  (.arrow 𐑱 𐑾 𐑱)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (Interaction with QED vacuum fluctuations (Schwinger term))
  (.arrow 𐑱 𐑱 𐑱)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Interaction with electroweak loop corrections)
  (.arrow 𐑱 𐑱 𐑱)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Interaction with hadronic vacuum polarization (HVP))
  (.arrow 𐑱 𐑱 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Interaction with hadronic light-by-light (HLbL) scattering)
  -- FSPLIT [7] (gran := 𐑚) (Branching into Theory (Lattice QCD/R-ratio) and Experiment (Precession frequency)) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Experimental branch captures cyclotron and precession frequencies)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (Theoretical branch calculates the alpha-dependent sum)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The 4.2-sigma discrepancy is held as a persistent paradox))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [11] FFUSE | stoi := 𐑙 (Reconstituting the branches into the Δa_μ anomaly value)
  (.arrow 𐑭 𐑙 𐑗)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent record of the Fermilab Run-1/2/3 results)
  (.arrow 𐑗 𐑭 𐑡)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (Back-propagation of the anomaly to constrain New Physics models)
  (.arrow 𐑡 𐑗 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (Final anchor in the g-2 value as a fundamental constant)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def muon_g2_anomaly_true_arm : IGProtocol 𐑼 𐑡 :=
  (muon_g2_anomaly_protocol).restrictToEVALT

-- false arm
noncomputable def muon_g2_anomaly_false_arm : IGProtocol 𐑼 𐑡 :=
  (muon_g2_anomaly_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem muon_g2_anomaly_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
