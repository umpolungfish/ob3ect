-- IGProtocol scaffold: VINIT → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → EVALF → AREV → ENGAGR → FFUSE → IFIX → TANCH
-- Class: multiplation
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑚  | identity — self-imscription
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [9] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [10] IFIX      prot   := 𐑭               𐑙 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def multiplation_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Clear accumulator and load operands into registers.)
  (.arrow 𐑠 𐑼 𐑚)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Verify multiplicand against identity to establish base magnitude.)
  -- FSPLIT [2] (gran := 𐑚) (Decompose the multiplier into a sequence of boolean bit-tests.) / FFUSE [9] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (If bit is 1, trigger the addition branch.)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Shift multiplicand magnitude to align with the current power-of-two position.)
        (.arrow 𐑱 𐑚 𐑙)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (Compose the shifted multiplicand into the running partial sum.)
      -- F-branch (3 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (If bit is 0, bypass the addition logic.)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (Decrement the multiplier bit-counter to move to the next position.)
        (.arrow 𐑳 𐑚 𐑙)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Handle sign-bit parity where the value is held as both magnitude and direction.))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [9] FFUSE | stoi := 𐑙 (Fuse all active partial products to recover the total product magnitude.)
  (.arrow 𐑭 𐑙 𐑡)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (Commit the final result to the output register, ending the volatile calculation.)
  (.arrow 𐑡 𐑭 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the operation within the bit-width boundary and set completion flags.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def multiplation_true_arm : IGProtocol 𐑼 𐑡 :=
  (multiplation_protocol).restrictToEVALT

-- false arm
noncomputable def multiplation_false_arm : IGProtocol 𐑼 𐑡 :=
  (multiplation_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem multiplation_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
