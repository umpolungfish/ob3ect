import Proofs.CCC
import Proofs.Frobenius_minimal
import Proofs.Hopf
import Proofs.HoTT
import Proofs.LinearLogic
import Proofs.Quantum
import Proofs.StringDiagrams
import Proofs.Topos
import Proofs.SelfImscription

structure IGOb3ect where
  frobenius : FrobeniusOb3ect
  hopf : HopfStructure
  topos : ToposOb3ect
  ccc : CCCStructure
  hott : HoTTStructure

/-- The Frobenius gate is self-coherent. -/
theorem frobenius_self_coherent_in_IG (ig : IGOb3ect) (X : ig.frobenius.C) : 
  ig.frobenius.μ (ig.frobenius.δ X) = X :=
  by
    admit
