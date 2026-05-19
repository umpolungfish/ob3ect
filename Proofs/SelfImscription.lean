/-!
# Self-Imscription - Minimal AST Frobenius Theorem

The computational core of the ob3ect: μ∘δ=id holds at the level of
Abstract Syntax Trees.
-/

structure ASTFrobenius where
  parse : String -> (String × String)
  unparse : (String × String) -> String
  frobenius : forall (t1 t2 : String), 
    unparse (parse (unparse (t1, t2))) = unparse (t1, t2)
