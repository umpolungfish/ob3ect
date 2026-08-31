#!/usr/bin/env python3
"""a=0 stratum prototype of the d=12 descent engine.

The eleven overlaps O_{0,b} = sum_j N_j * zeta12^(j*b) are phase-free: they live
in R = K16(sigma, i) with sigma = s1*s5 (sigma^2 = N1*N5), i^2 = -1, and
zeta12 = (sqrt3 + i)/2, sqrt3 = c3w * sigma / (N1*N5) with c3w the exact K16
witness (comp_cartography2: c3w^2 = 3*N1*N5). R is a field of dim 64 over Q
(dim 4 over K16, basis {1, sigma} x {1, i}); conjugation is i -> -i.

Checks EXACTLY, in pure rational arithmetic: O_{0,b} * conj(O_{0,b}) = 1/13
for b = 1..11. This validates the chain architecture end to end on the
simplest orbit stratum (and covers the deg-2/4/8/16 a=0 orbits).
"""
from fractions import Fraction
import re

PR = [Fraction(c) for c in [1,0,2,0,25,0,-96,0,126,0,-90,0,40,0,-10,0,1]]  # constant-first

def k_reduce(xs):
    xs = list(xs)
    while len(xs) > 16:
        c = xs.pop()
        if c != 0:
            for i in range(16):
                xs[len(xs) - 16 + i] -= c * PR[i]
    while len(xs) < 16:
        xs.append(Fraction(0))
    return xs

def k_mul(a, b):
    out = [Fraction(0)] * 31
    for i, x in enumerate(a):
        if x:
            for j, y in enumerate(b):
                if y:
                    out[i + j] += x * y
    return k_reduce(out)

def k_add(a, b): return [x + y for x, y in zip(a, b)]
def k_sub(a, b): return [x - y for x, y in zip(a, b)]
def k_scale(c, a): return [c * x for x in a]
K_ZERO = [Fraction(0)] * 16
K_ONE = [Fraction(1)] + [Fraction(0)] * 15

# ---- data ----
moduli = {}
for line in open('build_k16_v3.txt'):
    m = re.match(r"z(\d+)mod = (\[.*\])", line.strip())
    if m:
        moduli[int(m.group(1))] = [Fraction(t.strip()) for t in m.group(2)[1:-1].split(',')]
assert len(moduli) == 12

c3w = None
for line in open('comp_cartography2_data.txt'):
    if line.startswith('SQRT3C;'):
        c3w = [Fraction(t.strip()) for t in line.strip().split(';')[1][1:-1].split(',')]
assert c3w is not None

N1N5 = k_mul(moduli[1], moduli[5])
# sanity: c3w^2 = 3 * N1 * N5 exactly
assert k_mul(c3w, c3w) == k_scale(Fraction(3), N1N5), "sqrt3 witness fails"

# ---- ring R: elements dict[(e_sigma, e_iota)] -> K16 vector ----
def r_zero(): return {}
def r_add(A, B):
    C = dict(A)
    for k, v in B.items():
        C[k] = k_add(C.get(k, K_ZERO), v)
    return {k: v for k, v in C.items() if v != K_ZERO}
def r_scale_k(kv, A):
    return {k: k_mul(kv, v) for k, v in A.items()}
def r_mul(A, B):
    C = {}
    for (s1e, i1e), v1 in A.items():
        for (s2e, i2e), v2 in B.items():
            coef = k_mul(v1, v2)
            se, ie = s1e + s2e, i1e + i2e
            if se >= 2:
                se -= 2; coef = k_mul(coef, N1N5)      # sigma^2 = N1*N5
            if ie >= 2:
                ie -= 2; coef = k_scale(Fraction(-1), coef)  # i^2 = -1
            key = (se, ie)
            C[key] = k_add(C.get(key, K_ZERO), coef)
    return {k: v for k, v in C.items() if v != K_ZERO}
def r_conj(A):
    return {k: (k_scale(Fraction(-1), v) if k[1] == 1 else v) for k, v in A.items()}

def r_from_k(kv): return {(0, 0): kv} if kv != K_ZERO else {}

# zeta12 = (sqrt3 + i)/2 ; sqrt3 = c3w * sigma / (N1*N5)
# so zeta = (1/2) * c3w * inv(N1N5) * sigma + (1/2) * i
# inv(N1N5) in K16: solve via extended Euclid in Q[x] mod PR
def k_inv(a):
    # extended euclid on polynomials (constant-first lists)
    def deg(p):
        d = len(p) - 1
        while d >= 0 and p[d] == 0: d -= 1
        return d
    def pmulq(p, q):
        out = [Fraction(0)] * (len(p) + len(q) - 1)
        for i, x in enumerate(p):
            if x:
                for j, y in enumerate(q): out[i + j] += x * y
        return out
    def psub(p, q):
        n = max(len(p), len(q))
        p = p + [Fraction(0)] * (n - len(p)); q = q + [Fraction(0)] * (n - len(q))
        return [x - y for x, y in zip(p, q)]
    def pdivmod(p, q):
        p = list(p); dq = deg(q); quo = [Fraction(0)] * (max(deg(p) - dq + 1, 1))
        while deg(p) >= dq:
            k = deg(p) - dq; c = p[deg(p)] / q[dq]
            quo[k] += c
            p = psub(p, pmulq([Fraction(0)] * k + [c], q))
        return quo, p
    r0, r1 = PR + [], list(a)
    s0, s1 = [Fraction(0)], [Fraction(1)]
    while deg(r1) > 0:
        q, r = pdivmod(r0, r1)
        r0, r1 = r1, r
        s0, s1 = s1, psub(s0, pmulq(q, s1))
    c = r1[deg(r1)]
    inv = [x / c for x in s1]
    return k_reduce(inv + [Fraction(0)] * max(0, 16 - len(inv)))

invN1N5 = k_inv(N1N5)
assert k_mul(N1N5, invN1N5) == K_ONE, "K16 inverse fails"

half = Fraction(1, 2)
zeta = r_add({(1, 0): k_scale(half, k_mul(c3w, invN1N5))}, {(0, 1): [half] + [Fraction(0)] * 15})

# sanity: zeta^12 = 1, zeta^6 = -1, Phi12(zeta) = zeta^4 - zeta^2 + 1 = 0
zp = [r_from_k(K_ONE)]
for _ in range(12):
    zp.append(r_mul(zp[-1], zeta))
assert zp[12] == r_from_k(K_ONE), "zeta^12 != 1"
assert zp[6] == r_from_k(k_scale(Fraction(-1), K_ONE)), "zeta^6 != -1"
phi = r_add(r_add(zp[4], {k: k_scale(Fraction(-1), v) for k, v in zp[2].items()}), r_from_k(K_ONE))
assert phi == {}, "Phi12(zeta) != 0"
print("zeta12 in-ring sanity: zeta^12 = 1, zeta^6 = -1, Phi12(zeta) = 0  OK")

# ---- the eleven a=0 overlaps ----
TARGET = r_from_k([Fraction(1, 13)] + [Fraction(0)] * 15)
allpass = True
for b in range(1, 12):
    O = r_zero()
    for j in range(12):
        O = r_add(O, r_scale_k(moduli[j], zp[(j * b) % 12]))
    prod = r_mul(O, r_conj(O))
    ok = prod == TARGET
    allpass &= ok
    print(f"O(0,{b}) * conj = 1/13 exactly: {'PASS' if ok else 'FAIL'}")
print("ALL PASS" if allpass else "SOME FAILED")
