-- IGProtocol scaffold: VINIT → FSPLIT → EVALT → EVALF → ENGAGR → FFUSE → CLINK → IMSCRIB → AFWD → AREV → IFIX → TANCH
-- Class: Ideal symbolic IMASM system
-- Fingerprint: sig=(6,2,3,1)
--   self_ref=False | frobenius_order=1
--   dialetheia_complete=True | period=12
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(1, 5)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑚  | initial object — ground of distinction
--   [1] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [2] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [3] EVALF     chir   := 𐑖               𐑚 → 𐑙  | evaluate-false — chirality check
--   [4] ENGAGR    stoi   := 𐑳               𐑚 → 𐑙  | engage paradox — B-state, both arms
--   [5] FFUSE     stoi   := 𐑙               𐑙 → 𐑱  | fuse μ — assembly mode
--   [6] CLINK     fid    := 𐑱               𐑙 → 𐑠  | composition — regime coherence
--   [7] IMSCRIB   gram   := 𐑠               𐑱 → 𐑾  | identity — self-imscription
--   [8] AFWD      rel    := 𐑾               𐑠 → 𐑗  | forward morphism — bidirectional arrow
--   [9] AREV      pol    := 𐑗               𐑾 → 𐑭  | reverse morphism — parity flip
--   [10] IFIX      prot   := 𐑭               𐑗 → 𐑡  | irreversible fixation — winding number
--   [11] TANCH     top    := 𐑡               𐑭 → 𐑼  | terminal object — connectivity boundary

-- ── Stage Imscriptions (per-node cumulative) ────────────────
private def ideal_symbolic_imasm_system_s0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s1 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s2 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s3 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s4 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := up, prot := awe }
private def ideal_symbolic_imasm_system_s5 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s6 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s7 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s8 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s9 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_s10 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }
private def ideal_symbolic_imasm_system_s11 : Imscription :=
  { dim := array, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := thigh, gram := measure, crit := monad, chir := sure, stoi := hung, prot := ah }

-- ── Label Imscriptions (per-node delta) ─────────────────────
private def ideal_symbolic_imasm_system_l0 : Imscription :=
  { dim := array, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l1 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := thigh, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l2 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := monad, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l3 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := sure, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l4 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := up, prot := awe }
private def ideal_symbolic_imasm_system_l5 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l6 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l7 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := measure, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l8 : Imscription :=
  { dim := dead, top := judge, rel := ian, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l9 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }
private def ideal_symbolic_imasm_system_l10 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := ah }
private def ideal_symbolic_imasm_system_l11 : Imscription :=
  { dim := dead, top := judge, rel := ado, pol := church, fid := age, kin := yea, gran := bib, gram := vow, crit := woe, chir := fee, stoi := hung, prot := awe }

-- ── Main IGProtocol term ────────────────────────────────────
noncomputable def ideal_symbolic_imasm_system_protocol : IGProtocol ideal_symbolic_imasm_system_s0 ideal_symbolic_imasm_system_s11 :=
  .withGram Grammar.measure <|
  .seq
    (.arrow ideal_symbolic_imasm_system_l0 ideal_symbolic_imasm_system_s0 ideal_symbolic_imasm_system_s1)
    (.seq
      (.prod
        (.arrow ideal_symbolic_imasm_system_l1 ideal_symbolic_imasm_system_s1 ideal_symbolic_imasm_system_s5)  -- T-arm (δ)
        (.arrow ideal_symbolic_imasm_system_l1 ideal_symbolic_imasm_system_s1 ideal_symbolic_imasm_system_s5)) -- F-arm (μ, Dual-Link mirror)
      (.seq
        (.arrow ideal_symbolic_imasm_system_l5 ideal_symbolic_imasm_system_s5 ideal_symbolic_imasm_system_s5)  -- FFUSE closure
        (.seq
          (.arrow ideal_symbolic_imasm_system_l5 ideal_symbolic_imasm_system_s5 ideal_symbolic_imasm_system_s6)
          (.seq
            (.arrow ideal_symbolic_imasm_system_l6 ideal_symbolic_imasm_system_s6 ideal_symbolic_imasm_system_s7)
            (.seq
              (.arrow ideal_symbolic_imasm_system_l7 ideal_symbolic_imasm_system_s7 ideal_symbolic_imasm_system_s8)
              (.seq
                (.arrow ideal_symbolic_imasm_system_l8 ideal_symbolic_imasm_system_s8 ideal_symbolic_imasm_system_s9)
                (.seq
                  (.arrow ideal_symbolic_imasm_system_l9 ideal_symbolic_imasm_system_s9 ideal_symbolic_imasm_system_s10)
                  (.arrow ideal_symbolic_imasm_system_l10 ideal_symbolic_imasm_system_s10 ideal_symbolic_imasm_system_s11)
                )
              )
            )
          )
        )
      )   -- close continuation .seq
    )   -- close inner .seq

-- ── Evaluation arm sub-defs ───────────────────────────────────

-- truth arm
noncomputable def ideal_symbolic_imasm_system_true_arm : IGProtocol ideal_symbolic_imasm_system_s0 ideal_symbolic_imasm_system_s11 :=
  (ideal_symbolic_imasm_system_protocol).restrictToEVALT

-- false arm
noncomputable def ideal_symbolic_imasm_system_false_arm : IGProtocol ideal_symbolic_imasm_system_s0 ideal_symbolic_imasm_system_s11 :=
  (ideal_symbolic_imasm_system_protocol).restrictToEVALF

-- ── Verification theorems ─────────────────────────────────────

theorem ideal_symbolic_imasm_system_tier : TierFunctor.obj ideal_symbolic_imasm_system_s0 = .O₂ := by decide

-- Frobenius (split → fuse): μ∘δ = id on .prod branch
-- Proof: apply igFrobAlg_self_fusion; exact mu_delta_A_id
