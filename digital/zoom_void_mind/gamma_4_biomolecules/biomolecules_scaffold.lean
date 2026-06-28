-- IGProtocol scaffold: VINIT → AFWD → CLINK → IMSCRIB → FSPLIT → EVALT → AFWD → CLINK → FSPLIT → EVALT → FFUSE → CLINK → IMSCRIB → AFWD → CLINK → TANCH → FSPLIT → EVALT → EVALF → CLINK → IMSCRIB → ENGAGR → AREV → AFWD → CLINK → IFIX → TANCH
-- Class: biomolecules
-- Fingerprint: sig=(17,4,5,1)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=27
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(8, 10)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑱  | forward morphism — bidirectional arrow
--   [2] CLINK     fid    := 𐑱               𐑾 → 𐑠  | composition — regime coherence
--   [3] IMSCRIB   gram   := 𐑠               𐑱 → 𐑚  | identity — self-imscription
--   [4] FSPLIT    gran   := 𐑚               𐑠 → ⊙  | split δ — range decomposition
--   [5] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [6] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [7] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [8] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [9] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [10] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [11] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [12] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [13] AFWD      rel    := 𐑾               𐑠 → 𐑱  | forward morphism — bidirectional arrow
--   [14] CLINK     fid    := 𐑱               𐑾 → 𐑡  | composition — regime coherence
--   [15] TANCH     top    := 𐑡               𐑱 → 𐑚  | terminal object — connectivity boundary
--   [16] FSPLIT    gran   := 𐑚               𐑡 → ⊙  | split δ — range decomposition
--   [17] EVALT     crit   := ⊙               𐑚 → 𐑖  | evaluate-true — criticality gate open
--   [18] EVALF     chir   := 𐑖               ⊙ → 𐑱  | evaluate-false — chirality check
--   [19] CLINK     fid    := 𐑱               𐑖 → 𐑠  | composition — regime coherence
--   [20] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [21] ENGAGR    stoi   := 𐑳               𐑠 → 𐑗  | engage paradox — B-state, both arms
--   [22] AREV      pol    := 𐑗               𐑳 → 𐑾  | reverse morphism — parity flip
--   [23] AFWD      rel    := 𐑾               𐑗 → 𐑱  | forward morphism — bidirectional arrow
--   [24] CLINK     fid    := 𐑱               𐑾 → 𐑭  | composition — regime coherence
--   [25] IFIX      prot   := 𐑭               𐑱 → 𐑡  | irreversible fixation — winding number
--   [26] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def biomolecules_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (primordial chemical chaos before biomolecular organization)
  (.arrow 𐑾 𐑼 𐑱)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (synthesis of basic molecular building blocks from prebiotic chemicals)
  (.arrow 𐑱 𐑾 𐑠)  -- [2] CLINK | fid := 𐑱 | composition — regime coherence (formation of covalent bonds creating first organic compounds)
  (.arrow 𐑠 𐑱 𐑚)  -- [3] IMSCRIB | gram := 𐑠 | identity — self-imscription (emergence of self-catalyzing molecular systems)
  (.arrow 𐑚 𐑠 ⊙)  -- [4] FSPLIT | gran := 𐑚 | split δ — range decomposition (RNA World splitting information storage from catalysis functions)
  (.arrow ⊙ 𐑚 𐑾)  -- [5] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful formation of first functional enzymes)
  (.arrow 𐑾 ⊙ 𐑱)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (expansion of metabolic pathways and biosynthetic networks)
  (.arrow 𐑱 𐑾 𐑚)  -- [7] CLINK | fid := 𐑱 | composition — regime coherence (peptide bond formation linking amino acids into proteins)
  -- FSPLIT [8] (gran := 𐑚) (DNA/RNA split with DNA specializing in stable information storage) / FFUSE [10] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [9] EVALT | crit := ⊙ | evaluate-true — criticality gate open (ribosome-mediated translation of genetic code to proteins)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [10]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑱)  -- [10] FFUSE | stoi := 𐑙 (ribosome fusing amino acids into functional proteins from mRNA template)
  (.arrow 𐑱 𐑙 𐑠)  -- [11] CLINK | fid := 𐑱 | composition — regime coherence (protein folding creating tertiary and quaternary structures)
  (.arrow 𐑠 𐑱 𐑾)  -- [12] IMSCRIB | gram := 𐑠 | identity — self-imscription (protein-protein interactions creating cellular machines)
  (.arrow 𐑾 𐑠 𐑱)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (evolution of compartmentalized organelles)
  (.arrow 𐑱 𐑾 𐑡)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (membrane phospholipid bilayer formation)
  (.arrow 𐑡 𐑱 𐑚)  -- [15] TANCH | top := 𐑡 | terminal object — connectivity boundary (cell membrane establishment creating protected internal environment)
  (.arrow 𐑚 𐑡 ⊙)  -- [16] FSPLIT | gran := 𐑚 | split δ — range decomposition (metabolic pathway branching into catabolic and anabolic directions)
  (.arrow ⊙ 𐑚 𐑖)  -- [17] EVALT | crit := ⊙ | evaluate-true — criticality gate open (successful energy generation via ATP synthesis)
  (.arrow 𐑖 ⊙ 𐑱)  -- [18] EVALF | chir := 𐑖 | evaluate-false — chirality check (failed reactions prevented by enzymatic regulation)
  (.arrow 𐑱 𐑖 𐑠)  -- [19] CLINK | fid := 𐑱 | composition — regime coherence (nucleic acid synthesis linking nucleotides into DNA/RNA chains)
  (.arrow 𐑠 𐑱 𐑳)  -- [20] IMSCRIB | gram := 𐑠 | identity — self-imscription (DNA methylation patterns for gene expression regulation)
  (.arrow 𐑳 𐑠 𐑗)  -- [21] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (prions maintaining both normal and infectious conformations)
  (.arrow 𐑗 𐑳 𐑾)  -- [22] AREV | pol := 𐑗 | reverse morphism — parity flip (waste processing and molecular recycling pathways)
  (.arrow 𐑾 𐑗 𐑱)  -- [23] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (cellular differentiation and tissue specialization)
  (.arrow 𐑱 𐑾 𐑭)  -- [24] CLINK | fid := 𐑱 | composition — regime coherence (extracellular matrix formation connecting cells)
  (.arrow 𐑭 𐑱 𐑡)  -- [25] IFIX | prot := 𐑭 | irreversible fixation — winding number (permanent genetic modifications through evolution)
  (.arrow 𐑡 𐑭 𐑼)  -- [26] TANCH | top := 𐑡 | terminal object — connectivity boundary (organism death and final molecular degradation)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def biomolecules_true_arm : IGProtocol 𐑼 𐑡 :=
  (biomolecules_protocol).restrictToEVALT

-- false arm
noncomputable def biomolecules_false_arm : IGProtocol 𐑼 𐑡 :=
  (biomolecules_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem biomolecules_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
