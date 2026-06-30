-- IGProtocol scaffold: VINIT → AFWD → CLINK → AFWD → CLINK → FSPLIT → EVALT → AFWD → EVALF → AREV → FFUSE → ENGAGR → IFIX → IMSCRIB → TANCH
-- Class: Macromolecule
-- Fingerprint: sig=(9,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=15
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(5, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [3] AFWD      rel    := 𐑾               𐑱 → 𐑱  | forward morphism — bidirectional arrow
--   [4] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [5] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [6] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [7] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [8] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [9] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [11] ENGAGR    stoi   := 𐑳               𐑙 → 𐑭  | engage paradox — B-state, both arms
--   [12] IFIX      prot   := 𐑭               𐑳 → 𐑠  | irreversible fixation — winding number
--   [13] IMSCRIB   gram   := 𐑠               𐑭 → 𐑡  | identity — self-imscription
--   [14] TANCH     top    := 𐑡               𐑠 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def macromolecule_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the unactivated monomer pool in the aqueous solvent.)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Activate the monomer by attaching a high energy leaving group.)
  (.arrow 𐑱 𐑾 𐑾)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (Chain the activated monomer to the growing polymer backbone.)
  (.arrow 𐑾 𐑱 𐑱)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Propagate the polymer chain through sequential monomer addition.)
  (.arrow 𐑱 𐑾 𐑚)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Complete the primary sequence synthesis of the linear macromolecule.)
  -- FSPLIT [5] (gran := 𐑚) (Dissociate the multimeric complex into Monomeric subunit A and Monomeric subunit B.) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [6] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Fold Monomeric subunit A into the native functional conformation.)
        (.arrow 𐑾 𐑚 𐑙)  -- [7] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Expose the binding interface of Monomeric subunit A to the solvent.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [8] EVALF | chir := 𐑖 | evaluate-false — chirality check (Misfold Monomeric subunit B into an aggregated nonfunctional state.)
        (.arrow 𐑗 𐑚 𐑙)  -- [9] AREV | pol := 𐑗 | reverse morphism — parity flip (Bury the hydrophobic core of Monomeric subunit B via reverse conformational c...))
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [10] FFUSE | stoi := 𐑙 (Reassociate Monomeric subunit A and Monomeric subunit B to reconstitute the multimeric protein complex.)
  (.arrow 𐑳 𐑙 𐑭)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Suspend the reconstituted complex in the molten globule phase holding both st...)
  (.arrow 𐑭 𐑳 𐑠)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (Lock the quaternary structure via irreversible disulfide crosslinking.)
  (.arrow 𐑠 𐑭 𐑡)  -- [13] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize the native state energy minimum to maintain structural homeostasis.)
  (.arrow 𐑡 𐑠 𐑼)  -- [14] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the thermodynamic envelope defining the final macromolecular boundary.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def macromolecule_true_arm : IGProtocol 𐑼 𐑡 :=
  (macromolecule_protocol).restrictToEVALT

-- false arm
noncomputable def macromolecule_false_arm : IGProtocol 𐑼 𐑡 :=
  (macromolecule_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem macromolecule_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
