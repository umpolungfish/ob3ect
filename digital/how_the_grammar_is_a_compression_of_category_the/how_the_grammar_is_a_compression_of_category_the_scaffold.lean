-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → EVALF → CLINK → CLINK → CLINK → CLINK → ENGAGR → FFUSE → IMSCRIB → AREV → IFIX → TANCH
-- Class: how the Grammar is a compression of category theory
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 10)]

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
--   [7] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [8] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [11] IMSCRIB   gram   := 𐑠               𐑙 → 𐑗  | identity — self-imscription
--   [12] AREV      pol    := 𐑗               𐑠 → 𐑭  | reverse morphism — parity flip
--   [13] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [14] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def how_the_grammar_is_a_compression_of_category_theory_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (prima_materia (C) exists as uninitialized void — ground of distinction)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (crystal_encode projects C onto the 12-primitive basis)
  -- FSPLIT [2] (gran := 𐑚) (folding branches into true arm (limit exists) and false arm (limit diverges)) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (true arm — limit exists, colimit universal (⊙ gate opens))
      -- F-branch (6 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [4] EVALF | chir := 𐑖 | evaluate-false — chirality check (false arm — limit diverges, colimit fails (Ħ chirality check))
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (chain L1-L6 operations in the true arm (sequential composition))
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (chain I1-I4 operations in the true arm (inductive composition))
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (chain A1-A5 operations in the true arm (algebraic composition))
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (chain failed operations in the false arm (sequential composition))
        (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (dagger structure — both arms active simultaneously (paradice)))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [10] FFUSE | stoi := 𐑙 (unfolding reconstitutes the original categorical operation (μ∘δ=id))
  (.arrow 𐑠 𐑙 𐑗)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (Yoneda embedding — self-recognition (identity survives quotient))
  (.arrow 𐑗 𐑠 𐑭)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (crystal_decode recovers the equivalence class from the 12-tuple)
  (.arrow 𐑭 𐑗 𐑡)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (mixed-radix encoding records the 12-tuple as a permanent address)
  (.arrow 𐑡 𐑭 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (12-primitive basis seals the crystal — terminal anchor)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def how_the_grammar_is_a_compression_of_category_theory_true_arm : IGProtocol 𐑼 𐑡 :=
  (how_the_grammar_is_a_compression_of_category_theory_protocol).restrictToEVALT

-- false arm
noncomputable def how_the_grammar_is_a_compression_of_category_theory_false_arm : IGProtocol 𐑼 𐑡 :=
  (how_the_grammar_is_a_compression_of_category_theory_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem how_the_grammar_is_a_compression_of_category_theory_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
