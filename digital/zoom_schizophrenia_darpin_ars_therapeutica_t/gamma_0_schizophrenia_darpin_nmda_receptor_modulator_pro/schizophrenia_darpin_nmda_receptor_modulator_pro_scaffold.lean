-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → IMSCRIB → FFUSE → IFIX → AREV → EVALF → ENGAGR → TANCH
-- Class: Schizophrenia DARPin NMDA receptor modulator protein
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 6)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [4] CLINK     fid    := 𐑱               𐑚 → 𐑙  | composition — regime coherence
--   [5] IMSCRIB   gram   := 𐑠               𐑚 → 𐑙  | identity — self-imscription
--   [6] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [7] IFIX      prot   := 𐑭               𐑙 → 𐑗  | irreversible fixation — winding number
--   [8] AREV      pol    := 𐑗               𐑭 → 𐑖  | reverse morphism — parity flip
--   [9] EVALF     chir   := 𐑖               𐑗 → 𐑳  | evaluate-false — chirality check
--   [10] ENGAGR    stoi   := 𐑳               𐑖 → 𐑡  | engage paradox — B-state, both arms
--   [11] TANCH     top    := 𐑡               𐑳 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def schizophrenia_darpin_nmda_receptor_modulator_protein_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (the unbound DARPin exists in solution, awaiting encounter with the NMDA receptor)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (the DARPin diffuses toward and engages the glycine-binding site on the NMDA r...)
  -- FSPLIT [2] (gran := 𐑚) (upon initial contact, the receptor's glycine site undergoes conformational selection — it branches into either an open (active) or closed (inactive) state) / FFUSE [6] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (3 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (the receptor adopts the open conformation, allowing the DARPin to bind deeply...)
      .seq
        (.arrow 𐑱 𐑚 𐑙)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (the DARPin's ankyrin repeats sequentially engage with the receptor surface, e...)
        (.arrow 𐑠 𐑚 𐑙)  -- [5] IMSCRIB | gram := 𐑠 | identity — self-imscription (the DARPin's own folded structure is recognized by the receptor as a stable, ...)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [6]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [6] FFUSE | stoi := 𐑙 (the sequential binding events reconstitute the receptor into a single, stabilized open conformation — the original therapeutic target is achieved)
  (.arrow 𐑭 𐑙 𐑗)  -- [7] IFIX | prot := 𐑭 | irreversible fixation — winding number (the DARPin's amino acid sequence is permanently recorded in the genetic code,...)
  (.arrow 𐑗 𐑭 𐑖)  -- [8] AREV | pol := 𐑗 | reverse morphism — parity flip (the DARPin dissociates from the glycine site, returning the receptor to its d...)
  (.arrow 𐑖 𐑗 𐑳)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (if the receptor had adopted the closed conformation, the DARPin would fail to...)
  (.arrow 𐑳 𐑖 𐑡)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (in some cases, the DARPin may act as a partial agonist, simultaneously occupy...)
  (.arrow 𐑡 𐑳 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (the entire system is bounded by the NMDA receptor's glycine-binding cleft, wh...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def schizophrenia_darpin_nmda_receptor_modulator_protein_true_arm : IGProtocol 𐑼 𐑡 :=
  (schizophrenia_darpin_nmda_receptor_modulator_protein_protocol).restrictToEVALT

-- false arm
noncomputable def schizophrenia_darpin_nmda_receptor_modulator_protein_false_arm : IGProtocol 𐑼 𐑡 :=
  (schizophrenia_darpin_nmda_receptor_modulator_protein_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem schizophrenia_darpin_nmda_receptor_modulator_protein_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
