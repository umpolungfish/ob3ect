-- IGProtocol scaffold: VINIT → AFWD → CLINK → AFWD → TANCH → IMSCRIB → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → AREV → CLINK → AFWD → IFIX
-- Class: eel spawning
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(6, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] AFWD      rel    := 𐑾               𐑱 → 𐑡  | forward morphism — bidirectional arrow
--   [4] TANCH     top    := 𐑡               𐑾 → 𐑠  | terminal object — connectivity boundary
--   [5] IMSCRIB   gram   := 𐑠               𐑡 → 𐑚  | identity — self-imscription
--   [6] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [7] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := 𐑳               𐑙 → 𐑗  | engage paradox — B-state, both arms
--   [11] AREV      pol    := 𐑗               𐑳 → 𐑱  | reverse morphism — parity flip
--   [12] CLINK     fid    := 𐑱               𐑗 → 𐑾  | composition — regime coherence
--   [13] AFWD      rel    := 𐑾               𐑱 → 𐑭  | forward morphism — bidirectional arrow
--   [14] IFIX      prot   := 𐑭               𐑾 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def eel_spawning_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (unmigrated silver eel exists only as potential in freshwater)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (hormonal trigger initiates downstream river migration)
  (.arrow 𐑱 𐑾 𐑾)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (river transit composes with coastal ocean entry)
  (.arrow 𐑾 𐑱 𐑡)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (sustained swimming carries eels across Atlantic basin)
  (.arrow 𐑡 𐑾 𐑠)  -- [4] TANCH | top := 𐑡 | terminal object — connectivity boundary (Sargasso Sea gyre encloses arriving adults)
  (.arrow 𐑠 𐑡 𐑚)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (eels recognize conspecifics by pheromone signature)
  -- FSPLIT [6] (gran := 𐑚) (spawning aggregation divides stock into male and female release paths) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (synchronized gamete clouds achieve positive fertilization)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (predation removes fraction of gametes before fusion))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [9] FFUSE | stoi := 𐑙 (male and female gametes reconstitute single fertilized egg mass)
  (.arrow 𐑳 𐑙 𐑗)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (adults expire while eggs are simultaneously released and fertilized)
  (.arrow 𐑗 𐑳 𐑱)  -- [11] AREV | pol := 𐑗 | reverse morphism — parity flip (hatched leptocephali begin passive westward drift)
  (.arrow 𐑱 𐑗 𐑾)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (drift composes with gradual metamorphosis into glass eels)
  (.arrow 𐑾 𐑱 𐑭)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (glass eels ascend rivers to complete continental recolonization)
  (.arrow 𐑭 𐑾 𐑼)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (successful cohort imprints permanent genetic record in population)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def eel_spawning_true_arm : IGProtocol 𐑼 𐑭 :=
  (eel_spawning_protocol).restrictToEVALT

-- false arm
noncomputable def eel_spawning_false_arm : IGProtocol 𐑼 𐑭 :=
  (eel_spawning_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem eel_spawning_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
