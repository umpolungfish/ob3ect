# d12 boundary discharge — context for the Lean agent (2026-07-04)

Companion to batch `~/imsgct/ob3ect/d12_boundary_discharge.yaml` (5/5 Frobenius PASS).
Certificate data: `boundary_cert_data.txt` (exact rationals) and `boundary_cert_lean.txt`
(ready-to-paste Lean fragment), both generated + Fraction-re-verified by
`gen_lean_boundary.py`. Do NOT hand-enter any rational; regenerate instead.

## 1. Bracket repoint (do this first)

Replace the `exists_root` bracket `(-2009/1000, -2008/1000)` with
`lo = -2008573054090/10^12`, `hi = -2008573054089/10^12` (width 10^-12; verified
exactly: k16(lo) = +4.04e-9 > 0, k16(hi) = -8.97e-9 < 0). Everything downstream is
root-agnostic through `g0_root` (precedent: commit 1f2a126). `g0_neg` still follows.

WARNING: do NOT prove the new `poly_at_lb/ub` with `rw [k16_eval]; norm_num` — the
endpoint rationals have 13-digit numerators and ^16 powers; norm_num on ℝ will crawl
or die. Route through ℚ instead: prove the sign in ℚ by `native_decide`
(`cert_k16_lo/hi` in the fragment), then lift with a bridge lemma
`k16Poly.eval ((q:ℚ):ℝ) = ((k16Q q : ℚ):ℝ)` proved once by `push_cast; ring`.

## 2. Divided-difference certificates (closes cover_modulus_nonneg + c5_discr_nonneg)

Scheme per target v ∈ {M0, M1, M3, M9, D5V, S2H} (covK 0,1,2,3 = M0,M1,M3,M9;
D5V = kadd (kmul OA5 OA5) (kscale (-4) OB5) is already a ring def):

  q := (p - p(mid))/(x - mid) exact in ℚ[x]  — lists banked in the fragment
  list identity (native_decide):  padd (pmul [-certMid, 1] qV) [pmV] = V
  ⇒ evalR V = pm + (g0 - mid)·(q evaluated at g0)          [evalK16_padd/pmul at g0C]
  |q(g0)| ≤ Σ|q_i|·B^i  with B = 201/100 ≥ |g0|            [induction on the list]
  |g0 - mid| ≤ hw = 1/(2·10^12)                            [from the tight bracket]
  ⇒ evalR V ≥ pm - hw·L > 0                                 [margin, native_decide in ℚ]

Margins (exact, banked): M0 +3.118e-2, M1 +1.950e-2, M3 +2.340e-1, M9 +4.330e-2,
D5V +8.0589, S2H +9.399e-1. hw·L ≤ 3.2e-5 in the worst case (D5V) — 4+ orders of slack
everywhere. NO interval Horner (dependency blowup, agent winding 47), NO endpoint-float
checks (not certificates, winding 49), NO MVT/deriv — pure list algebra.

Suggested Lean glue (small, generic):
- `evalQR : ℝ → List ℚ → ℝ` Horner + bridge `evalK16 (↑x) v = ((evalQR x v : ℝ):ℂ)`
  (induction, push_cast) so `evalR v = evalQR g0 v`.
- `evalQR_padd/pmul` — same proofs as the existing `evalK16_padd/pmul` verbatim.
- `abs_evalQR_le : |x| ≤ B → |evalQR x v| ≤ evalQR B (v.map |·|)` +
  `evalQR_nonneg`-style helper, both one-line inductions.
- ℚ↔ℝ bridge at rational points for the margin comparison.
- c5_discr_nonneg: oaR^2 - 4*obR = evalR D5V via evalR_kadd/kmul/kscale
  (re of product of two reals; all evals real by star_evalK16).

## 3. u1 half-angle (closes u1Val_sq; kills Complex.sqrt)

Redefine (x := evalR C2H, y := evalR S2H):

  u1Val := ((Real.sqrt ((1 + x)/2) : ℝ) : ℂ) + Complex.I * ((Real.sqrt ((1 - x)/2) : ℝ) : ℂ)

Facts: `e2_unit_k16 : kadd (kmul C2H C2H) (kmul S2H S2H) = one16` (in the fragment,
native_decide) transfers through evalK16 + reality to x² + y² = 1 in ℝ. y > 0 is the
S2H certificate. Then 1±x ≥ 0 from x² ≤ 1 (nlinarith with y² ≥ 0), and
  u1Val² = (a² - b²) + 2ab·I = x + y·I = evalK16 g0C C2H + iVal·evalK16 g0C S2H
since a² = (1+x)/2, b² = (1-x)/2 (Real.sq_sqrt), and 2ab = √(1-x²) = √(y²) = y
(Real.sqrt_mul_self needs y ≥ 0 — that's the certificate line).
`star_u1Val` downstream only consumes `u1Val_sq` + `u1_unit`; no other change needed.

## 4. equiangular — the Z ∈ {ω, ω⁵} either-branch trick (NO new positivity needed)

Z := phi(zeta). From `zeta := [(0, ½·W3·OA5), (16, ½·one16), (32, W3)]`:
Z = (zR : ℝ) + (1/2)·I with zR := evalR(kscale ½ (kmul W3 OA5)) + evalR W3 · c5R
— REAL because keys 0/32 carry only real generators (evalK16 at real g0, c5Val real).

Transfer `zeta_phi12` (phi_radd + phi_rneg + phi of zpow): Z⁴ - Z² + 1 = 0. Split into
re/im with Z = zR + I/2: the imaginary part forces zR·(2·zR² - 3/2) = 0 and the real
part kills zR = 0, so zR² = 3/4 EXACTLY. Hence Z = ω or Z = ω⁵ (ω := omega_d 12 =
exp(πi/6) = √3/2 + I/2; ω⁵ = -√3/2 + I/2; Real.cos_pi_div_six / Real.sin_pi_div_six +
cos/sin of π - π/6). DO NOT try to certify zR > 0 — it is not needed:

Both m = 1 and m = 5 are self-inverse mod 12 (5² = 25 ≡ 1). For a target pair
(a, c) ≠ (0,0) set b := (m·c) % 12; then m·b ≡ c (mod 12), b = 0 ↔ c = 0, and

  wh_inner 12 psi (D_ah 12 a c 0 psi) = star (phi (Oab a b))

term-by-term: X_d iterate a = index shift (k + a·11)%12 ≡ (k + 12 - a)%12 (mod 12),
Z_d iterate c = ω^(c·k) factor; phi(Oab a b) = Σ_j star(ψ_j)·ψ_{(j-a)%12}·Z^{((j-a)%12·b)%12}
via phi_foldl_radd (new small lemma) + phi_rmul (canonicity: rZ_keys_canon, T_canon_all,
zpow_canon_all) + phi_rconj + phi_zpow (induction on `zpow n = rmul (zpow n-1) zeta`,
NOTE the def multiplies on the LEFT: zpow (n+1) = rmul (zpow n) zeta). Z^12 = 1
(from zeta_pow12) collapses the %12 exponent juggling: Z^(e%12) = Z^e.

Finish: `Ocab_conj_all` gives Ocab = rconj Oab; `Oab_unit_all` gives
rmul (Oab a b) (Ocab a b) = rT13 for (a,b) ≠ (0,0); so
S·star S = phi(Oab)·star(phi Oab) = phi(rmul Oab Ocab) = phi(rT13) = 1/13,
and 13·‖S‖² = 1 via Complex.mul_conj / normSq.

## 5. Files

- boundary_cert_data.txt — exact pm/q/L/margin per target + bracket rationals
- boundary_cert_lean.txt — Lean defs qM0..qS2H, pm*, cert_id_*, cert_margin_*,
  cert_k16_lo/hi, e2_unit_k16 (all native_decide statements, generator-emitted)
- gen_lean_boundary.py — regenerate after any ExistenceRing change

## 6. CURRENT LEAN STATE (p4rakernel 666bafc) — the bridge is the ONLY sorry left

The three §1–§3 boundary sorries are DISCHARGED and the whole capstone compiles green
(full lib, 8342 jobs) except one sharply-typed lemma. Everything below §4 needs is now a
NAMED, PROVEN, green lemma in `SIC_D12_Embedding.lean`:

  overlap_normSq {a b}(ha:a<12)(hb:b<12)(h:¬(a=0∧b=0)) :
      Complex.normSq (phi (Oab a b)) = 1/13        -- ring-side equiangularity, DONE
  Oab_unit_all / Ocab_conj_all / Oab_canon_all / Ocab_canon_all  (native_decide)
  unit_at / conj_at / Oab_canon / Ocab_canon       -- per-pair extractors, DONE
  phi_rT13 : phi rT13 = 1/13 ; phi_Ocab : phi (Ocab a b) = star (phi (Oab a b))  -- DONE
  phi_rmul / phi_rconj / phi_rK / phi_radd / phi_rone            -- star-ring hom, DONE
  zeta_pow12 : zpow 12 = rone ; zeta_pow6 : zpow 6 = rneg rone   -- (ExistenceRing) DONE

`equiangular` is already assembled (4 lines) FROM the bridge + overlap_normSq. The SOLE
remaining goal, verbatim:

  lemma equiangular_bridge (a b : Fin 12) (h : (a, b) ≠ (0, 0)) :
      ∃ b' : ℕ, b' < 12 ∧ ¬(a.val = 0 ∧ b' = 0) ∧
        wh_inner 12 psi (D_ah 12 a b 0 psi) = star (phi (Oab a.val b'))

Discharge plan (all pieces are analytic, over ℂ):

(A) phi_zpow : ∀ n, phi (zpow n) = (phi zeta) ^ n. By induction; base phi_rone,
    step `zpow (n+1) = rmul (zpow n) zeta` + phi_rmul. NEEDS a general
    `rmul_canon : (∀p∈A,p.1<128)→(∀p∈B,p.1<128)→ ∀p∈rmul A B, p.1<128` — TRUE because
    `contrib`/`encKey` bound cov<16, ei<2, e5<2, e1<2 ⇒ key<128 (red1/red2/red3 collapse
    each layer). Alternatively restrict to n<13 (zpow_canon_all already covers it) since
    Oab only uses zpow at exponents `%12`.

(B) THE PIN — Z := phi zeta ∈ {ω, ω⁵}, ω := omega_d 12 = exp(2πi/12). Now SHORT:
    • Im Z = 1/2 EXACTLY. From `evalKey` (key%16=covers, key/16%2 ⇒ iVal=Complex.I,
      key/32%2 ⇒ c5Val REAL, key/64 ⇒ u1Val): phi zeta = evalKey 0 (½·W3·OA5)
      + evalKey 16 (½·one16) + evalKey 32 W3. Key 0 and 32 are real (evalK16 at real g0C,
      c5Val real). Key 16 = evalK16 g0C(½·one16)·iVal = ½·i. So Im Z = 1/2.
    • |Z| = 1. phi(zeta_pow12): Z^12 = phi(zpow 12) = phi rone = 1 ⇒ |Z|^12 = 1 ⇒ |Z| = 1.
    • ⇒ Re Z = ±√3/2 (Re²=1−¼=¾), so Z = ±√3/2 + i/2 = ω (Real.cos_pi_div_six,
      Real.sin_pi_div_six) or ω⁵ (cos/sin of 5π/6 = π − π/6). Pick m∈{1,5} by the branch.

(C) TERM-MATCH. b' := (m·b)%12. Both sides are ∑ over Fin 12 with the SAME index map
    idx_a(k) := (k + a·11)%12 = (k+12−a)%12 — NO reindexing needed:
    • Z_iterate : (Z_d 12)^[b] psi k = omega^(b·k)·psi k  (induction on b; Z_d v k = ω^k·v k).
    • X_iterate : (X_d 12)^[a] v k = v ⟨idx_a(k),_⟩             (induction on a; X_d shifts +11 %12).
    • ⇒ (D_ah 12 a b 0 psi) k = ω^(b·idx_a(k))·psi(idx_a(k)); conj gives conj(ω)^(b·idx)·conj(psi idx).
    • star(phi(Oab a b')) = ∑_j psi(j)·conj(psi(idx_a(j)))·conj(Z)^((idx_a(j)·b')%12)
      (via phi_rmul over Oab's foldl [new phi_foldl_radd], phi_rconj, phi_zpow).
    • per-term phase equality: conj(ω)^(b·idx) = conj(Z)^(idx·b') because Z=ω^m and
      m·b' ≡ b (mod 12); collapse the %12 exponents with ω^12 = 1 and Z^12 = 1.
    • b'=0 ↔ b=0 (m coprime to 12) and a=0 ⇒ ¬(a=0∧b'=0) from h. Feeds overlap_normSq.

Mathlib v4.28.0 names in play (Complex.abs is GONE): `Complex.sq_norm : ‖z‖^2 = normSq z`;
`norm_star`; `Complex.mul_conj : z * conj z = ↑(normSq z)`; `Complex.ofReal_inj`;
`Real.cos_pi_div_six`, `Real.sin_pi_div_six`; `Function.iterate_succ'`.
