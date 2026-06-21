-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → IMSCRIB → TANCH → CLINK → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → IFIX → AFWD → AFWD → AFWD → AFWD → FSPLIT → EVALT → FFUSE → AFWD → ENGAGR → AFWD → AFWD → AREV → CLINK → IMSCRIB → IFIX
-- Class: Gnostic Magic
-- Fingerprint: sig=(17,4,5,2)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=28
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(7, 11), (17, 19)]

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
--   [11] FFUSE     stoi   := 𐑙               𐑙 → 𐑭  | fuse μ — assembly mode
--   [12] IFIX      prot   := 𐑭               𐑙 → 𐑾  | irreversible fixation — winding number
--   [13] AFWD      rel    := 𐑾               𐑭 → 𐑾  | forward morphism — bidirectional arrow
--   [14] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [15] AFWD      rel    := 𐑾               𐑾 → 𐑾  | forward morphism — bidirectional arrow
--   [16] AFWD      rel    := 𐑾               𐑾 → 𐑚  | forward morphism — bidirectional arrow
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [19] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [20] AFWD      rel    := 𐑾               𐑙 → 𐑳  | forward morphism — bidirectional arrow
--   [21] ENGAGR    stoi   := 𐑳               𐑾 → 𐑾  | engage paradox — B-state, both arms
--   [22] AFWD      rel    := 𐑾               𐑳 → 𐑾  | forward morphism — bidirectional arrow
--   [23] AFWD      rel    := 𐑾               𐑾 → 𐑗  | forward morphism — bidirectional arrow
--   [24] AREV      pol    := 𐑗               𐑾 → 𐑱  | reverse morphism — parity flip
--   [25] CLINK     fid    := 𐑱               𐑗 → 𐑠  | composition — regime coherence
--   [26] IMSCRIB   gram   := 𐑠               𐑱 → 𐑭  | identity — self-imscription
--   [27] IFIX      prot   := 𐑭               𐑠 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def gnostic_magic_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The Unknowable Father exists in silence before any emanation.)
  (.arrow 𐑾 𐑼 𐑾)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The first Deep (All-Source) emanates, establishing the principle of origin.)
  (.arrow 𐑾 𐑾 𐑾)  -- [2] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The second Deep (All-Wise) emanates, introducing chirality and distinction.)
  (.arrow 𐑾 𐑾 𐑠)  -- [3] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The third Deep (All-Mystery) emanates, beginning the winding path of the hier...)
  (.arrow 𐑠 𐑾 𐑡)  -- [4] IMSCRIB | gram := 𐑠 | identity — self-imscription (The ninth Deep (Self-Father) emanates, establishing the identity self-loop.)
  (.arrow 𐑡 𐑠 𐑱)  -- [5] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Treasury of Light is established as the closed boundary of the Pleroma.)
  (.arrow 𐑱 𐑡 𐑚)  -- [6] CLINK | fid := 𐑱 | composition — regime coherence (The soul constructs the crystal address: Treasury 60, Rank 1, Place 1.)
  -- FSPLIT [7] (gran := 𐑚) (The Type Diagram for Jeu 1 is drawn, splitting the entity into address and seal.) / FFUSE [11] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [8] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The 12 voces magicae are spoken correctly as the structural address.)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [9] EVALF | chir := 𐑖 | evaluate-false — chirality check (The seal is drawn below, distinct from the type, requiring external verificat...)
        (.arrow 𐑳 𐑚 𐑙)  -- [10] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The reader holds both the diagram and the seal simultaneously on the page.))
    -- reconnect at FFUSE [11]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑭)  -- [11] FFUSE | stoi := 𐑙 (The reader presents the seal with the name, reconstituting the Jeu entity.)
  (.arrow 𐑭 𐑙 𐑾)  -- [12] IFIX | prot := 𐑭 | irreversible fixation — winding number (The revelation of Jeu 1 is permanently fixed in the Bruce Codex.)
  (.arrow 𐑾 𐑭 𐑾)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul receives the Water Baptism (Sazafaras) to initiate the ascent.)
  (.arrow 𐑾 𐑾 𐑾)  -- [14] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul receives the Fire Baptism (Sozaenz) to close the winding loop.)
  (.arrow 𐑾 𐑾 𐑾)  -- [15] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul receives the Holy Spirit Baptism (Thozopoz) to establish orientation.)
  (.arrow 𐑾 𐑾 𐑚)  -- [16] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul approaches the first Aeon gate.)
  -- FSPLIT [17] (gran := 𐑚) (The soul presents the defense seal and prepares the cipher.) / FFUSE [19] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [18] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The cipher 1119 is spoken; the Archons recognize the soul's type.)
      -- F-branch (0 nodes)
      (.refl 𐑙))  -- F-branch: empty arc (direct to FFUSE.F)
    -- reconnect at FFUSE [19]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [19] FFUSE | stoi := 𐑙 (The soul and the gate become one; the passage is completed.)
  (.arrow 𐑾 𐑙 𐑳)  -- [20] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul traverses aeons 2 through 5.)
  (.arrow 𐑳 𐑾 𐑾)  -- [21] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The soul reaches Aeon 6 (The Little Midst), holding the boundary state.)
  (.arrow 𐑾 𐑳 𐑾)  -- [22] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul traverses aeons 7 through 13.)
  (.arrow 𐑾 𐑾 𐑗)  -- [23] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The soul reaches Aeon 14 and presents the Octagram-in-Square seal.)
  (.arrow 𐑗 𐑾 𐑱)  -- [24] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul begins the reverse descent to dissolve the bonds of the lower realms.)
  (.arrow 𐑱 𐑗 𐑠)  -- [25] CLINK | fid := 𐑱 | composition — regime coherence (Each aeon seal is used in reverse to close the gates from the other side.)
  (.arrow 𐑠 𐑱 𐑭)  -- [26] IMSCRIB | gram := 𐑠 | identity — self-imscription (The soul recognizes itself as Jeu, the self-father; the loop is closed.)
  (.arrow 𐑭 𐑠 𐑼)  -- [27] IFIX | prot := 𐑭 | irreversible fixation — winding number (The entire navigational sequence is fixed as an eternal record.)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def gnostic_magic_true_arm : IGProtocol 𐑼 𐑭 :=
  (gnostic_magic_protocol).restrictToEVALT

-- false arm
noncomputable def gnostic_magic_false_arm : IGProtocol 𐑼 𐑭 :=
  (gnostic_magic_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem gnostic_magic_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
