# d2048 tower fusion — frozen context (2026-07-07)

## What is REAL and PARI-verified tonight (not template, not guessed)

Base field F = Q(sqrt(4190205)), m_2048=(2048-3)(2048+1)=2045*2049=4190205=3*5*409*683
(squarefree). Class number h(F)=64, cyc=[32,2], regulator ~7.624
(field_skeleton_2048.txt / ray_class_2048.gp,txt).

Ray class field K_2048 at SIC conductor (6144)*inf1*inf2:
  Cl_f order = 402,653,184 = 2^27*3
  cyc = [12288, 512, 8, 4, 2]     ([K2048:F] = this order, [K2048:Q] = 2x this)
  3-part is a SINGLE Z/3 (inside the 12288=2^12*3 factor) -> the Zauner order-3
  automorphism has a UNIQUE arithmetic home, no ambiguity.

Explicit small pieces pulled via targeted bnrclassfield (never the full field):
- Zauner cubic (CONFIRMED IRREDUCIBLE over F, nffactor single-factor, disc != 0):
    x^3 + (201129984y - 411712880736)x + (-35098523078652y + 71846642449346560)
  where y^2 = 4190205. (subfield_lattice_2048.gp/.txt)
- x^2 - 30  : sqrt(30) is a subfield COMPLETELY INDEPENDENT of F (no y-term).
- x^2 - 2   : sqrt(2) likewise independent of F. (subfield_cartography_2048.gp/.txt)
- x^2 = -(y+2047) : genuinely imaginary under the real embedding of F
  (sqrt(4190205) ~ 2046.999), the analog of d=12's literal i-layer (x^2+1), NOT the
  same number.
- Two irreducible quartics (512-factor idx4, 8-factor idx4), confirmed NOT reducible
  to compositions of the quadratics above.
- Compositum of cubic+3 quadratics+2 quartics: degree <= 384 over F (<=768/Q), vs
  full [K2048:Q]=805,306,368 -- this is the small natural tower analog of d=12's
  six-piece decomposition (which had degree <=288 total: four quadratics + two cubics).

## The d=12 precedent this must mirror (from canonical paper + this repo's history)

d=12 tower: K16 = deg-16 totally real moduli field, extended by s0,s1,s3,s9 (magnitude
sqrt covers), i, c5 (real quadratic layer), u1 (phase, quadratic over K16(i)) ->
R = K16(s0,s1,s3,s9,i,c5,u1), dim_Q R = 2048. All 143 overlap identities +
norm identity proved by native_decide over exact rational arithmetic in this ring.
`pin_sunit_D12_TEMPLATE.gp` is the ACTUAL d=12 script that pinned N1 as an S-unit
via algdep+bnfinit+bnfsunit — but it is hardwired to d=12's primes {2,3,13} (the
primes dividing m_12=117 and the conductor 36) and d=12's octic minimal polynomial.
It does NOT apply to d=2048 as-is: d=2048's ramified primes are {3,5,409,683}
(from m_2048) not {2,3,13}. This is the concrete gap: the SAME METHOD (algdep on a
numerically-recovered modulus, bnfinit on its minimal polynomial, bnfsunit over the
primes actually dividing the discriminant/conductor, express the modulus as an
S-unit exponent vector, read off its square-class) has never been re-run with
d=2048's actual numbers.

## What this ob3ect batch is for

NOT to claim SICPOVM_Exists 2048. NOT to conflate the T-arm (transport_b_fiducial,
proved, Belnap-only) with the F-arm (fiducial_from_stark_2048, the open shadow).
This batch imscribes the SPECIFIC next construction step: adapting the d=12
S-unit-pinning method to the real d=2048 tower pieces above (the confirmed cubic,
the two independent rational quadratics sqrt2/sqrt30, the imaginary quadratic, the
two quartics), to attempt pinning the eleven a=0 stratum moduli N_k as exact
S-units ramified only at {3,5,409,683} within this small tower -- mirroring
exactly how d=12 pinned N1 in K16 before mini_engine_a0.py ran, not guessing a
generic construction from scratch the way the earlier d2048-a0-moduli-pin batch
did (its pin_sunit.gp output was still the d=12 template, unadapted; its moduli
ob3ect scaffold carried no real numbers).
