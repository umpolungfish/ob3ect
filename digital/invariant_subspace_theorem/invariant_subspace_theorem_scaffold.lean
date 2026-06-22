-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → IMSCRIB → FFUSE → IFIX → IFIX → IFIX → ENGAGR → CLINK → IMSCRIB
-- Class: Invariant Subspace Theorem
-- Fingerprint: sig=(11,3,5,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=22
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 15)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑚  | terminal object — connectivity boundary
--   [2] FSPLIT    gran   := 𐑚               𐑡 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑖  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑱 → 𐑗  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑖 → 𐑚  | reverse morphism — parity flip
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [12] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [13] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [14] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [15] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [16] IFIX      prot   := 𐑭               𐑙 → 𐑭  | irreversible fixation — winding number
--   [17] IFIX      prot   := 𐑭               𐑭 → 𐑭  | irreversible fixation — winding number
--   [18] IFIX      prot   := 𐑭               𐑭 → 𐑳  | irreversible fixation — winding number
--   [19] ENGAGR    stoi   := 𐑳               𐑭 → 𐑱  | engage paradox — B-state, both arms
--   [20] CLINK     fid    := 𐑱               𐑳 → 𐑠  | composition — regime coherence
--   [21] IMSCRIB   gram   := 𐑠               𐑱 → 𐑼  | identity — self-imscription

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def invariant_subspace_theorem_protocol : IGProtocol 𐑼 𐑠 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (uninitialized operator T with no subspace structure identified)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (the Hilbert space H is the closed boundary containing all operators and subsp...)
  (.arrow 𐑚 𐑡 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (T decomposes into eigenvalue branches — each eigenspace E_λ is a potential in...)
  (.arrow ⊙ 𐑚 𐑾)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirmative branch — an eigenspace E_λ₁ is found; it is invariant under T)
  (.arrow 𐑾 ⊙ 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism — T restricted to E_λ₁ maps E_λ₁ → E_λ₁ (T|_Eλ₁ = λ₁ id))
  (.arrow 𐑱 𐑾 𐑖)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (composition — T|_Eλ₁ ∘ T|_Eλ₁ = λ₁² id, building the orbit within E_λ₁)
  (.arrow 𐑖 𐑱 𐑗)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (negative branch — the orthogonal complement E_λ₁⊥ is explored; it may contain...)
  (.arrow 𐑗 𐑖 𐑚)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism — the orthogonal decomposition H = E_λ₁ ⊕ E_λ₁⊥ undoes the f...)
  -- FSPLIT [8] (gran := 𐑚) (second spectral split — E_λ₁⊥ further decomposes into E_λ₂, E_λ₃, ... (if T is diagonalizable)) / FFUSE [15] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirmative — E_λ₂ is found as another invariant eigenspace)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (forward morphism — T|_Eλ₂ = λ₂ id)
        (.arrow 𐑱 𐑚 𐑙)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (composition — T|_Eλ₂ ∘ T|_Eλ₂ = λ₂² id)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [12] EVALF | chir := 𐑖 | evaluate-false — chirality check (negative branch — E_λ₂⊥ is explored for remaining eigenspaces)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [13] AREV | pol := 𐑗 | reverse morphism — parity flip (reverse morphism — H = E_λ₁ ⊕ E_λ₂ ⊕ E_λ₂⊥)
        (.arrow 𐑠 𐑚 𐑙)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (identity — id_H is invariant under T (T(H) ⊆ H always holds)))
    -- reconnect at FFUSE [15]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [15] FFUSE | stoi := 𐑙 (spectral reconstruction — all eigenspaces E_λᵢ are fused back into T = Σ λᵢ P_Eλᵢ)
  (.arrow 𐑭 𐑙 𐑭)  -- [16] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent record — eigenvalue λ₁ and eigenspace E_λ₁ are fixed in the spectra...)
  (.arrow 𐑭 𐑭 𐑭)  -- [17] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent record — eigenvalue λ₂ and eigenspace E_λ₂ are fixed)
  (.arrow 𐑭 𐑭 𐑳)  -- [18] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent record — all eigenvalues and eigenspaces are appended to the irreve...)
  (.arrow 𐑳 𐑭 𐑱)  -- [19] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (paradice — in finite dimension, the theorem is proven (EVALT); in infinite di...)
  (.arrow 𐑱 𐑳 𐑠)  -- [20] CLINK | fid := 𐑱 | composition — regime coherence (composition — the full spectral decomposition T = Σ λᵢ P_Eλᵢ is the final cha...)
  (.arrow 𐑠 𐑱 𐑼)  -- [21] IMSCRIB | gram := 𐑠 | identity — self-imscription (self-reference — the operator T recognizes itself in its own spectral decompo...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def invariant_subspace_theorem_true_arm : IGProtocol 𐑼 𐑠 :=
  (invariant_subspace_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def invariant_subspace_theorem_false_arm : IGProtocol 𐑼 𐑠 :=
  (invariant_subspace_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem invariant_subspace_theorem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
