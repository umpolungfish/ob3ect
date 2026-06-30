-- IGProtocol scaffold: VINIT → CLINK → IMSCRIB → AFWD → TANCH → FSPLIT → EVALT → EVALF → FFUSE → AREV → ENGAGR → IFIX → CLINK → IMSCRIB → TANCH
-- Class: Atomic Nucleus
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑠  | composition — regime coherence
--   [2] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [3] AFWD      rel    := 𐑾               𐑠 → 𐑡  | forward morphism — bidirectional arrow
--   [4] TANCH     top    := 𐑡               𐑾 → 𐑚  | terminal object — connectivity boundary
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [9] AREV      pol    := 𐑗               𐑙 → 𐑳  | reverse morphism — parity flip
--   [10] ENGAGR    stoi   := 𐑳               𐑗 → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑱  | irreversible fixation — winding number
--   [12] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [13] IMSCRIB   gram   := 𐑠               𐑱 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def atomic_nucleus_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑱)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the unconfined vacuum state of free quarks and gluons prior to had...)
  (.arrow 𐑱 𐑼 𐑠)  -- [1] CLINK | fid := 𐑱 | composition — regime coherence (Bind quarks via gluon exchange to form discrete protons and neutrons.)
  (.arrow 𐑠 𐑱 𐑾)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (Establish the self-identity of the nucleon, conserving baryon number through ...)
  (.arrow 𐑾 𐑠 𐑡)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Assemble nucleons into a heavier compound nucleus via the attractive strong n...)
  (.arrow 𐑡 𐑾 𐑚)  -- [4] TANCH | top := 𐑡 | terminal object — connectivity boundary (Confine the assembled nucleons within the finite boundary of the nuclear pote...)
  -- FSPLIT [5] (gran := 𐑚) (Branch the unstable parent nucleus into a daughter nucleus and an emitted alpha particle.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Anchor the T-arm as the daughter nucleus remains in a bound lower-energy state.)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (Anchor the F-arm as the alpha particle tunnels through the Coulomb barrier to...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [8] FFUSE | stoi := 𐑙 (Recombine the daughter nucleus and alpha particle to recover the original parent nucleus.)
  (.arrow 𐑗 𐑙 𐑳)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Execute beta decay, transforming a neutron into a proton via the weak force d...)
  (.arrow 𐑳 𐑗 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter a metastable nuclear isomer state, holding excited and ground spin conf...)
  (.arrow 𐑭 𐑳 𐑱)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanently record the atomic number and mass number to fix the final isotope...)
  (.arrow 𐑱 𐑭 𐑠)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (Chain residual strong force interactions to maintain the cohesion of the fina...)
  (.arrow 𐑠 𐑱 𐑡)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (Re-verify the conserved quantum numbers of the final nuclear state.)
  (.arrow 𐑡 𐑠 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the system at the absolute boundary of the strong force interaction range.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def atomic_nucleus_true_arm : IGProtocol 𐑼 𐑡 :=
  (atomic_nucleus_protocol).restrictToEVALT

-- false arm
noncomputable def atomic_nucleus_false_arm : IGProtocol 𐑼 𐑡 :=
  (atomic_nucleus_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem atomic_nucleus_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
