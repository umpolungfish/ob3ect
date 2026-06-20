-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → CLINK → CLINK → ENGAGR → FFUSE → IMSCRIB → AREV → IFIX → TANCH
-- Class: the_crystal_is_a_compression_of_category_theory
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

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
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [9] IMSCRIB   gram   := 𐑠               𐑙 → 𐑗  | identity — self-imscription
--   [10] AREV      pol    := 𐑗               𐑠 → 𐑭  | reverse morphism — parity flip
--   [11] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def the_crystal_is_a_compression_of_category_theory_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (prima_materia (CC) — the bare abstract category exists as uninitialized void,...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (crystal_encode — project an object from CC onto the 12-primitive basis, movin...)
  -- FSPLIT [2] (gran := 𐑚) (folding — the projection branches into two 12-tuple outcomes: one where the categorical construction succeeds (true arm), one where it fails (false arm).) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (convergent branch — the true arm is anchored: the limit exists, the colimit i...)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [4] EVALF | chir := 𐑖 | evaluate-false — chirality check (divergent branch — the false arm is anchored: the limit does not exist, the c...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (composition — chain the successful true-arm operations (L1–L6, I1–I4, A1–A5) ...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (composition — chain the successful true-arm operations (L1–L6, I1–I4, A1–A5) ...)
        (.arrow 𐑳 𐑚 𐑙)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (dagger structure — a paradice: the operation is both a forward morphism and i...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [8] FFUSE | stoi := 𐑙 (unfolding — the true and false branches reconstitute the original categorical operation. The intra-fiber richness of CC is recovered exactly, invisible to the 12-primitive projection.)
  (.arrow 𐑠 𐑙 𐑗)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (Yoneda embedding — the object recognizes itself through its representable pre...)
  (.arrow 𐑗 𐑠 𐑭)  -- [10] AREV | pol := 𐑗 | reverse morphism — parity flip (crystal_decode — reverse the projection, recovering the equivalence class fro...)
  (.arrow 𐑭 𐑗 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (mixed-radix encoding — permanently record the 27 × 1024 × 625 address. The Le...)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (12-primitive basis — the closed boundary seals the crystal. All 15 operations...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- convergent branch — the true arm is anchored: the limit exists, the colimit i...
noncomputable def the_crystal_is_a_compression_of_category_theory_true_arm : IGProtocol 𐑼 𐑡 :=
  (the_crystal_is_a_compression_of_category_theory_protocol).restrictToEVALT

-- divergent branch — the false arm is anchored: the limit does not exist, the c...
noncomputable def the_crystal_is_a_compression_of_category_theory_false_arm : IGProtocol 𐑼 𐑡 :=
  (the_crystal_is_a_compression_of_category_theory_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem the_crystal_is_a_compression_of_category_theory_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
