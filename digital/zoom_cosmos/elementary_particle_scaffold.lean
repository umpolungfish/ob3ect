-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → CLINK → IMSCRIB → ENGAGR → IFIX → TANCH
-- Class: Elementary Particle
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [9] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [10] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def elementary_particle_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the quantum vacuum state as the source of the system.)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Evolve the vacuum state forward in time to the interaction point.)
  -- FSPLIT [2] (gran := 𐑚) (Branch the initial high-energy photon into an electron on the T-arm and a positron on the F-arm.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Anchor the T-arm as the on-shell physical electron state.)
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Propagate the electron forward through spacetime.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Anchor the F-arm as the off-shell virtual positron state.)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Propagate the positron backward in time as the CPT conjugate.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Recombine the electron and positron to recover the original high-energy photon.)
  (.arrow 𐑱 𐑙 𐑠)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Compose the sequential scattering amplitude from the vertices and propagators.)
  (.arrow 𐑠 𐑱 𐑳)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (Apply the self-energy loop correction where the particle interacts with its o...)
  (.arrow 𐑳 𐑠 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter the quantum superposition of all possible Feynman diagram paths.)
  (.arrow 𐑭 𐑳 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the final macroscopic detection event, collapsing the wavefunction.)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Terminate the system at the asymptotic detector boundary.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def elementary_particle_true_arm : IGProtocol 𐑼 𐑡 :=
  (elementary_particle_protocol).restrictToEVALT

-- false arm
noncomputable def elementary_particle_false_arm : IGProtocol 𐑼 𐑡 :=
  (elementary_particle_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem elementary_particle_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
