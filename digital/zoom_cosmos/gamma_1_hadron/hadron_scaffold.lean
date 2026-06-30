-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → CLINK → EVALF → AREV → FFUSE → ENGAGR → IMSCRIB → IFIX → TANCH
-- Class: Hadron
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(2, 7)]

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
--   [5] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [6] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [7] FFUSE     stoi   := 𐑙               𐑙 → 𐑳  | fuse μ — assembly mode
--   [8] ENGAGR    stoi   := 𐑳               𐑙 → 𐑠  | engage paradox — B-state, both arms
--   [9] IMSCRIB   gram   := 𐑠               𐑳 → 𐑭  | identity — self-imscription
--   [10] IFIX      prot   := 𐑭               𐑠 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def hadron_protocol : IGProtocol 𐑼 𐑡 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (Initialize the bare parton state in the asymptotic vacuum before any interact...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Evolve the state forward along the renormalization group flow to the hard ult...)
  -- FSPLIT [2] (gran := 𐑚) (Branch the high energy parent parton into a lower energy daughter parton on the true arm and a radiated gluon on the false arm.) / FFUSE [7] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (2 nodes)
      .seq
        (.arrow ⊙ 𐑚 𐑙)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (Affirm the perturbative validity of the daughter parton as it remains in the ...)
        (.arrow 𐑱 𐑚 𐑙)  -- [4] CLINK | fid := 𐑱 | composition — regime coherence (Compose the next sequential DGLAP splitting kernel to continue the parton sho...)
      -- F-branch (2 nodes)
      .seq
        (.arrow 𐑖 𐑚 𐑙)  -- [5] EVALF | chir := 𐑖 | evaluate-false — chirality check (Negate the perturbative validity of the radiated gluon as it softens and ente...)
        (.arrow 𐑗 𐑚 𐑙)  -- [6] AREV | pol := 𐑗 | reverse morphism — parity flip (Reverse the momentum scale of the gluon descending into the nonperturbative i...))
    -- reconnect at FFUSE [7]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑳)  -- [7] FFUSE | stoi := 𐑙 (Recombine the lower energy daughter parton and the radiated gluon to recover the original high energy parent parton.)
  (.arrow 𐑳 𐑙 𐑠)  -- [8] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (Enter the paradice of quark hadron duality holding both the partonic and hadr...)
  (.arrow 𐑠 𐑳 𐑭)  -- [9] IMSCRIB | gram := 𐑠 | identity — self-imscription (Recognize the self identifying color singlet hadron eigenstate as a complete ...)
  (.arrow 𐑭 𐑠 𐑡)  -- [10] IFIX | prot := 𐑭 | irreversible fixation — winding number (Record the deep inelastic scattering cross section as a permanent parton dist...)
  (.arrow 𐑡 𐑭 𐑼)  -- [11] TANCH | top := 𐑡 | terminal object — connectivity boundary (Seal the color singlet confinement boundary completing the closed hadronic sy...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def hadron_true_arm : IGProtocol 𐑼 𐑡 :=
  (hadron_protocol).restrictToEVALT

-- false arm
noncomputable def hadron_false_arm : IGProtocol 𐑼 𐑡 :=
  (hadron_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem hadron_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
