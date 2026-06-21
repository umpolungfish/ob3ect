-- IGProtocol scaffold: VINIT → AFWD → CLINK → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IMSCRIB → IFIX → TANCH
-- Class: origin of photon
-- Fingerprint: sig=(5,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [8] IMSCRIB   gram   := 𐑠               𐑙 → 𐑭  | identity — self-imscription
--   [9] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [10] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def origin_of_photon_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The zero-point field exists in a state of uninitialized potential.)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (An electron in an excited state begins its transition toward the ground state.)
  (.arrow 𐑱 𐑾 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (The electron's motion couples to the surrounding electromagnetic field modes.)
  -- FSPLIT [3] (gran := 𐑚) (The transition branches into a superposition of all possible emission directions and polarizations.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Constructive interference selects the resonant modes of the cavity or free sp...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Destructive interference suppresses paths that violate conservation laws.)
        (.arrow 𐑳 𐑚 𐑙)  -- [6] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Virtual fluctuations mediate the exchange, existing as Both emitted and not-y...))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [7] FFUSE | stoi := 𐑙 (The field and electron states reintegrate, resulting in the emission of a single discrete photon.)
  (.arrow 𐑠 𐑙 𐑭)  -- [8] IMSCRIB | gram := 𐑠 | identity — self-imscription (The photon recognizes itself as a self-propagating electromagnetic wave.)
  (.arrow 𐑭 𐑠 𐑡)  -- [9] IFIX | prot := 𐑭 | irreversible fixation — winding number (The photon strikes a surface, leaving a permanent record of its energy and mo...)
  (.arrow 𐑡 𐑭 𐑼)  -- [10] TANCH | top := 𐑡 | terminal object — connectivity boundary (The energy is contained within the light-cone boundary of the universe.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def origin_of_photon_true_arm : IGProtocol 𐑼 𐑡 :=
  (origin_of_photon_protocol).restrictToEVALT

-- false arm
noncomputable def origin_of_photon_false_arm : IGProtocol 𐑼 𐑡 :=
  (origin_of_photon_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem origin_of_photon_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
