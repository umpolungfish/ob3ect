/-!
# String Diagram Ob3ect - Minimal

Graphical rewriting system.
-/

structure StringDiagramStructure where
  diagram_composition : forall {X Y Z : Type} (f : X -> Y) (g : Y -> Z),
    (fun (x, y) => (f x, g y)) = (fun (x, y) => (f x, g y))
