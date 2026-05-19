import Proofs.CCC
import Proofs.Frobenius_minimal
import Proofs.Hopf
import Proofs.HoTT
import Proofs.LinearLogic
import Proofs.Quantum
import Proofs.StringDiagrams
import Proofs.Topos
import Proofs.SelfImscription

structure IG_Existence where
  C : Type
  frobenius : FrobeniusOb3ect
  hopf : HopfStructure
  topos : ToposOb3ect
  ccc : CCCStructure
  hott : HoTTStructure

/-- The ob3ect-tower duality: computational ↔ formal. -/
theorem ob3ect_tower_duality :
  exists (ob : Type) (form : Type), ob = form :=
  by
    admit
