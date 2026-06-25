-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → IMSCRIB → TANCH → CLINK → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → AFWD → EVALT → IFIX → AFWD → AREV → CLINK → IMSCRIB → IFIX
-- Class: creating golem
-- Fingerprint: sig=(12,2,4,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=20
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 11)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑾  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := 𐑾               𐑾 → 𐑠  | forward morphism — bidirectional arrow
--   [4] IMSCRIB   gram   := 𐑠               𐑾 → 𐑡  | identity — self-imscription
--   [5] TANCH     top    := 𐑡               𐑠 → 𐑱  | terminal object — connectivity boundary
--   [6] CLINK     fid    := 𐑱               𐑡 → 𐑚  | composition — regime coherence
--   [7] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [8] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [9] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [10] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [12] AFWD      rel    := 𐑾               𐑙 → ⊙  | forward morphism — bidirectional arrow
--   [13] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [14] IFIX      prot   := 𐑭               ⊙ → 𐑾  | irreversible fixation — winding number
--   [15] AFWD      rel    := 𐑾               𐑭 → 𐑗  | forward morphism — bidirectional arrow
--   [16] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [17] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [18] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [19] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def creating_golem_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Unformed clay lies ready)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (First letter of the name is traced)
  (.arrow 𐑾 𐑾 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Second letter of the name is traced)
  (.arrow 𐑾 𐑾 𐑠)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Third letter of the name is traced)
  (.arrow 𐑠 𐑾 𐑡)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (The name begins to refer to itself)
  (.arrow 𐑡 𐑠 𐑱)  -- [5] TANCH | top := 𐑡 | terminal object — connectivity boundary (Protective circle is closed around the clay)
  (.arrow 𐑱 𐑡 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (Clay is linked to the circle boundary)
  -- FSPLIT [7] (gran := 𐑚) (Name diagram splits vocal and geometric branches) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Vocal branch spoken correctly)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (Geometric branch drawn incorrectly)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Clay holds both living and inert potential))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [11] FFUSE | stoi := 𐑙 (Seal with name reunites branches into life)
  (.arrow 𐑾 𐑙 ⊙)  -- [12] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Life force enters the limbs)
  (.arrow ⊙ 𐑾 𐑭)  -- [13] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Golem rises and obeys)
  (.arrow 𐑭 ⊙ 𐑾)  -- [14] IFIX | prot := 𐑭 | irreversible fixation — winding number (Rite recorded on tablet)
  (.arrow 𐑾 𐑭 𐑗)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Command given to the golem)
  (.arrow 𐑗 𐑾 𐑱)  -- [16] AREV | pol := 𐑗 | reverse morphism — parity flip (Name erased to deactivate)
  (.arrow 𐑱 𐑗 𐑠)  -- [17] CLINK | fid := 𐑱 | composition — regime coherence (Deactivation composes reverse seals)
  (.arrow 𐑠 𐑱 𐑭)  -- [18] IMSCRIB | gram := 𐑠 | identity — self-imscription (Golem recognizes its return to clay)
  (.arrow 𐑭 𐑠 𐑼)  -- [19] IFIX | prot := 𐑭 | irreversible fixation — winding number (Final state permanently recorded)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def creating_golem_true_arm : IGProtocol 𐑼 𐑭 :=
  (creating_golem_protocol).restrictToEVALT

-- false arm
noncomputable def creating_golem_false_arm : IGProtocol 𐑼 𐑭 :=
  (creating_golem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem creating_golem_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
