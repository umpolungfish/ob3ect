-- IGProtocol scaffold: VINIT → IMSCRIB → AFWD → IMSCRIB → FSPLIT → EVALF → FFUSE → IMSCRIB → CLINK → EVALT → ENGAGR → IFIX → TANCH
-- Class: imaginary unit *i*
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(4, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑠  | initial object — ground of distinction
--   [1] IMSCRIB   gram   := 𐑠               𐑼 → 𐑾  | identity — self-imscription
--   [2] AFWD      rel    := 𐑾               𐑠 → 𐑠  | forward morphism — bidirectional arrow
--   [3] IMSCRIB   gram   := 𐑠               𐑾 → 𐑚  | identity — self-imscription
--   [4] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [7] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [8] CLINK     fid    := 𐑱               𐑠 → ⊙  | composition — regime coherence
--   [9] EVALT     crit   := ⊙               𐑱 → 𐑳  | evaluate-true — criticality gate open
--   [10] ENGAGR    stoi   := 𐑳               ⊙ → 𐑭  | engage paradox — B-state, both arms
--   [11] IFIX      prot   := 𐑭               𐑳 → 𐑡  | irreversible fixation — winding number
--   [12] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def imaginary_unit_i_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑠)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Start at the origin 0 on the real line.)
  (.arrow 𐑠 𐑼 𐑾)  -- [1] IMSCRIB | gram := 𐑠 | identity — self-imscription (Identify the need for a root to x² + 1 = 0.)
  (.arrow 𐑾 𐑠 𐑠)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Rotate 90 degrees from the real unit 1 to establish the imaginary direction.)
  (.arrow 𐑠 𐑾 𐑚)  -- [3] IMSCRIB | gram := 𐑠 | identity — self-imscription (Name this position 'i'.)
  -- FSPLIT [4] (gran := 𐑚) (Apply i to itself (i * i) to test its definition.) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (0 nodes)
      (.refl 𐑙)  -- T-branch: empty arc (direct to FFUSE.T)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (The result lands on -1 (the negative real axis).))
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [6] FFUSE | stoi := 𐑙 (Take the square root of -1 to return to the imaginary unit.)
  (.arrow 𐑠 𐑙 𐑱)  -- [7] IMSCRIB | gram := 𐑠 | identity — self-imscription (Confirm identity i = √(-1).)
  (.arrow 𐑱 𐑠 ⊙)  -- [8] CLINK | fid := 𐑱 | composition — regime coherence (Compose i with itself four times (i^4).)
  (.arrow ⊙ 𐑱 𐑳)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The result returns to the real unit 1 (full 360-degree rotation).)
  (.arrow 𐑳 ⊙ 𐑭)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Acknowledge that the choice of 'i' vs '-i' is a symmetric paradice.)
  (.arrow 𐑭 𐑳 𐑡)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the position of i in the complex plane as a permanent coordinate.)
  (.arrow 𐑡 𐑭 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (Close the system within the complex field ℂ.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def imaginary_unit_i_true_arm : IGProtocol 𐑼 𐑡 :=
  (imaginary_unit_i_protocol).restrictToEVALT

-- false arm
noncomputable def imaginary_unit_i_false_arm : IGProtocol 𐑼 𐑡 :=
  (imaginary_unit_i_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem imaginary_unit_i_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
