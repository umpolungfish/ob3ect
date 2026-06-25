-- IGProtocol scaffold: VINIT → AFWD → AFWD → ENGAGR → AFWD → IMSCRIB → CLINK → FSPLIT → EVALT → EVALF → FFUSE → AFWD → AFWD → TANCH → AREV → CLINK → EVALT → EVALF → IFIX
-- Class: Oh My God particle
-- Fingerprint: sig=(11,2,5,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑳  | forward morphism — bidirectional arrow
--   [3] ENGAGR    stoi   := 𐑳               𐑾 → 𐑾  | engage paradox — B-state, both arms
--   [4] AFWD      rel    := 𐑾               𐑳 → 𐑠  | forward morphism — bidirectional arrow
--   [5] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [6] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [11] AFWD      rel    := 𐑾               𐑙 → 𐑾  | forward morphism — bidirectional arrow
--   [12] AFWD      rel    := 𐑾               𐑾 → 𐑡  | forward morphism — bidirectional arrow
--   [13] TANCH     top    := 𐑡               𐑾 → 𐑗  | terminal object — connectivity boundary
--   [14] AREV      pol    := 𐑗               𐑡 → 𐑱  | reverse morphism — parity flip
--   [15] CLINK     fid    := 𐑱               𐑗 → ⊙  | composition — regime coherence
--   [16] EVALT     crit   := ⊙               𐑱 → 𐑖  | evaluate-true — criticality gate open
--   [17] EVALF     chir   := 𐑖               ⊙ → 𐑭  | evaluate-false — chirality check
--   [18] IFIX      prot   := 𐑭               𐑖 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def oh_my_god_particle_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The distant astrophysical source and intergalactic vacuum before acceleration.)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The primary nucleon is accelerated to ultra-high energies via Fermi mechanisms.)
  (.arrow 𐑾 𐑾 𐑳)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The particle traverses the intergalactic medium, approaching the GZK horizon.)
  (.arrow 𐑳 𐑾 𐑾)  -- [3] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The GZK paradox: the particle's energy exceeds the theoretical cutoff, holdin...)
  (.arrow 𐑾 𐑳 𐑠)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The particle enters the Earth's upper atmosphere at a relativistic velocity.)
  (.arrow 𐑠 𐑾 𐑱)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (The primary cosmic ray particle asserts its identity, interacting with the fi...)
  (.arrow 𐑱 𐑠 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The initial hadronic interaction produces a cascade of pions and kaons, chain...)
  -- FSPLIT [7] (gran := 𐑚) (The Extensive Air Shower fully develops; the primary energy branches into the hadronic/electromagnetic cascade and the fluorescence/Cherenkov light emission.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The electromagnetic sub-shower excites nitrogen molecules, producing the true...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (Energy is carried away by high-energy muons and neutrinos that penetrate the ...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [10] FFUSE | stoi := 𐑙 (The total fluorescence light profile is integrated over the shower track, reconstituting the primary particle's total initial energy.)
  (.arrow 𐑾 𐑙 𐑾)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The emitted fluorescence photons propagate through the lower atmosphere towar...)
  (.arrow 𐑾 𐑾 𐑡)  -- [12] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Cherenkov light pulse propagates directly downward, arriving as a sharp, ...)
  (.arrow 𐑡 𐑾 𐑗)  -- [13] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Fly's Eye detector array captures the photons, forming the closed observa...)
  (.arrow 𐑗 𐑡 𐑱)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (The reconstruction algorithm reverses the shower geometry to trace the partic...)
  (.arrow 𐑱 𐑗 ⊙)  -- [15] CLINK | fid := 𐑱 | composition — regime coherence (The energy calibration chain links the raw photomultiplier tube signals to th...)
  (.arrow ⊙ 𐑱 𐑖)  -- [16] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The reconstructed energy is confirmed at 3.2 x 10^20 eV, validating the 'Oh M...)
  (.arrow 𐑖 ⊙ 𐑭)  -- [17] EVALF | chir := 𐑖 | evaluate-false — chirality check (Sub-threshold events or background noise are rejected by the trigger logic.)
  (.arrow 𐑭 𐑖 𐑼)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (The event is permanently recorded in the 1991 Fly's Eye data log and publishe...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def oh_my_god_particle_true_arm : IGProtocol 𐑼 𐑭 :=
  (oh_my_god_particle_protocol).restrictToEVALT

-- false arm
noncomputable def oh_my_god_particle_false_arm : IGProtocol 𐑼 𐑭 :=
  (oh_my_god_particle_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem oh_my_god_particle_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
