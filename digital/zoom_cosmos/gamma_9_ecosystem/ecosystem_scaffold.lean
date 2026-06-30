-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → IMSCRIB → ENGAGR → IFIX → TANCH
-- Class: Ecosystem
-- Fingerprint: sig=(9,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=19
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7), (9, 14)]

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
--   [8] CLINK     fid    := 𐑱               𐑙 → 𐑚  | composition — regime coherence
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [11] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [15] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [16] ENGAGR    stoi   := 𐑳               𐑠 → 𐑭  | engage paradox — B-state, both arms
--   [17] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [18] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ecosystem_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Abiotic substrate initialization establishing the physical environment.)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Solar radiation influx driving the initial energy gradient.)
  -- FSPLIT [2] (gran := 𐑚) (Radiative partitioning dividing incident energy into absorbed and reflected components.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Photosynthetic capture representing the absorbed energy pathway.)
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Primary production converting captured photons into chemical biomass.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Albedo reflection representing the unabsorbed energy pathway.)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Thermal dissipation radiating reflected energy back to space.))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [7] FFUSE | stoi := 𐑙 (Radiative balance reconstituting the total incident solar radiation from absorbed and reflected components.)
  (.arrow 𐑱 𐑙 𐑚)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Food web formation chaining primary producers to primary consumers.)
  -- FSPLIT [9] (gran := 𐑚) (Consumption partitioning dividing ingested biomass into assimilated tissue and egested detritus.) / FFUSE [14] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [10] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Secondary production representing the assimilated tissue pathway.)
        (.arrow 𐑾 𐑚 𐑙)  -- [11] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Trophic transfer moving energy to higher consumer levels.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (Detritus formation representing the egested waste pathway.)
        (.arrow 𐑗 𐑚 𐑙)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (Microbial decomposition breaking down detritus into inorganic nutrients.))
    -- reconnect at FFUSE [14]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [14] FFUSE | stoi := 𐑙 (Nutrient mineralization reconstituting the abiotic substrate from decomposed matter.)
  (.arrow 𐑠 𐑙 𐑳)  -- [15] IMSCRIB | gram := 𐑠 | identity — self-imscription (Homeostatic feedback closing the loop to regulate population densities.)
  (.arrow 𐑳 𐑠 𐑭)  -- [16] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Ecotone holding successional growth and decay in simultaneous paradice.)
  (.arrow 𐑭 𐑳 𐑡)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (Sedimentation permanently fixing undecomposed organic matter into the geologi...)
  (.arrow 𐑡 𐑭 𐑼)  -- [18] TANCH | top := 𐑡 | terminal object — connectivity boundary (Carrying capacity enforcement terminating the growth cycle at resource limits.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ecosystem_true_arm : IGProtocol 𐑼 𐑡 :=
  (ecosystem_protocol).restrictToEVALT

-- false arm
noncomputable def ecosystem_false_arm : IGProtocol 𐑼 𐑡 :=
  (ecosystem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ecosystem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
