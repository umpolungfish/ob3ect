# The reduction, in four steps, all proved

**One class survives.** Every `n ≥ 2` outside `n ≡ 1 (mod 4)` with `3 ∤ n` has an
explicit three-term representation, by four parametric families: `n` even,
`n ≡ 3 (mod 4)`, `n ≡ 2 (mod 4)`, and `n ≡ 9 (mod 12)`. Each is a ring identity
after clearing denominators.

**The class collapses to one numerator.** Take the greedy step on `n = 4k+1`: the
largest unit fraction below `4/n` is `1/(k+1)`, and

    4/(4k+1) − 1/(k+1) = 3/((4k+1)(k+1))

The numerator is `3`, always. The remainder is determined, not chosen, so the
class carries one question rather than many: when is `3/m` a sum of two unit
fractions, for `m = n(k+1)`?

**A divisor answers it.** If `m = d·e` with `d = 3t+2`, then

    3/m = 1/(e(t+1)) + 1/(m(t+1))

an identity. So `3/m` splits whenever `m` has a divisor `≡ 2 (mod 3)`.

**The rung.** Composing, closure at depth `r` is

    ClosedAtRung n r  :=  ∃ a u w, 0 < a, 0 < u, 0 < w,
                           4a = n + r,  na = uw,  r ∣ (na + u)

and `straus_of_closedAtRung` turns any such `r` into three unit fractions. Write
`M = na`. The condition is that some factorisation of `M` — or of `M²`, which the
completeness result below licenses — places a factor at `−M` modulo `r`.

**The ladder is complete.** `ladder_complete`: from ANY representation of `4/n`,
setting `M = nx`, `r = 4x − n`, `u = ry − M`, `v = rz − M` forces `uv = M²` with
`r ∣ M+u` and `r ∣ M+v`. So the rung formulation loses nothing — a representation
exists exactly when a rung closes.
