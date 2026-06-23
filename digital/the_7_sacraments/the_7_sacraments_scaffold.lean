-- IGProtocol scaffold: VINIT → AFWD → FSPLIT → EVALT → IFIX → CLINK → AFWD → EVALT → IFIX → CLINK → IMSCRIB → ENGAGR → EVALT → AFWD → CLINK → AREV → EVALF → FSPLIT → AREV → EVALT → FFUSE → AFWD → CLINK → AFWD → FSPLIT → EVALT → IFIX → AFWD → CLINK → FSPLIT → EVALT → AFWD → CLINK → AFWD → AREV → AFWD → EVALT → AFWD → AREV → TANCH → IMSCRIB → CLINK → IFIX
-- Class: The 7 Sacraments
-- Fingerprint: sig=(25,5,9,4)
--   self_ref=False | frobenius_order=3
--   dialetheia_complete=True | period=43
-- Expected tier: O₂
-- FSPLIT/FFUSE pairs: [(17, 20)]

import Imscribing.IGMorphism
import Imscribing.IGFunctor

namespace Imscribing
open Primitives Frobenius IGProtocol
open Dimensionality Topology Relational Polarity Grammar
     Fidelity KineticChar Granularity Criticality Protection Stoichiometry Chirality

-- ── Token → IG field mapping ──────────────────────────────────────────────
--   [0] VINIT     dim    := 𐑼               𐑼 → 𐑾  | initial object — ground of distinction
--   [1] AFWD      rel    := 𐑾               𐑼 → 𐑚  | forward morphism — bidirectional arrow
--   [2] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [3] EVALT     crit   := ⊙               𐑚 → 𐑭  | evaluate-true — criticality gate open
--   [4] IFIX      prot   := 𐑭               ⊙ → 𐑱  | irreversible fixation — winding number
--   [5] CLINK     fid    := 𐑱               𐑭 → 𐑾  | composition — regime coherence
--   [6] AFWD      rel    := 𐑾               𐑱 → ⊙  | forward morphism — bidirectional arrow
--   [7] EVALT     crit   := ⊙               𐑾 → 𐑭  | evaluate-true — criticality gate open
--   [8] IFIX      prot   := 𐑭               ⊙ → 𐑱  | irreversible fixation — winding number
--   [9] CLINK     fid    := 𐑱               𐑭 → 𐑠  | composition — regime coherence
--   [10] IMSCRIB   gram   := 𐑠               𐑱 → 𐑳  | identity — self-imscription
--   [11] ENGAGR    stoi   := 𐑳               𐑠 → ⊙  | engage paradox — B-state, both arms
--   [12] EVALT     crit   := ⊙               𐑳 → 𐑾  | evaluate-true — criticality gate open
--   [13] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [14] CLINK     fid    := 𐑱               𐑾 → 𐑗  | composition — regime coherence
--   [15] AREV      pol    := 𐑗               𐑱 → 𐑖  | reverse morphism — parity flip
--   [16] EVALF     chir   := 𐑖               𐑗 → 𐑚  | evaluate-false — chirality check
--   [17] FSPLIT    gran   := 𐑚               𐑚 → 𐑚  | split δ — range decomposition
--   [18] AREV      pol    := 𐑗               𐑚 → 𐑙  | reverse morphism — parity flip
--   [19] EVALT     crit   := ⊙               𐑚 → 𐑙  | evaluate-true — criticality gate open
--   [20] FFUSE     stoi   := 𐑙               𐑙 → 𐑾  | fuse μ — assembly mode
--   [21] AFWD      rel    := 𐑾               𐑙 → 𐑱  | forward morphism — bidirectional arrow
--   [22] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [23] AFWD      rel    := 𐑾               𐑱 → 𐑚  | forward morphism — bidirectional arrow
--   [24] FSPLIT    gran   := 𐑚               𐑾 → ⊙  | split δ — range decomposition
--   [25] EVALT     crit   := ⊙               𐑚 → 𐑭  | evaluate-true — criticality gate open
--   [26] IFIX      prot   := 𐑭               ⊙ → 𐑾  | irreversible fixation — winding number
--   [27] AFWD      rel    := 𐑾               𐑭 → 𐑱  | forward morphism — bidirectional arrow
--   [28] CLINK     fid    := 𐑱               𐑾 → 𐑚  | composition — regime coherence
--   [29] FSPLIT    gran   := 𐑚               𐑱 → ⊙  | split δ — range decomposition
--   [30] EVALT     crit   := ⊙               𐑚 → 𐑾  | evaluate-true — criticality gate open
--   [31] AFWD      rel    := 𐑾               ⊙ → 𐑱  | forward morphism — bidirectional arrow
--   [32] CLINK     fid    := 𐑱               𐑾 → 𐑾  | composition — regime coherence
--   [33] AFWD      rel    := 𐑾               𐑱 → 𐑗  | forward morphism — bidirectional arrow
--   [34] AREV      pol    := 𐑗               𐑾 → 𐑾  | reverse morphism — parity flip
--   [35] AFWD      rel    := 𐑾               𐑗 → ⊙  | forward morphism — bidirectional arrow
--   [36] EVALT     crit   := ⊙               𐑾 → 𐑾  | evaluate-true — criticality gate open
--   [37] AFWD      rel    := 𐑾               ⊙ → 𐑗  | forward morphism — bidirectional arrow
--   [38] AREV      pol    := 𐑗               𐑾 → 𐑡  | reverse morphism — parity flip
--   [39] TANCH     top    := 𐑡               𐑗 → 𐑠  | terminal object — connectivity boundary
--   [40] IMSCRIB   gram   := 𐑠               𐑡 → 𐑱  | identity — self-imscription
--   [41] CLINK     fid    := 𐑱               𐑠 → 𐑭  | composition — regime coherence
--   [42] IFIX      prot   := 𐑭               𐑱 → 𐑼  | irreversible fixation — winding number

-- ── Main IGProtocol term ────────────────────────────────────────────────────

noncomputable def the_7_sacraments_protocol : IGProtocol 𐑼 𐑭 :=
  .withGram 𐑠 <|
  -- Seq chain:
  (.arrow 𐑼 𐑼 𐑾)  -- [0] VINIT | dim := 𐑼 | initial object — ground of distinction (The unbaptized soul emerges from the void — no grace, no incorporation, no sa...)
  (.arrow 𐑾 𐑼 𐑚)  -- [1] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The intention to baptize moves forward; the priest approaches with water and ...)
  (.arrow 𐑚 𐑾 ⊙)  -- [2] FSPLIT | gran := 𐑚 | split δ — range decomposition (Baptism splits the soul into two branches: [baptized/incorporated] and [unbap...)
  (.arrow ⊙ 𐑚 𐑭)  -- [3] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The baptismal form and matter are valid; the words are spoken correctly; the ...)
  (.arrow 𐑭 ⊙ 𐑱)  -- [4] IFIX | prot := 𐑭 | irreversible fixation — winding number (The indelible character of Baptism is imprinted on the soul — permanent, irre...)
  (.arrow 𐑱 𐑭 𐑾)  -- [5] CLINK | fid := 𐑱 | composition — regime coherence (The baptized soul is now linked to the next sacrament in the chain.)
  (.arrow 𐑾 𐑱 ⊙)  -- [6] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Confirmation approaches; the bishop anoints with chrism; the Holy Spirit is i...)
  (.arrow ⊙ 𐑾 𐑭)  -- [7] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The chrism is genuine; the words are correct; the intention is pastoral; grac...)
  (.arrow 𐑭 ⊙ 𐑱)  -- [8] IFIX | prot := 𐑭 | irreversible fixation — winding number (The indelible character of Confirmation is imprinted — a second permanent mar...)
  (.arrow 𐑱 𐑭 𐑠)  -- [9] CLINK | fid := 𐑱 | composition — regime coherence (The confirmed soul advances to the Eucharist.)
  (.arrow 𐑠 𐑱 𐑳)  -- [10] IMSCRIB | gram := 𐑠 | identity — self-imscription (The Eucharist is celebrated; 'This is my body, this is my blood' — the sacram...)
  (.arrow 𐑳 𐑠 ⊙)  -- [11] ENGAGR | stoi := 𐑳 | engage paradox — B-state, both arms (The consecrated bread and wine are simultaneously material and divine, held i...)
  (.arrow ⊙ 𐑳 𐑾)  -- [12] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The Eucharistic form and matter are valid; the priest has the proper intentio...)
  (.arrow 𐑾 ⊙ 𐑱)  -- [13] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Grace flows through the Eucharist into the communicant; union with Christ is ...)
  (.arrow 𐑱 𐑾 𐑗)  -- [14] CLINK | fid := 𐑱 | composition — regime coherence (The soul continues through life; sin may fracture it.)
  (.arrow 𐑗 𐑱 𐑖)  -- [15] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul falls into mortal sin; it descends into separation from grace; the E...)
  (.arrow 𐑖 𐑗 𐑚)  -- [16] EVALF | chir := 𐑖 | evaluate-false — chirality check (The soul is now in a state of grave offense; it cannot receive Communion; it ...)
  -- FSPLIT [17] (gran := 𐑚) (Penance begins; the soul is split between [guilt/separation] and [grace-seeking/contrition].) / FFUSE [20] (stoi := 𐑙)
  .seq
    (.prod
      -- T-branch (1 nodes)
      (.arrow ⊙ 𐑚 𐑙)  -- [19] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The confession is sincere; the priest has jurisdiction; the absolution is pro...)
      -- F-branch (1 nodes)
      (.arrow 𐑗 𐑚 𐑙)  -- [18] AREV | pol := 𐑗 | reverse morphism — parity flip (The penitent descends into acknowledgment of sin; contrition is expressed; th...))
    -- reconnect at FFUSE [20]: μ closes the Frobenius pair
    (.arrow 𐑙 𐑙 𐑾)  -- [20] FFUSE | stoi := 𐑙 (Penance reconstitutes the baptized soul; the two branches [guilt] and [grace-seeking] are fused back into [restored communion].)
  (.arrow 𐑾 𐑙 𐑱)  -- [21] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Grace flows again; the soul is reconciled; the Eucharistic channels reopen.)
  (.arrow 𐑱 𐑾 𐑾)  -- [22] CLINK | fid := 𐑱 | composition — regime coherence (The soul may now receive the Eucharist again; the chain continues.)
  (.arrow 𐑾 𐑱 𐑚)  -- [23] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (As the soul matures, it may be called to Holy Orders or Matrimony.)
  (.arrow 𐑚 𐑾 ⊙)  -- [24] FSPLIT | gran := 𐑚 | split δ — range decomposition (Holy Orders splits the soul into [ordained/set apart for ministry] and [lay/n...)
  (.arrow ⊙ 𐑚 𐑭)  -- [25] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The ordination is valid; the bishop has authority; the proper matter and form...)
  (.arrow 𐑭 ⊙ 𐑾)  -- [26] IFIX | prot := 𐑭 | irreversible fixation — winding number (The indelible character of Holy Orders is imprinted — a third permanent mark ...)
  (.arrow 𐑾 𐑭 𐑱)  -- [27] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The ordained minister is now a conduit of grace; he administers the sacrament...)
  (.arrow 𐑱 𐑾 𐑚)  -- [28] CLINK | fid := 𐑱 | composition — regime coherence (Alternatively, the soul may be called to Matrimony.)
  (.arrow 𐑚 𐑱 ⊙)  -- [29] FSPLIT | gran := 𐑚 | split δ — range decomposition (Matrimony splits the soul into [married/sacramentally united] and [unmarried/...)
  (.arrow ⊙ 𐑚 𐑾)  -- [30] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The marriage is valid; both parties consent freely; they are baptized; the pr...)
  (.arrow 𐑾 ⊙ 𐑱)  -- [31] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Grace flows into the married couple; they are sanctified as a domestic church...)
  (.arrow 𐑱 𐑾 𐑾)  -- [32] CLINK | fid := 𐑱 | composition — regime coherence (The married couple lives out their vocation; they may raise children; they re...)
  (.arrow 𐑾 𐑱 𐑗)  -- [33] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (As the soul ages, it approaches the end of life.)
  (.arrow 𐑗 𐑾 𐑾)  -- [34] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul descends toward death; the body weakens; the final journey begins.)
  (.arrow 𐑾 𐑗 ⊙)  -- [35] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (The Anointing of the Sick is administered; the priest anoints the forehead an...)
  (.arrow ⊙ 𐑾 𐑾)  -- [36] EVALT | crit := ⊙ | evaluate-true — criticality gate open (The anointing is valid; the soul is in danger of death or grave illness; the ...)
  (.arrow 𐑾 ⊙ 𐑗)  -- [37] AFWD | rel := 𐑾 | forward morphism — bidirectional arrow (Grace strengthens the soul for the final trial; sins are forgiven; the soul i...)
  (.arrow 𐑗 𐑾 𐑡)  -- [38] AREV | pol := 𐑗 | reverse morphism — parity flip (The soul descends through death; the body returns to dust; the soul stands be...)
  (.arrow 𐑡 𐑗 𐑠)  -- [39] TANCH | top := 𐑡 | terminal object — connectivity boundary (The Church Triumphant receives the soul; the sacramental economy is complete;...)
  (.arrow 𐑠 𐑡 𐑱)  -- [40] IMSCRIB | gram := 𐑠 | identity — self-imscription (The entire sacramental life is recognized as a unified whole — seven sacramen...)
  (.arrow 𐑱 𐑠 𐑭)  -- [41] CLINK | fid := 𐑱 | composition — regime coherence (The soul's journey through the seven sacraments is now a permanent record in ...)
  (.arrow 𐑭 𐑱 𐑼)  -- [42] IFIX | prot := 𐑭 | irreversible fixation — winding number (The soul's sacramental history is fixed in eternity; it cannot be undone; it ...)

-- ── Evaluation arm sub-defs ─────────────────────────────────────────────────

-- truth arm
noncomputable def the_7_sacraments_true_arm : IGProtocol 𐑼 𐑭 :=
  (the_7_sacraments_protocol).restrictToEVALT

-- false arm
noncomputable def the_7_sacraments_false_arm : IGProtocol 𐑼 𐑭 :=
  (the_7_sacraments_protocol).restrictToEVALF

-- ── Verification theorems ───────────────────────────────────────────────────

theorem the_7_sacraments_tier : TierFunctor.obj 𐑼 = .O₂ := by decide

end Imscribing
