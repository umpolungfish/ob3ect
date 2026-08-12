# The Erdős objects nest

Twelve imscriptions, one per object the corpus needs and does not have. Each
describes the object wanted and names no candidate, so what comes back is not a
restatement of a guess.

Eleven of them exist because a statement had to be removed from the batch files:
it named a quantity the development cannot express, so the placeholder that stood
in its place asserted something true of everything. The twelfth is the live one —
the rung bound, which is what settles Erdős–Straus on the surviving class.

| brief | the statement it unblocks |
|---|---|
| 01 ramsey number of a pair | even-cycle Ramsey at two and at k colours; R(C₄, K_{1,n}); Ramsey-goodness; whether equal edge counts force equal Ramsey numbers |
| 02 size-Ramsey number | the star-forest exact formula; linearity for Q₃, K_{3,3}, H₅ |
| 03 hypergraph Ramsey with stepping-up | the Erdős–Rado tower bounds, both directions |
| 04 edge-disjoint cycles | the ⌊3(n−1)/2⌋ edge bound |
| 05 girth-chromatic function | the limit of g_k(n) |
| 06 packing density | optimality of the hexagonal packing |
| 07 SAW displacement | the exponent ν, 3/4 at d = 2 and 1/2 from d = 5 |
| 08 Pasch configuration count | the growth of f_t |
| 09 partition relation independence | ω₁² → (ω₁ω, G)², and the PFA consequence — both fork at B |
| 10 list chromatic threshold | the minimal vertex count above list chromatic k |
| 11 lcm growth and Landau | the carrying results of two manuscripts, checked against their files |
| 12 rung bound for the ladder | Erdős–Straus on n ≡ 1 (mod 4), 3 ∤ n |

## Running them

The lane is kilo with `poolside/laguna-s-2.1:free`; openrouter was 402.

```
cd ~/imsgct/ob3ect
export KILO_API_KEY=…  IG_MODEL=poolside/laguna-s-2.1:free  IG_PROVIDER=kilo
for f in nests/erdos_objects/[0-9]*.txt; do
  b=$(basename "$f" .txt)
  python3 auto.py --desc-file "$f" --provider kilo --model "$IG_MODEL" \
    --name "erdos_${b#*_}"
done
python3 revalidate_straus.py $(ls -d digital/erdos_* | xargs -n1 basename)
```

`revalidate_straus.py` re-checks against the corrected gates — Axiom C
one-directional, Axiom A admitting both slow kinetics, the Frobenius verdict a B4
value — so an object that grounds is not being marked invalid by a stale check.

For a nested reading rather than twelve flat chains, add `--churn --windings 3`
to any one of them: churn puts the ob3ect back into its own context and imscribes
each of its steps in turn.
