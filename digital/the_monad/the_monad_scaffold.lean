-- IGProtocol scaffold: VINIT → TANCH → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → IFIX → EVALF → AREV → CLINK → IFIX → FFUSE → ENGAGR → IMSCRIB → TANCH
-- Class: The Monad
-- Fingerprint: sig=(9,2,3,2)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=16
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 12)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑠  | terminal object — connectivity boundary
--   [2] IMSCRIB   gram   := 𐑠               𐑡 → 𐑚  | identity — self-imscription
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [7] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [11] IFIX      prot   := 𐑭               𐑚 → 𐑙  | irreversible fixation — winding number
--   [12] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [13] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [14] IMSCRIB   gram   := 𐑠               𐑳 → 𐑡  | identity — self-imscription
--   [15] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def the_monad_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Void Before Emanation — the Monad exists as pure potentiality, unmanifest...)
  (.arrow 𐑡 𐑼 𐑠)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Monad's Self-Boundary — the One closes upon itself; it is complete, self-...)
  (.arrow 𐑠 𐑡 𐑚)  -- [2] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Monad's Self-Knowledge — the Monad knows itself through itself alone; ide...)
  -- FSPLIT [3] (gran := 𐑚) (The First Hypostasis (Intellect/Nous) — the Monad bifurcates into knower and known, subject and object, while remaining undivided.) / FFUSE [12] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (4 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of Being (T-arm) — the positive branch: the Monad affirms its exi...)
      .seq
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Emanation (Procession) — the forward morphism: the Monad's overflow into mult...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The Eternal Cycle of Emanation — composition: emanation chains into the next ...)
        (.arrow 𐑭 𐑚 𐑙)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Logos (First Decree) — the permanent record: what emanates from the Monad...)
      -- F-branch (4 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negation of Multiplicity (F-arm) — the negative branch: all distinction disso...)
      .seq
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Return (Reversion) — the reverse morphism: the ascent of all multiplicity bac...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [10] CLINK | fid := 𐑱 | composition — regime coherence (The Eternal Cycle of Return — composition: reversion chains back toward the s...)
        (.arrow 𐑭 𐑚 𐑙)  -- [11] IFIX | prot := 𐑭 | irreversible fixation — winding number (The Logos (Second Decree) — the permanent record: what returns to the Monad i...))
    -- reconnect at FFUSE [12]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [12] FFUSE | stoi := 𐑙 (The Reintegration of Intellect — the dyad reconstitutes the Monad; subject and object fuse back into undifferentiated unity.)
  (.arrow 𐑳 𐑙 𐑠)  -- [13] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The Paradice of Simultaneous Emanation and Return — both procession and rever...)
  (.arrow 𐑠 𐑳 𐑡)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Monad's Self-Knowledge (Closure) — the Monad knows itself through the ent...)
  (.arrow 𐑡 𐑠 𐑼)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Monad's Self-Boundary (Eternal) — the One remains closed upon itself; the...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def the_monad_true_arm : IGProtocol 𐑼 𐑡 :=
  (the_monad_protocol).restrictToEVALT

-- false arm
noncomputable def the_monad_false_arm : IGProtocol 𐑼 𐑡 :=
  (the_monad_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem the_monad_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
