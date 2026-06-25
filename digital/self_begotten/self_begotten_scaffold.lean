-- IGProtocol scaffold: VINIT → TANCH → AFWD → FSPLIT → EVALT → FFUSE → AREV → IMSCRIB → EVALF → ENGAGR → IFIX
-- Class: self-begotten
-- Fingerprint: sig=(5,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=11
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑾  | terminal object — connectivity boundary
--   [2] AFWD      rel    := 𐑾               𐑡 → 𐑚  | forward morphism — bidirectional arrow
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [6] AREV      pol    := 𐑗               𐑙 → 𐑠  | reverse morphism — parity flip
--   [7] IMSCRIB   gram   := 𐑠               𐑗 → 𐑖  | identity — self-imscription
--   [8] EVALF     chir   := 𐑖               𐑠 → 𐑳  | evaluate-false — chirality check
--   [9] ENGAGR    stoi   := 𐑳               𐑖 → 𐑭  | engage paradox — B-state, both arms
--   [10] IFIX      prot   := 𐑭               𐑳 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def self_begotten_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (initialize the self-begotten essence)
  (.arrow 𐑡 𐑼 𐑾)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (establish the Infinite One as the boundary)
  (.arrow 𐑾 𐑡 𐑚)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (emanate divine aspects from the source)
  -- FSPLIT [3] (gran := 𐑚) (divide the divine spark into multiple aspects) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (recognize the realization of divine potential)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [5] FFUSE | stoi := 𐑙 (reunify the divine aspects back to the essence)
  (.arrow 𐑗 𐑙 𐑠)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (return to the source, the Infinite One)
  (.arrow 𐑠 𐑗 𐑖)  -- [7] IMSCRIB | gram := 𐑠 | identity — self-imscription (acknowledge the self-awareness of the divine spark)
  (.arrow 𐑖 𐑠 𐑳)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (confront the ignorance of divine nature)
  (.arrow 𐑳 𐑖 𐑭)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (hold the paradox of being both divine and material)
  (.arrow 𐑭 𐑳 𐑼)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (create a permanent record of divine realization)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def self_begotten_true_arm : IGProtocol 𐑼 𐑭 :=
  (self_begotten_protocol).restrictToEVALT

-- false arm
noncomputable def self_begotten_false_arm : IGProtocol 𐑼 𐑭 :=
  (self_begotten_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem self_begotten_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
