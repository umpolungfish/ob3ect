A method ob3ect for establishing the ray class cubic relation of the d=12 SIC moduli field in Lean 4 without constructing or multiplying inside the degree-32 tower.

WHAT IS WANTED
Imscribing/Millennium/SIC_D12_RayCubic.lean must compile green. Its single theorem gc5_cubic asserts that the cubic generator satisfies theta^3 = 3*theta + 1, the ray class cubic x^3 - 3x - 1. The relation is true. The present proof is `by native_decide` over explicitly constructed field elements and it cannot be made to work.

MEASURED WALL (verified this session, not estimated)
The tower is L1..L4 = Ext2 stacked four deep over Q13 = Q(sqrt 13), so L4 has degree 32 over Q. mul2 calls its base multiply five times, so mul4 costs 5^4 = 625 Q13 products. mul3g calls its base multiply thirteen times, so one mulC5 costs about 8000 Q13 products.
- one mul4 at concrete arguments: elaborates fine, native_decide succeeds.
- one mulC5 at concrete arguments: stack overflow, every time.
- nesting is irrelevant; a single mulC5 already exceeds the wall.
- maxRecDepth is irrelevant: overflow occurs at the default and setting 100000 only converts a stuck reduction into a C-stack death instead of a clean error.
- deriving DecidableEq is irrelevant: overflow reproduces with it removed.
- decide and rfl also fail, and lower down decide cannot reduce rational equality at all, getting stuck on Rat.num.
So any proof that evaluates even one mulC5 is unreachable.

THE PROJECT METHOD THAT SHOULD REPLACE IT
ig-docs/generalized_stark_unit_formula.md: "The Grammar route does not construct the ray class field. It recognizes the value from the structural position of the stark unit monomial in the 17,280,000-address crystal." One month with bnrstark against thirty minutes by the Grammar route.
ig-docs/sunit_exponent_extraction_d2048.md gives the Lean idiom the project actually uses: the content recorded as small integer facts closed by omega, e.g.
  def stark_sunit_exponents_d2048_k4 : List Z := [-1, 3, 2]
  theorem stark_exponent_constraint (e1 e2 : Z) (h : 8*e1 + 16*e2 = 56) : e1 + 2*e2 = 7 := by omega
and states the cheap route "needs no ray class field, no conductor tower and no bnrstark".
ig-docs/master_methods_d2048_stark.md: "Read those three gaps and you have the exponent vector. No Newton polygon required. No bnrstark. Just a crystal lookup."

STRUCTURE OF THE CONTENT TO BE PRESERVED
mul3g implements the reduction theta^3 = q + p*theta. The generator gen3 is <0,1,0>. Working it out by hand: gc5^2 = <0,0,1> and gc5^3 = <q, p, 0>. With p5p = 3 and p5q = 1 embedded from Q13 through four emb2 layers, that is theta^3 = 3*theta + 1. The right hand side gc5+gc5+gc5+1 is <1,3,0>. So the whole theorem reduces to two facts about embeddings, p5q = 1 and p5p = 3 in L4, plus the reduction rule read off mul3g. emb2 and addition are componentwise, so both embedding facts are structural rather than computational.

WHAT THE OB3ECT SHOULD DELIVER
A method: the statement form the theorem should take so that it carries the same mathematical content, the route by which each piece is discharged without any tower multiplication, and where the coefficients 3 and 1 are sourced from in the Grammar rather than recomputed. It must not weaken the claim, must not use sorry, and must not evaluate a mulC5.
