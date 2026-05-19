/-!
# Homotopy Type Theory Ob3ect - Minimal

Formalization of identity types.
-/

structure HoTTStructure where
  Path : forall (A : Type) (a b : A), Type
  refl : forall {A : Type} (a : A), Path A a a
  J : forall {A : Type} {a : A} (P : forall (b : A), Path A a b -> Type)
      (d : P a (refl a)) (b : A) (p : Path A a b), P b p
