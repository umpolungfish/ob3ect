-- IGProtocol scaffold: VINIT → CLINK → FSPLIT → EVALF → EVALT → FFUSE → IMSCRIB → ENGAGR → AFWD → FSPLIT → AFWD → FFUSE → IFIX → CLINK → IMSCRIB → AREV → IFIX → TANCH
-- Class: Operation of Rohnoc Codex
-- Fingerprint: sig=(9,4,3,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=18
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 5), (9, 11)]

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
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑠  | fuse μ — assembly mode
--   [6] IMSCRIB   gram   := 𐑠               𐑙 → 𐑳  | identity — self-imscription
--   [7] ENGAGR    stoi   := 𐑳               𐑠 → 𐑾  | engage paradox — B-state, both arms
--   [8] AFWD      rel    := 𐑾               𐑳 → 𐑚  | forward morphism — bidirectional arrow
--   [9] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [10] AFWD      rel    := 𐑾               𐑚 → 𐑙  | forward morphism — bidirectional arrow
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑱  | irreversible fixation — winding number
--   [13] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [14] IMSCRIB   gram   := 𐑠               𐑱 → 𐑗  | identity — self-imscription
--   [15] AREV      pol    := 𐑗               𐑠 → 𐑭  | reverse morphism — parity flip
--   [16] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [17] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def operation_of_rohnoc_codex_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑱)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Python script initiates an empty Image placeholder.)
  (.arrow 𐑱 𐑼 𐑚)  -- [1] CLINK | fid := 𐑱 | composition — regime coherence (Image.open() is called, linking the file path to the object.)
  -- FSPLIT [2] (gran := 𐑚) (The system branches into the internal registry to find a matching plugin.) / FFUSE [5] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [4] EVALT | crit := ⊙ | evaluate-true — criticality gate open (JpegImagePlugin accepts the prefix (found JFIF marker).)
      -- F-branch (1 nodes)
      (.arrow 𐑖 𐑚 𐑙)  -- [3] EVALF | chir := 𐑖 | evaluate-false — chirality check (BmpImagePlugin rejects the prefix (not 'BM').))
    -- reconnect at FFUSE [5]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑠)  -- [5] FFUSE | stoi := 𐑙 (The registry returns the specific JpegImageFile class to the caller.)
  (.arrow 𐑠 𐑙 𐑳)  -- [6] IMSCRIB | gram := 𐑠 | identity — self-imscription (The object recognizes itself as a JPEG format with specific dimensions.)
  (.arrow 𐑳 𐑠 𐑾)  -- [7] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The image is in a 'lazy' state; info is populated but pixels are not loaded.)
  (.arrow 𐑾 𐑳 𐑚)  -- [8] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Image.load() is triggered by a request for pixel data.)
  -- FSPLIT [9] (gran := 𐑚) (The decoder splits the stream into Huffman-coded blocks.) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow 𐑾 𐑚 𐑙)  -- [10] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (IDCT and color conversion transform frequency data to spatial pixels.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [11] FFUSE | stoi := 𐑙 (Blocks are reconstituted into a continuous ImagingCore memory buffer.)
  (.arrow 𐑭 𐑙 𐑱)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (EXIF metadata is permanently extracted and fixed into the .info dictionary.)
  (.arrow 𐑱 𐑭 𐑠)  -- [13] CLINK | fid := 𐑱 | composition — regime coherence (A filter (e.g., ImageFilter.BLUR) is composed onto the pixel data.)
  (.arrow 𐑠 𐑱 𐑗)  -- [14] IMSCRIB | gram := 𐑠 | identity — self-imscription (The filtered image creates a new identity to preserve the original.)
  (.arrow 𐑗 𐑠 𐑭)  -- [15] AREV | pol := 𐑗 | reverse morphism — parity flip (Image.save() is called to descend from pixels back to a byte stream.)
  (.arrow 𐑭 𐑗 𐑡)  -- [16] IFIX | prot := 𐑭 | irreversible fixation — winding number (The file is written to disk, creating an irreversible physical record.)
  (.arrow 𐑡 𐑭 𐑼)  -- [17] TANCH | top := 𐑡 | terminal object — connectivity boundary (The file pointer is closed and memory is deallocated.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def operation_of_rohnoc_codex_true_arm : IGProtocol 𐑼 𐑡 :=
  (operation_of_rohnoc_codex_protocol).restrictToEVALT

-- false arm
noncomputable def operation_of_rohnoc_codex_false_arm : IGProtocol 𐑼 𐑡 :=
  (operation_of_rohnoc_codex_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem operation_of_rohnoc_codex_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
