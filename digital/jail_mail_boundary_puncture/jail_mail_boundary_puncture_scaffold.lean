-- IGProtocol scaffold: VINIT → TANCH → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → ENGAGR → IFIX → IMSCRIB → TANCH
-- Class: jail mail boundary puncture
-- Fingerprint: sig=(7,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=13
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(3, 8)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑡  | initial object — ground of distinction
--   [1] TANCH     top    := 𐑡               𐑼 → 𐑱  | terminal object — connectivity boundary
--   [2] CLINK     fid    := 𐑱               𐑡 → 𐑚  | composition — regime coherence
--   [3] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [6] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [7] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [8] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [9] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [10] IFIX      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [11] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [12] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def jail_mail_boundary_puncture_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑡)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Raw unsorted mail arrives at the facility gate.)
  (.arrow 𐑡 𐑼 𐑱)  -- [1] TANCH | top := 𐑡 | terminal object — connectivity boundary (The perimeter mailroom checkpoint establishes the security boundary.)
  (.arrow 𐑱 𐑡 𐑚)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (Mail is logged into the intake queue for processing.)
  -- FSPLIT [3] (gran := 𐑚) (The inspection gate separates the batch into cleared and suspicious streams.) / FFUSE [8] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Cleared correspondence is stamped as approved for delivery.)
        (.arrow 𐑾 𐑚 𐑙)  -- [5] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Approved letters are forwarded to the inmate cell blocks.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [6] EVALF | chir := 𐑖 | evaluate-false — chirality check (Suspicious items are flagged as contraband.)
        (.arrow 𐑗 𐑚 𐑙)  -- [7] AREV | pol := 𐑗 | reverse morphism — parity flip (Confiscated items are reversed back to the sender or destroyed.))
    -- reconnect at FFUSE [8]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [8] FFUSE | stoi := 𐑙 (The mailroom ledger reconciles cleared and confiscated items into the total daily batch.)
  (.arrow 𐑳 𐑙 𐑭)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Legal mail opened by guards is delivered as private correspondence.)
  (.arrow 𐑭 𐑳 𐑠)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (The permanent confiscation and delivery log is written to the institutional r...)
  (.arrow 𐑠 𐑭 𐑡)  -- [11] IMSCRIB | gram := 𐑠 | identity — self-imscription (The inmate verified identity is confirmed against the approved recipient list.)
  (.arrow 𐑡 𐑠 𐑼)  -- [12] TANCH | top := 𐑡 | terminal object — connectivity boundary (The mailroom cycle closes and seals the perimeter for the next intake.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def jail_mail_boundary_puncture_true_arm : IGProtocol 𐑼 𐑡 :=
  (jail_mail_boundary_puncture_protocol).restrictToEVALT

-- false arm
noncomputable def jail_mail_boundary_puncture_false_arm : IGProtocol 𐑼 𐑡 :=
  (jail_mail_boundary_puncture_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem jail_mail_boundary_puncture_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
