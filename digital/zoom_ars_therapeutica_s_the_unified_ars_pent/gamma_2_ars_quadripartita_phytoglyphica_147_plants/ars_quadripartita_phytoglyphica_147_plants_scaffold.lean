-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → TANCH → FSPLIT → AFWD → EVALT → AFWD → EVALF → FFUSE → IFIX → IMSCRIB → CLINK → AREV → ENGAGR → TANCH
-- Class: Ars quadripartita — Phytoglyphica (147 plants), Fungiglyphica (86 fungi), Animaglyphica (80 animals), and Therapeutica (10 therapies) as distinct Frobenius categories with inter-domain functorial mappings
-- Fingerprint: sig=(11,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑡  | forward morphism — bidirectional arrow
--   [4] TANCH     top    := 𐑡               𐑾 → 𐑚  | terminal object — connectivity boundary
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [11] IFIX      prot   := 𐑭               𐑙 → 𐑠  | irreversible fixation — winding number
--   [12] IMSCRIB   gram   := 𐑠               𐑭 → 𐑱  | identity — self-imscription
--   [13] CLINK     fid    := 𐑱               𐑠 → 𐑗  | composition — regime coherence
--   [14] AREV      pol    := 𐑗               𐑱 → 𐑳  | reverse morphism — parity flip
--   [15] ENGAGR    stoi   := 𐑳               𐑗 → 𐑡  | engage paradox — B-state, both arms
--   [16] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Ars quadripartita is uninscribed — no plant, fungus, animal, or therapy e...)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Phytoglyphica emerges from the void — 147 plants are inscribed as distinct gl...)
  (.arrow 𐑾 𐑾 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Fungiglyphica emerges — 86 fungi are inscribed, each with its structural type...)
  (.arrow 𐑾 𐑾 𐑡)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Animaglyphica emerges — 80 animals are inscribed, each with its structural ty...)
  (.arrow 𐑡 𐑾 𐑚)  -- [4] TANCH | top := 𐑡 | terminal object — connectivity boundary (Therapeutica is inscribed as the boundary — 10 therapies that close the syste...)
  -- FSPLIT [5] (gran := 𐑚) (A disease state enters the therapeutic fork. It splits into two arms: a plant-based arm (Phytoglyphica) and a fungal-based arm (Fungiglyphica).) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The plant-based arm traverses Phytoglyphica — a specific plant species is sel...)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The plant-based arm succeeds — the compound shows efficacy against the diseas...)
        (.arrow 𐑾 𐑚 𐑙)  -- [8] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The fungal-based arm traverses Fungiglyphica — a specific fungal species is s...)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (The fungal-based arm fails — the metabolite shows no efficacy or causes toxic...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [10] FFUSE | stoi := 𐑙 (The two arms reconstitute at the therapeutic endpoint. The successful plant-based arm and the failed fungal-based arm fuse into a single outcome: the disease is cured by the plant compound, with the fungal failure recorded as a negative result.)
  (.arrow 𐑭 𐑙 𐑠)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The successful therapy is canonized in the Therapeutica — a permanent record ...)
  (.arrow 𐑠 𐑭 𐑱)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (The cured patient recognizes themselves as a distinct glyph in the Animaglyph...)
  (.arrow 𐑱 𐑠 𐑗)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (The full chain is composed: plant → animal (ingestion) → therapy → cure. The ...)
  (.arrow 𐑗 𐑱 𐑳)  -- [14] AREV | pol := 𐑗 | reverse morphism — parity flip (The cycle descends: the cured animal dies and is decomposed by fungi, returni...)
  (.arrow 𐑳 𐑗 𐑡)  -- [15] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (A paradoxical state emerges — the disease is both present and absent in the s...)
  (.arrow 𐑡 𐑳 𐑼)  -- [16] TANCH | top := 𐑡 | terminal object — connectivity boundary (The system returns to its boundary. The Therapeutica contains all outcomes — ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_true_arm : IGProtocol 𐑼 𐑡 :=
  (ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_protocol).restrictToEVALT

-- false arm
noncomputable def ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_false_arm : IGProtocol 𐑼 𐑡 :=
  (ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem ars_quadripartita_phytoglyphica_147_plants_fungiglyphica_86_fungi_animaglyphica_80_animals_and_therapeutica_10_therapies_as_distinct_frobenius_categories_with_inter_domain_functorial_mappings_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
