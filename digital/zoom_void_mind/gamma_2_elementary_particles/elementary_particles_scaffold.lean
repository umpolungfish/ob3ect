-- IGProtocol scaffold: VINIT → AFWD → IMSCRIB → CLINK → FSPLIT → EVALT → FFUSE → AFWD → AREV → CLINK → FSPLIT → EVALF → FFUSE → ENGAGR → AFWD → IMSCRIB → CLINK → AREV → FSPLIT → EVALT → FFUSE → CLINK → IMSCRIB → IFIX
-- Class: elementary_particles
-- Fingerprint: sig=(13,6,4,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=24
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 6), (10, 12), (18, 20)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑠  | forward morphism — bidirectional arrow
--   [2] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [3] CLINK     fid    := 𐑱               𐑠 → 𐑚  | composition — regime coherence
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [7] AFWD      rel    := 𐑾               𐑙 → 𐑗  | forward morphism — bidirectional arrow
--   [8] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑾  | engage paradox — B-state, both arms
--   [14] AFWD      rel    := 𐑾               𐑳 → 𐑠  | forward morphism — bidirectional arrow
--   [15] IMSCRIB   gram   := 𐑠               𐑾 → 𐑱  | identity — self-imscription
--   [16] CLINK     fid    := 𐑱               𐑠 → 𐑗  | composition — regime coherence
--   [17] AREV      pol    := 𐑗               𐑱 → 𐑚  | reverse morphism — parity flip
--   [18] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [21] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [22] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [23] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def elementary_particles_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (field excitation creates initial vacuum fluctuation)
  (.arrow 𐑾 𐑼 𐑠)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (creation operator generates fundamental fermion excitation)
  (.arrow 𐑠 𐑾 𐑱)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-interaction provides rest mass through higgs mechanism)
  (.arrow 𐑱 𐑠 𐑚)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (electromagnetic coupling connects charged fermions to photon field)
  -- FSPLIT [4] (gran := 𐑚) (field state branches into quark flavor superposition) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (strong interaction locks quark colors into color-singlet hadron)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [6] FFUSE | stoi := 𐑙 (superposition collapses to specific measurable baryon state)
  (.arrow 𐑾 𐑙 𐑗)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (weak boson exchange mediates flavor change in quark decay)
  (.arrow 𐑗 𐑾 𐑱)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (antimatter annihilation process converts matter to radiation)
  (.arrow 𐑱 𐑗 𐑚)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (gluon exchanges maintain color confinement binding)
  -- FSPLIT [10] (gran := 𐑚) (vacuum polarization splits virtual particle pairs) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [11] EVALF | chir := 𐑖 | evaluate-false — chirality check (virtual photon propagator carries force without direct detection))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [12] FFUSE | stoi := 𐑙 (pair production reconstitutes original energy conservation)
  (.arrow 𐑳 𐑙 𐑾)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (higgs field maintains both symmetric and broken phases simultaneously)
  (.arrow 𐑾 𐑳 𐑠)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (lepton generation through electroweak interaction)
  (.arrow 𐑠 𐑾 𐑱)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (neutrino oscillation preserves lepton number identity)
  (.arrow 𐑱 𐑠 𐑗)  -- [16] CLINK | fid := 𐑱 | composition — regime coherence (neutral current interactions couple to z-boson mediator)
  (.arrow 𐑗 𐑱 𐑚)  -- [17] AREV | pol := 𐑗 | reverse morphism — parity flip (beta decay transforms neutron to proton plus electron)
  -- FSPLIT [18] (gran := 𐑚) (lepton sector branches into electron/muon/tau generations) / FFUSE [20] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [19] EVALT | crit := ⊙ | evaluate-true — criticality gate open (magnetic moment measurement confirms spin-1/2 classification)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [20]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [20] FFUSE | stoi := 𐑙 (lepton family mixing reconstitutes universal weak coupling)
  (.arrow 𐑱 𐑙 𐑠)  -- [21] CLINK | fid := 𐑱 | composition — regime coherence (photon exchange provides long-range electromagnetic force)
  (.arrow 𐑠 𐑱 𐑭)  -- [22] IMSCRIB | gram := 𐑠 | identity — self-imscription (gauge invariance protects photon masslessness)
  (.arrow 𐑭 𐑠 𐑼)  -- [23] IFIX | prot := 𐑭 | irreversible fixation — winding number (baryon number conservation embedded as irreversible constraint)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def elementary_particles_true_arm : IGProtocol 𐑼 𐑭 :=
  (elementary_particles_protocol).restrictToEVALT

-- false arm
noncomputable def elementary_particles_false_arm : IGProtocol 𐑼 𐑭 :=
  (elementary_particles_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem elementary_particles_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
