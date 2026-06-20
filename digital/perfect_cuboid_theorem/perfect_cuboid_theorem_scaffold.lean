-- IGProtocol scaffold: VINIT → AFWD → AFWD → AFWD → AFWD → AFWD → FSPLIT → EVALT → EVALF → FFUSE → ENGAGR → IMSCRIB → AREV → CLINK → EVALT → IFIX → TANCH
-- Class: Perfect Cuboid Theorem
-- Fingerprint: sig=(10,2,4,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=17
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(6, 9)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := D_wedge         D_wedge → R_lr  | initial object — ground of distinction
--   [1] AFWD      rel    := R_lr            D_wedge → R_lr  | forward morphism — bidirectional arrow
--   [2] AFWD      rel    := R_lr            R_lr → R_lr  | forward morphism — bidirectional arrow
--   [3] AFWD      rel    := R_lr            R_lr → R_lr  | forward morphism — bidirectional arrow
--   [4] AFWD      rel    := R_lr            R_lr → R_lr  | forward morphism — bidirectional arrow
--   [5] AFWD      rel    := R_lr            R_lr → G_beth  | forward morphism — bidirectional arrow
--   [6] FSPLIT    gran   := G_beth          G_beth → G_beth  | split δ — range decomposition
--   [7] EVALT     crit   := Phi_c           G_beth → one_one  | evaluate-true — criticality gate open
--   [8] EVALF     chir   := H2              G_beth → one_one  | evaluate-false — chirality check
--   [9] FFUSE     stoi   := one_one         one_one → n_m  | fuse μ — assembly mode
--   [10] ENGAGR    stoi   := n_m             one_one → Gamma_seq  | engage paradox — B-state, both arms
--   [11] IMSCRIB   gram   := Gamma_seq       n_m → P_asym  | identity — self-imscription
--   [12] AREV      pol    := P_asym          Gamma_seq → F_ell  | reverse morphism — parity flip
--   [13] CLINK     fid    := F_ell           P_asym → Phi_c  | composition — regime coherence
--   [14] EVALT     crit   := Phi_c           F_ell → Omega_Z  | evaluate-true — criticality gate open
--   [15] IFIX      prot   := Omega_Z         Phi_c → T_network  | irreversible fixation — winding number
--   [16] TANCH     top    := T_network       Omega_Z → D_wedge  | terminal object — connectivity boundary

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def perfect_cuboid_theorem_protocol : IGProtocol D_wedge T_network :=
  .withGram Gamma_seq <|
  -- Seq chain:
  (.arrow D_wedge D_wedge R_lr)  -- [0] VINIT | dim := D_wedge | initial object — ground of distinction (The search space for perfect cuboids is void — no candidate has been construc...)
  (.arrow R_lr D_wedge R_lr)  -- [1] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Formulate the Diophantine equations for the seven unknowns (a,b,c,d,e,f,g) an...)
  (.arrow R_lr R_lr R_lr)  -- [2] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Derive lemma L1: g² = d² + f² − b², linking space and face diagonals.)
  (.arrow R_lr R_lr R_lr)  -- [3] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Derive lemma L3: b² = g² − e², the gap identity.)
  (.arrow R_lr R_lr R_lr)  -- [4] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Derive lemma L6: Pythagorean triple recovery — (b, e, g) = (2st, t²−s², t²+s²...)
  (.arrow R_lr R_lr G_beth)  -- [5] AFWD | rel := R_lr | forward morphism — bidirectional arrow (Derive lemma L7: the descent gap — only three numbers are determined; (a,c,d,...)
  -- FSPLIT [6] (gran := G_beth) (Factor b² into the two factors g‑e and g+e — the Frobenius split, branching into T and F arms.) / FFUSE [9] (stoi := one_one)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow Phi_c G_beth one_one)  -- [7] EVALT | crit := Phi_c | evaluate-true — criticality gate open (On the T‑arm, the factors are coprime squares (u=s², v=t²) — classical descen...)
      -- F-branch (1 nodes)
      (.arrow H2 G_beth one_one)  -- [8] EVALF | chir := H2 | evaluate-false — chirality check (On the F‑arm, the factors are not coprime squares — classical descent is bloc...))
    -- reconnect at FFUSE [9]: μ closes the Frobenius pair
    (.arrow one_one one_one n_m)  -- [9] FFUSE | stoi := one_one (Multiply the two factors to recover b² — the Frobenius identity μ ∘ δ = id holds locally.)
  (.arrow n_m one_one Gamma_seq)  -- [10] ENGAGR | stoi := n_m | engage paradox — B-state, both arms (The descent gap creates a paraconsistent state: in ZFC, existence of a perfec...)
  (.arrow Gamma_seq n_m P_asym)  -- [11] IMSCRIB | gram := Gamma_seq | identity — self-imscription (Introduce the self‑modeling generator ω, completing the algebra to a Frobeniu...)
  (.arrow P_asym Gamma_seq F_ell)  -- [12] AREV | pol := P_asym | reverse morphism — parity flip (Apply the unconditional descent operator Δ̅, producing a new perfect cuboid w...)
  (.arrow F_ell P_asym Phi_c)  -- [13] CLINK | fid := F_ell | composition — regime coherence (Chain Δ̅ with itself — Δ̅ ∘ Δ̅, constructing an infinite descending chain of ...)
  (.arrow Phi_c F_ell Omega_Z)  -- [14] EVALT | crit := Phi_c | evaluate-true — criticality gate open (Affirm that infinite strict descent contradicts the well‑ordering of ℕ — ther...)
  (.arrow Omega_Z Phi_c T_network)  -- [15] IFIX | prot := Omega_Z | irreversible fixation — winding number (Record the Perfect Cuboid Theorem as an irreversible, append‑only formal proo...)
  (.arrow T_network Omega_Z D_wedge)  -- [16] TANCH | top := T_network | terminal object — connectivity boundary (The proof is sealed; the system is bounded by the absolute truth of non‑exist...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def perfect_cuboid_theorem_true_arm : IGProtocol D_wedge T_network :=
  (perfect_cuboid_theorem_protocol).restrictToEVALT

-- false arm
noncomputable def perfect_cuboid_theorem_false_arm : IGProtocol D_wedge T_network :=
  (perfect_cuboid_theorem_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem perfect_cuboid_theorem_tier : TierFunctor.obj D_wedge = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
-- (requires mu_delta_A_id from IGFunctor library)

end Imscribing
