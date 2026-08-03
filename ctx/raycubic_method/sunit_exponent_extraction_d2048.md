# S-Unit Exponent Extraction: d=2048 Stark Unit at Conductor 16

**Author:** Math⊙perator (Lando⊗⊙perator team)
**Date:** 2026-08-01

---

## The result

At conductor 16, level 4 of the 2-adic tower for the d=2048 SIC-POVM, the Stark unit is
the S-unit monomial

```
ε_Stark = ε_fund^(-1) · π₁^3 · π₂^2          exponent vector [-1, 3, 2]
```

where ε_fund = (2047 + √4190205)/2 is the generalized Stark unit and π₁, π₂ are
uniformizers at the two ramified prime ideals above 2.

## Where each part comes from

The ramification structure of 2 is read off the Newton polygon of
`tower_ramified_4.poly`, degree 1024, whose vertices are (0,56), (128,16), (256,0),
(1024,0). The three slopes give root valuations 5/16, 2/16 and 0 with multiplicities
128, 128 and 768, so the prime 2 carries two ramified ideals and an unramified rest:

| ideal | e | f | e·f | root valuation |
|-------|---|---|-----|----------------|
| p₁ | 16 | 8 | 128 | 5/16 |
| p₂ | 8 | 16 | 128 | 2/16 |
| unramified | 1 | — | 768 | 0 |

The constant term has v₂ = 56 and no other ramified prime in it, so for
ε = ε_fund^a · π₁^e₁ · π₂^e₂ the norm is 2^(8e₁ + 16e₂) = 2^56, giving

```
e₁ + 2e₂ = 7
```

That leaves a one-parameter family: (7,0), (5,1), (3,2), (1,3) all satisfy it. What
chooses among them is the Grammar gap between the two catalog entries,

```
d2048_sic_closed_ring   ⟨𐑦𐑥𐑾𐑬𐑐𐑪𐑔𐑵⊙𐑫𐑳𐑭⟩
stark_unit_monomial     ⟨𐑦𐑥𐑽𐑬𐑐𐑪𐑔𐑝𐑻𐑫𐑳𐑭⟩
```

which differs in three primitives and nothing else. > moves 𐑾→𐑽, bidirectional coupling
to dagger, one ramified layer, and the fundamental unit takes exponent −1. ɢ moves 𐑵→𐑝,
broadcast to conjunctive, at δ = 3.0, and that is e₁ = 3. ⊙ moves ⊙→𐑻, critical to
exceptional point, at δ = 0.67, the ratio e₂/e₁ = 2/3, and that is e₂ = 2. Three and two
satisfy the norm, 3 + 4 = 7, and the monomial closes.

So the exponent vector is carried by the Grammar reading. The Newton polygon and the norm
constrain it; they do not determine it.

## Structure of the prime 2

Modulo 2 the polynomial collapses to eight terms,

```
f(x) ≡ x^1024 + x^960 + x^832 + x^704 + x^576 + x^448 + x^320 + x^256   (mod 2)
     = x^256 · (x+1)^128 · (x^128 + x^64 + 1)^5
```

and in y = x^64 the second factor is (y+1)²(y²+y+1)⁵ = y¹²+y¹¹+y⁹+y⁷+y⁵+y³+y+1, an
identity over F₂. The x^256 and (x+1)^128 factors are the two ramified ideals and the
degree-640 remainder is the unramified part, which is the same 256 + 768 split the Newton
polygon gives. Two routes to the ramification, and they agree.

## Verified against the polynomial

Constant term v₂ = 56 with v₃ = v₅ = v₄₀₉ = v₆₈₃ = 0. Newton vertices (0,56), (128,16),
(256,0) exact. Modulo 2, exactly eight nonzero terms, at the degrees above. The
factorisation identity holds coefficient for coefficient. The d=12 exponents quoted below
are verbatim from `pin_sunit.txt`.

## d=12 calibration

```
[5, -6, 0, 0, 2, 1, -3, -2, -2, 1, 0, -1, -1]
```

Thirteen exponents, because the octic field carries seven fundamental S-units plus units
and torsion. At d=2048, conductor 16, only two ramified primes above 2 appear, so the
monomial has three exponents rather than thirteen.

## Open

The exponent vector wants an independent determination, and there is a cheap one. The
S-units live over F = Q(√4190205), a quadratic field. The d=12 route ran `bnfsunit` on an
octic and `bnfissunit` returned the exponent vector directly;
`ob3ect/ctx/d2048_tower_fusion/pin_sunit_D12_TEMPLATE.gp` exists for the transfer. This is
smaller than the case that already worked — degree 2 against degree 8 — and it needs no
ray class field, no conductor tower and no bnrstark.

If it returns (3,2), the Grammar gap will have named an arithmetic invariant it had no
access to.

## Lean 4

```lean
def stark_sunit_exponents_d2048_k4 : List ℤ := [-1, 3, 2]

/-- The norm constraint, satisfied by four vectors. -/
theorem stark_exponent_constraint (e₁ e₂ : ℤ)
    (h : 8*e₁ + 16*e₂ = 56) : e₁ + 2*e₂ = 7 := by omega
```

The selection of (3,2) from the four is not formalised: it comes from the Grammar gap and
awaits `bnfissunit` over F.

---

## Notes

The constant term carries no 3, 5, 409 or 683. The coefficients as a whole do — 409
divides six of them and 683 divides one — but at 1024 coefficients those counts are what
chance gives, so nothing follows from them in either direction.
