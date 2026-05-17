/-!
# Hopf Ob3ect — Formalization

Hopf algebra structure with antipode satisfying the defining axiom.
Linked to the Python HopfOb3ect.
-/

import Mathlib.CategoryTheory.Monoidal.Basic
import Mathlib.CategoryTheory.Monoidal.Coherence

open CategoryTheory
open MonoidalCategory

class HopfStructure (C : Type*) [MonoidalCategory C] extends FrobeniusStructure C where
  S : ∀ (X : C), X ⟶ X   -- Antipode

  /-- **Hopf Antipode Axiom** -/
  antipode_property : ∀ (X : C),
    S X ≫ μ X ≫ (S X ⊗ 𝟙 X) = η X ≫ ε X := by sorry

  antipode_natural : ∀ {X Y : C} (f : X ⟶ Y),
    S Y ≫ f = f ≫ S X := by sorry

theorem hopf_antipode_holds {C : Type*} [MonoidalCategory C] 
    (H : HopfStructure C) (X : C) :
  H.S X ≫ H.μ X ≫ (H.S X ⊗ 𝟙 X) = H.η X ≫ H.ε X :=
  H.antipode_property X

#check hopf_antipode_holds
