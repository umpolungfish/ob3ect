-- IGProtocol scaffold: VINIT → CLINK → FSPLIT → EVALT → AFWD → IFIX → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → TANCH
-- Class: Planet
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑱  | initial object — ground of distinction
--   [1] CLINK     fid    := 𐑱               𐑼 → 𐑚  | composition — regime coherence
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [5] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [10] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [11] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def planet_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑱)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The characterless silence and unmanifest deep before planetary formation.)
  (.arrow 𐑱 𐑼 𐑚)  -- [1] CLINK | fid := 𐑱 | composition — regime coherence (The chaining of the twelve aeons and fatherhoods to structure the planetary s...)
  -- FSPLIT [2] (gran := 𐑚) (The division of the primordial matter into the land of life and the land of death.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The establishment of the land of life on the right, receiving eternal light a...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [4] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The forward descent of the infinite light spark into the illuminated hemisphere.)
        (.arrow 𐑭 𐑚 𐑙)  -- [5] IFIX | prot := 𐑭 | irreversible fixation — winding number (The sealing of the land of life with the adamantine stones and fixed ordinances.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (The establishment of the land of death on the left, bound in narrow and painf...)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (The reverse purification of the shadowed matter through the watchers and desc...))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [8] FFUSE | stoi := 𐑙 (The reunification of the planetary sphere as the complete new earth, where light permeates all elements.)
  (.arrow 𐑳 𐑙 𐑠)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The manifestation of the paradox of light and darkness, the material planet h...)
  (.arrow 𐑠 𐑳 𐑡)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (The formation of the Great Man, the planetary macrocosm reflecting the divine...)
  (.arrow 𐑡 𐑠 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (The sealing of the firmament and the outer veils, closing the boundary of the...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def planet_true_arm : IGProtocol 𐑼 𐑡 :=
  (planet_protocol).restrictToEVALT

-- false arm
noncomputable def planet_false_arm : IGProtocol 𐑼 𐑡 :=
  (planet_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem planet_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
