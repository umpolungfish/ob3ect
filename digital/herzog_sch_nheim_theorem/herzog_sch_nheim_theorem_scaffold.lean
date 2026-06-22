-- IGProtocol scaffold: VINIT → TANCH → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → FFUSE → AREV → CLINK → EVALF → ENGAGR → IFIX
-- Class: Herzog–Schönheim Theorem
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 7)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑱  | forward morphism — bidirectional arrow
--   [3] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [4] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [8] AREV      pol    := 𐑗               𐑙 → 𐑱  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑗 → 𐑖  | composition — regime coherence
--   [10] EVALF     chir   := 𐑖               𐑱 → 𐑳  | evaluate-false — chirality check
--   [11] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def herzog_sch_nheim_theorem_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized finite group G, no subgroup structure yet distinguished)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (the Herzog–Schönheim theorem boundary: G admits partition ⟺ all subgroups hav...)
  (.arrow 𐑾 𐑡 𐑱)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (homomorphism φ: G → H carries subgroup structure forward)
  (.arrow 𐑱 𐑾 𐑠)  -- [3] CLINK | fid := 𐑱 | composition — regime coherence (composition of subgroup tower H₁ ⊆ H₂ ⊆ … ⊆ G)
  (.arrow 𐑠 𐑱 𐑚)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (identity subgroup {e} and full group G as self-referential fixed points)
  -- FSPLIT [5] (gran := 𐑚) (partition G into cosets of subgroup H: G = ⋃ᵢ H·gᵢ (splits into coset-system and index-constraint)) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (all cosets have equal size |H|; index [G:H] is uniform)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [7] FFUSE | stoi := 𐑙 (union of all cosets reconstitutes G exactly; FFUSE(FSPLIT(G)) = G)
  (.arrow 𐑗 𐑙 𐑱)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (kernel ker(φ) and pullback of subgroups; descent from H back to G)
  (.arrow 𐑱 𐑗 𐑖)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (refinement chain of successive subgroup containments)
  (.arrow 𐑖 𐑱 𐑳)  -- [10] EVALF | chir := 𐑖 | evaluate-false — chirality check (subgroups have unequal indices; no valid equal-index partition exists)
  (.arrow 𐑳 𐑖 𐑭)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (abelian non-cyclic case: both partition-exists and partition-fails simultaneo...)
  (.arrow 𐑭 𐑳 𐑼)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (proof record: the characterization is permanently fixed as canonical theorem)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def herzog_sch_nheim_theorem_true_arm : IGProtocol 𐑼 𐑭 :=
  (herzog_sch_nheim_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def herzog_sch_nheim_theorem_false_arm : IGProtocol 𐑼 𐑭 :=
  (herzog_sch_nheim_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem herzog_sch_nheim_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
