-- IGProtocol scaffold: VINIT → AREV → FSPLIT → EVALT → EVALF → FFUSE → AFWD → CLINK → FSPLIT → ENGAGR → FFUSE → EVALT → AREV → FSPLIT → EVALF → EVALT → FFUSE → AFWD → CLINK → FSPLIT → EVALT → FFUSE → AREV → FSPLIT → ENGAGR → FFUSE → IMSCRIB → CLINK → IFIX → EVALT → TANCH
-- Class: Purpose of the 7 Sacraments
-- Fingerprint: sig=(11,10,9,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=31
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 5), (8, 10), (13, 16), (19, 21), (23, 25)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑗  | initial object — ground of distinction
--   [1] AREV      pol    := 𐑗               𐑼 → 𐑚  | reverse morphism — parity flip
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [6] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [10] FFUSE     stoi   := 𐑙               𐑙 → ⊙  | fuse μ — assembly mode
--   [11] EVALT     crit   := ⊙               𐑙 → 𐑗  | evaluate-true — criticality gate open
--   [12] AREV      pol    := 𐑗               ⊙ → 𐑚  | reverse morphism — parity flip
--   [13] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [14] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [15] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [16] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [17] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [18] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [19] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [20] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [21] FFUSE     stoi   := 𐑙               𐑙 → 𐑗  | fuse μ — assembly mode
--   [22] AREV      pol    := 𐑗               𐑙 → 𐑚  | reverse morphism — parity flip
--   [23] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [24] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [25] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [26] IMSCRIB   gram   := 𐑠               𐑙 → 𐑱  | identity — self-imscription
--   [27] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [28] IFIX      prot   := 𐑭               𐑱 → ⊙  | irreversible fixation — winding number
--   [29] EVALT     crit   := ⊙               𐑭 → 𐑡  | evaluate-true — criticality gate open
--   [30] TANCH     top    := 𐑡               ⊙ → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def purpose_of_the_7_sacraments_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑗)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Uninitiated soul in pre-grace void before any sacramental operation)
  (.arrow 𐑗 𐑼 𐑚)  -- [1] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent into material realm / Baptismal immersion representing death to old self)
  -- FSPLIT [2] (gran := 𐑚) (Separation of spirit and flesh / discernment of grace from matter) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of faith / cleansing grace received on spirit arm)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [4] EVALF | chir := 𐑖 | evaluate-false — chirality check (Acknowledgment of sin / rejection of matter on flesh arm))
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [5] FFUSE | stoi := 𐑙 (Reintegration of purified spirit and body / emergence from waters)
  (.arrow 𐑾 𐑙 𐑱)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Ascent through illumination / Confirmation/Chrismation anointing)
  (.arrow 𐑱 𐑾 𐑚)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (Chaining of sacramental grace / progression to Eucharist)
  -- FSPLIT [8] (gran := 𐑚) (Division of bread and wine / separation of elements for consecration) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑳 𐑚 𐑙)  -- [9] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Paradox of presence / both bread and divine body held simultaneously)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 ⊙)  -- [10] FFUSE | stoi := 𐑙 (Consubstantiation / Eucharistic union restoring wholeness)
  (.arrow ⊙ 𐑙 𐑗)  -- [11] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of communion / spiritual nourishment received)
  (.arrow 𐑗 ⊙ 𐑚)  -- [12] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent into penitence / Penance/Confession examination)
  -- FSPLIT [13] (gran := 𐑚) (Separation of sin and soul / discernment of contrition) / FFUSE [16] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [15] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of repentance / grace on spirit arm)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [14] EVALF | chir := 𐑖 | evaluate-false — chirality check (Acknowledgment of failure / contrition on flesh arm))
    -- reconnect at FFUSE [16]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [16] FFUSE | stoi := 𐑙 (Reconciliation / absolution restoring inner unity)
  (.arrow 𐑾 𐑙 𐑱)  -- [17] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Ascent through healing / Anointing of the Sick strengthening)
  (.arrow 𐑱 𐑾 𐑚)  -- [18] CLINK | fid := 𐑱 | composition — regime coherence (Chaining of sacramental grace / progression to Holy Orders)
  -- FSPLIT [19] (gran := 𐑚) (Separation of roles / ordination discernment between laity and clergy) / FFUSE [21] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [20] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirmation of vocation / laying on of hands on spirit arm)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [21]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑗)  -- [21] FFUSE | stoi := 𐑙 (Reintegration into apostolic succession / Holy Orders conferred)
  (.arrow 𐑗 𐑙 𐑚)  -- [22] AREV | pol := 𐑗 | reverse morphism — parity flip (Descent into covenant / Matrimony joining of two persons)
  -- FSPLIT [23] (gran := 𐑚) (Separation of two into one flesh / discernment of union) / FFUSE [25] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑳 𐑚 𐑙)  -- [24] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Paradox of earthly/heavenly bond / both/and state held)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [25]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [25] FFUSE | stoi := 𐑙 (Sacramental marriage / indissoluble union established)
  (.arrow 𐑠 𐑙 𐑱)  -- [26] IMSCRIB | gram := 𐑠 | identity — self-imscription (Self-recognition of divine image / inner Christ awakening)
  (.arrow 𐑱 𐑠 𐑭)  -- [27] CLINK | fid := 𐑱 | composition — regime coherence (Final chaining of all graces / complete sacramental economy)
  (.arrow 𐑭 𐑱 ⊙)  -- [28] IFIX | prot := 𐑭 | irreversible fixation — winding number (Permanent seal of the Spirit / indelible character recorded)
  (.arrow ⊙ 𐑭 𐑡)  -- [29] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Final affirmation / salvation secured)
  (.arrow 𐑡 ⊙ 𐑼)  -- [30] TANCH | top := 𐑡 | terminal object — connectivity boundary (Closure in the Pleroma / divine boundary containing the system)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def purpose_of_the_7_sacraments_true_arm : IGProtocol 𐑼 𐑡 :=
  (purpose_of_the_7_sacraments_protocol).restrictToEVALT

-- false arm
noncomputable def purpose_of_the_7_sacraments_false_arm : IGProtocol 𐑼 𐑡 :=
  (purpose_of_the_7_sacraments_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem purpose_of_the_7_sacraments_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
