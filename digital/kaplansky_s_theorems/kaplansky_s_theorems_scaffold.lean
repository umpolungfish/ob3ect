-- IGProtocol scaffold: VINIT → TANCH → FSPLIT → EVALT → AFWD → CLINK → IMSCRIB → EVALF → AREV → CLINK → FSPLIT → EVALT → CLINK → IFIX → IFIX → IFIX → ENGAGR → FFUSE → IMSCRIB → TANCH
-- Class: Kaplansky's Theorems
-- Fingerprint: sig=(10,3,4,3)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(10, 17)]

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
--   [5] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [6] IMSCRIB   gram   := 𐑠               𐑱 → 𐑖  | identity — self-imscription
--   [7] EVALF     chir   := 𐑖               𐑠 → 𐑗  | evaluate-false — chirality check
--   [8] AREV      pol    := 𐑗               𐑖 → 𐑱  | reverse morphism — parity flip
--   [9] CLINK     fid    := 𐑱               𐑗 → 𐑚  | composition — regime coherence
--   [10] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [11] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [12] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [13] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [14] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [15] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [16] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [17] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [18] IMSCRIB   gram   := 𐑠               𐑙 → 𐑡  | identity — self-imscription
--   [19] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def kaplanskys_theorems_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize M as unstructured finitely generated module over PID R)
  (.arrow 𐑡 𐑼 𐑚)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (anchor the entire computation within the category of R-modules and the PID R)
  (.arrow 𐑚 𐑡 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (branch M into free summand F and torsion summand T)
  (.arrow ⊙ 𐑚 𐑾)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirm that the free part F has well-defined rank r)
  (.arrow 𐑾 ⊙ 𐑱)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (project M onto the free part F; forward morphism toward canonical form)
  (.arrow 𐑱 𐑾 𐑠)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (compose the rank extraction with the next invariant factor computation)
  (.arrow 𐑠 𐑱 𐑖)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (recognize M through its own decomposition structure; self-reference via invar...)
  (.arrow 𐑖 𐑠 𐑗)  -- [7] EVALF | chir := 𐑖 | evaluate-false — chirality check (evaluate whether torsion part T is empty or nontrivial)
  (.arrow 𐑗 𐑖 𐑱)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (if torsion is present, reverse-include T back into M; descent into annihilate...)
  (.arrow 𐑱 𐑗 𐑚)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (chain the torsion extraction with elementary divisor factorization)
  -- FSPLIT [10] (gran := 𐑚) (further decompose T into primary components T ≅ ⊕ T_p (one per prime p)) / FFUSE [17] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (6 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (affirm each primary component T_p has well-defined p-adic invariant factors)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [12] CLINK | fid := 𐑱 | composition — regime coherence (compose primary decomposition with invariant factor ordering d₁|d₂|...|dₖ)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [13] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the first invariant factor d₁ as permanent, immutable theorem output)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (record the second invariant factor d₂ as permanent, immutable theorem output)
      .seq
        (.arrow 𐑭 𐑚 𐑙)  -- [15] IFIX | prot := 𐑭 | irreversible fixation — winding number (record subsequent invariant factors d₃, d₄, ... as permanent records)
        (.arrow 𐑳 𐑚 𐑙)  -- [16] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold the paradice state: M is both its free rank and its torsion structure si...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [17]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [17] FFUSE | stoi := 𐑙 (reconstitute M from F ⊕ T; verify M ≅ R^r ⊕ (R/(d₁) ⊕ R/(d₂) ⊕ ... ⊕ R/(dₖ)))
  (.arrow 𐑠 𐑙 𐑡)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (final self-reference: M recognizes itself as the direct sum of its canonical ...)
  (.arrow 𐑡 𐑠 𐑼)  -- [19] TANCH | top := 𐑡 | terminal object — connectivity boundary (close the computation; the theorem is sealed within the PID category)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def kaplanskys_theorems_true_arm : IGProtocol 𐑼 𐑡 :=
  (kaplanskys_theorems_protocol).restrictToEVALT

-- false arm
noncomputable def kaplanskys_theorems_false_arm : IGProtocol 𐑼 𐑡 :=
  (kaplanskys_theorems_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem kaplanskys_theorems_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
