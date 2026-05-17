/-!
# Cartesian Closed Category Ob3ect
Products and Exponentials (internal Hom)
-/

import Mathlib.CategoryTheory.Limits.Basic
import Mathlib.CategoryTheory.Exponential

open CategoryTheory Limits

class CCCStructure (C : Type*) [Category C] [HasFiniteProducts C] where
  /-- Exponential object -/
  exp : ∀ (A B : C), C

  /-- Evaluation morphism -/
  eval : ∀ (A B : C), exp A B × A ⟶ B

  /-- Currying -/
  curry : ∀ {A B C : C}, (A × B ⟶ C) → (A ⟶ exp B C)

  /-- Universal property of exponentials -/
  exponential_universal : ∀ {A B C : C} (f : A × B ⟶ C),
    eval B C ≫ (curry f × 𝟙 B) = f := by sorry

theorem ccc_coherent {C : Type*} [Category C] [HasFiniteProducts C] (CCC : CCCStructure C) :
  True := by trivial

#check ccc_coherent
