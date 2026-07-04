import Mathlib
import Imscribing.Millennium.SIC_D12_ExistenceRing
import Imscribing.Millennium.SIC_POVM_Stark

/-!
# SIC_D12_Embedding - the capstone

Exhibits a ring hom phi : R -> C and transfers the 143 overlap identities
from SIC_D12_ExistenceRing to IsSICPOVM 12 psi.
-/

namespace SIC.D12.Embedding

open SIC.D12.ExistenceRing
open Millennium.SIC_POVM_Stark

noncomputable section

/-! ## 0. K16 evaluation (Horner, constant-first) -/

def evalK16 (g : ℂ) : List ℚ → ℂ
  | [] => 0
  | x :: xs => (x : ℂ) + g * evalK16 g xs

@[simp] lemma evalK16_nil (g : ℂ) : evalK16 g [] = 0 := rfl

@[simp] lemma evalK16_cons (g : ℂ) (c : ℚ) (cs : List ℚ) :
    evalK16 g (c :: cs) = (c : ℂ) + g * evalK16 g cs := rfl

lemma evalK16_append (g : ℂ) (xs ys : List ℚ) :
    evalK16 g (xs ++ ys) = evalK16 g xs + g ^ xs.length * evalK16 g ys := by
  induction' xs with a as ih generalizing ys
  · simp [evalK16]
  · simp [evalK16_cons, ih, add_assoc, mul_add, add_mul]; ring

/-! ## 1. The K16 real root via IVT -/

def k16Poly : Polynomial ℝ :=
  Polynomial.monomial 16 (1 : ℝ) + Polynomial.monomial 14 (-10 : ℝ) +
  Polynomial.monomial 12 (40 : ℝ) + Polynomial.monomial 10 (-90 : ℝ) +
  Polynomial.monomial 8 (126 : ℝ) + Polynomial.monomial 6 (-96 : ℝ) +
  Polynomial.monomial 4 (25 : ℝ) + Polynomial.monomial 2 (2 : ℝ) +
  Polynomial.monomial 0 (1 : ℝ)

lemma poly_at_0 : k16Poly.eval (0 : ℝ) = 1 := by
  simp [k16Poly, Polynomial.eval]

lemma poly_at_1 : k16Poly.eval (1 : ℝ) = -1 := by
  simp [k16Poly, Polynomial.eval]; ring

lemma exists_root : ∃ g : ℝ, 0 < g ∧ g < 1 ∧ k16Poly.eval g = 0 := by
  have h0 : k16Poly.eval (0 : ℝ) > 0 := by rw [poly_at_0]; norm_num
  have h1 : k16Poly.eval (1 : ℝ) < 0 := by rw [poly_at_1]; norm_num
  have hab : (0 : ℝ) ≤ 1 := by norm_num
  have hc : ContinuousOn k16Poly.eval (Set.Icc (0 : ℝ) 1) :=
    k16Poly.continuous.continuousOn
  have hs : Set.Icc (k16Poly.eval (1 : ℝ)) (k16Poly.eval (0 : ℝ)) ⊆
      k16Poly.eval '' Set.Icc (0 : ℝ) 1 := intermediate_value_Icc' hab hc
  have hm : (0 : ℝ) ∈ Set.Icc (k16Poly.eval (1 : ℝ)) (k16Poly.eval (0 : ℝ)) := by
    rw [Set.mem_Icc]; constructor <;> linarith
  have him : (0 : ℝ) ∈ k16Poly.eval '' Set.Icc (0 : ℝ) 1 := hs hm
  rcases him with ⟨g, hg, hgv⟩
  have hg0 : g ≠ 0 := by rintro rfl; linarith
  have hg1 : g ≠ 1 := by rintro rfl; linarith
  obtain ⟨hge0, hle1⟩ := Set.mem_Icc.mp hg
  refine ⟨g, lt_of_le_of_ne hge0 (fun h => hg0 h.symm),
    lt_of_le_of_ne hle1 hg1, hgv⟩

noncomputable def g0 : ℝ := Classical.choose exists_root
lemma g0_pos : 0 < g0 := (Classical.choose_spec exists_root).1
lemma g0_lt_one : g0 < 1 := (Classical.choose_spec exists_root).2.1
lemma g0_root : k16Poly.eval g0 = 0 := (Classical.choose_spec exists_root).2.2

def g0C : ℂ := (g0 : ℂ)

/-! ## 2. Highest-first evaluation and reduceGo -/

def evalK16Hi (g : ℂ) (xs : List ℚ) : ℂ := evalK16 g xs.reverse

lemma evalK16Hi_nil (g : ℂ) : evalK16Hi g [] = 0 := by simp [evalK16Hi]

lemma evalK16Hi_cons (g : ℂ) (c : ℚ) (rest : List ℚ) :
    evalK16Hi g (c :: rest) = (c : ℂ) * g ^ rest.length + evalK16Hi g rest := by
  calc
    evalK16Hi g (c :: rest) = evalK16 g ((c :: rest).reverse) := rfl
    _ = evalK16 g (rest.reverse ++ [c]) := by rw [List.reverse_cons]
    _ = evalK16 g (rest.reverse) + g ^ (rest.reverse.length) * evalK16 g [c] := by rw [evalK16_append]
    _ = evalK16 g (rest.reverse) + g ^ rest.length * ((c : ℂ) + g * 0) := by simp
    _ = evalK16 g (rest.reverse) + g ^ rest.length * (c : ℂ) := by ring
    _ = evalK16Hi g rest + g ^ rest.length * (c : ℂ) := by rfl
    _ = (c : ℂ) * g ^ rest.length + evalK16Hi g rest := by ring

lemma evalK16Hi_append (g : ℂ) (xs ys : List ℚ) :
    evalK16Hi g (xs ++ ys) = evalK16Hi g ys + g ^ ys.length * evalK16Hi g xs := by
  calc
    evalK16Hi g (xs ++ ys) = evalK16 g ((xs ++ ys).reverse) := rfl
    _ = evalK16 g (ys.reverse ++ xs.reverse) := by rw [List.reverse_append]
    _ = evalK16 g (ys.reverse) + g ^ (ys.reverse.length) * evalK16 g (xs.reverse) := by rw [evalK16_append]
    _ = evalK16 g (ys.reverse) + g ^ ys.length * evalK16 g (xs.reverse) := by simp
    _ = evalK16Hi g ys + g ^ ys.length * evalK16Hi g xs := rfl

lemma evalK16Hi_kscale (g : ℂ) (c : ℚ) (v : List ℚ) :
    evalK16Hi g (kscale c v) = (c : ℂ) * evalK16Hi g v := by
  induction' v with a v' ih
  · simp [kscale, evalK16Hi_nil]
  · have hk : kscale c (a :: v') = (c * a) :: kscale c v' := by simp [kscale]
    have hlen : (kscale c v').length = v'.length := by simp [kscale]
    rw [hk, evalK16Hi_cons, evalK16Hi_cons, ih, hlen]
    push_cast; ring

/-- K16 reduction vector highest-first: g^16 = 10g^14 - 40g^12 + ... - 1 -/
def k16RedVec : List ℚ := [0, -10, 0, 40, 0, -90, 0, 126, 0, -96, 0, 25, 0, 2, 0, 1]

lemma k16RedVec_length : k16RedVec.length = 16 := by native_decide

lemma evalK16Hi_redVec_val : evalK16Hi g0C k16RedVec =
    (1 : ℂ) + 2*(g0C : ℂ)^2 + 25*(g0C : ℂ)^4 - 96*(g0C : ℂ)^6 + 126*(g0C : ℂ)^8
    - 90*(g0C : ℂ)^10 + 40*(g0C : ℂ)^12 - 10*(g0C : ℂ)^14 := by
  have hrev : k16RedVec.reverse =
      [1, 0, 2, 0, 25, 0, -96, 0, 126, 0, -90, 0, 40, 0, -10, 0] := by
    unfold k16RedVec; rfl
  unfold evalK16Hi
  rw [hrev]
  simp only [evalK16_cons, evalK16_nil]
  push_cast
  ring

lemma g0C_pow16_add_redVec : (g0C : ℂ) ^ 16 + evalK16Hi g0C k16RedVec = 0 := by
  rw [evalK16Hi_redVec_val]
  have hp : k16Poly.eval g0 = 0 := g0_root
  have hp_explicit : k16Poly.eval g0 =
      g0^16 - 10*g0^14 + 40*g0^12 - 90*g0^10
      + 126*g0^8 - 96*g0^6 + 25*g0^4 + 2*g0^2 + 1 := by
    simp only [k16Poly, Polynomial.eval_add, Polynomial.eval_monomial]
    ring
  rw [hp_explicit] at hp
  have hpC : (g0C : ℂ)^16 - 10*(g0C : ℂ)^14 + 40*(g0C : ℂ)^12 - 90*(g0C : ℂ)^10
      + 126*(g0C : ℂ)^8 - 96*(g0C : ℂ)^6 + 25*(g0C : ℂ)^4 + 2*(g0C : ℂ)^2 + 1 = 0 := by
    unfold g0C; exact_mod_cast hp
  linear_combination hpC

lemma g0C_pow16_eq : (g0C : ℂ) ^ 16 = -evalK16Hi g0C k16RedVec := by
  have h := g0C_pow16_add_redVec
  linear_combination h

lemma subHead_length (xs ys : List ℚ) : (subHead xs ys).length = xs.length := by
  induction' xs with x xs' ih generalizing ys
  · cases ys <;> rfl
  · cases' ys with y ys'
    · rfl
    · simp only [subHead, List.length_cons, ih]

lemma evalK16Hi_subHead_eqlen (g : ℂ) (xs ys : List ℚ) (h : xs.length = ys.length) :
    evalK16Hi g (subHead xs ys) = evalK16Hi g xs - evalK16Hi g ys := by
  induction' xs with x xs' ih generalizing ys
  · cases' ys with y ys'
    · simp [subHead, evalK16Hi_nil]
    · simp at h
  · cases' ys with y ys'
    · simp at h
    · have hlen : xs'.length = ys'.length := by simpa using h
      show evalK16Hi g ((x - y) :: subHead xs' ys')
         = evalK16Hi g (x :: xs') - evalK16Hi g (y :: ys')
      rw [evalK16Hi_cons, subHead_length, evalK16Hi_cons, evalK16Hi_cons,
          ih ys' hlen, hlen]
      push_cast; ring

lemma subHead_append_eqlen (xs ys zs : List ℚ) (h : xs.length = zs.length) :
    subHead (xs ++ ys) zs = (subHead xs zs) ++ ys := by
  induction' xs with x xs' ih generalizing ys zs
  · cases' zs with z zs'
    · simp [subHead]
    · simp at h
  · cases' zs with z zs'
    · simp at h
    · have hlen : xs'.length = zs'.length := by simpa using h
      simp only [List.cons_append, subHead, ih ys zs' hlen]

lemma reduceGo_step (c : ℚ) (rest : List ℚ) (h : rest.length ≥ 16) :
    evalK16Hi g0C (c :: rest) = evalK16Hi g0C (subHead rest (kscale c k16RedVec)) := by
  set a := rest.take 16
  set b := rest.drop 16
  have hsplit : rest = a ++ b := by simp [a, b]
  have hla : a.length = 16 := by simp [a, List.length_take_of_le h]
  have hlkv : (kscale c k16RedVec).length = 16 := by
    simp [kscale, k16RedVec_length]
  calc
    evalK16Hi g0C (c :: rest)
        = (c : ℂ) * (g0C : ℂ) ^ (a ++ b).length + evalK16Hi g0C (a ++ b) := by
      rw [hsplit, evalK16Hi_cons]
    _ = (c : ℂ) * (g0C : ℂ) ^ (16 + b.length) +
        (evalK16Hi g0C b + (g0C : ℂ) ^ b.length * evalK16Hi g0C a) := by
      simp [hla, evalK16Hi_append, add_comm, add_left_comm]
    _ = evalK16Hi g0C b + (g0C : ℂ) ^ b.length * evalK16Hi g0C a +
        (c : ℂ) * ((g0C : ℂ) ^ 16 * (g0C : ℂ) ^ b.length) := by ring
    _ = evalK16Hi g0C b + (g0C : ℂ) ^ b.length *
        (evalK16Hi g0C a + (c : ℂ) * (g0C : ℂ) ^ 16) := by ring
    _ = evalK16Hi g0C b + (g0C : ℂ) ^ b.length *
        (evalK16Hi g0C a - (c : ℂ) * evalK16Hi g0C k16RedVec) := by
      rw [g0C_pow16_eq]; ring
    _ = evalK16Hi g0C b + (g0C : ℂ) ^ b.length *
        evalK16Hi g0C (subHead a (kscale c k16RedVec)) := by
      rw [evalK16Hi_subHead_eqlen g0C a (kscale c k16RedVec) (by rw [hla, hlkv]),
          evalK16Hi_kscale]
    _ = evalK16Hi g0C ((subHead a (kscale c k16RedVec)) ++ b) := by rw [evalK16Hi_append]
    _ = evalK16Hi g0C (subHead (a ++ b) (kscale c k16RedVec)) := by
      rw [subHead_append_eqlen a b (kscale c k16RedVec) (by rw [hla, hlkv])]
    _ = evalK16Hi g0C (subHead rest (kscale c k16RedVec)) := by rw [hsplit]

lemma reduceGo_eval (fuel : ℕ) (xs : List ℚ) :
    evalK16Hi g0C (reduceGo fuel xs) = evalK16Hi g0C xs := by
  induction' fuel with k ih generalizing xs
  · rfl
  · unfold reduceGo
    split
    · rfl
    · cases' xs with c rest
      · rfl
      · rw [ih]
        have hlen : rest.length ≥ 16 := by
          have h_notle : ¬((c :: rest).length ≤ 16) := by assumption
          simp only [List.length_cons] at h_notle
          omega
        exact (reduceGo_step c rest hlen).symm

lemma evalK16_replicate_zero (g : ℂ) (n : ℕ) :
    evalK16 g (List.replicate n (0 : ℚ)) = 0 := by
  induction' n with k ih
  · simp [evalK16]
  · rw [List.replicate_succ, evalK16_cons, ih]; simp

lemma evalK16_padZeros (g : ℂ) (v : List ℚ) (n : ℕ) :
    evalK16 g (v ++ List.replicate n (0 : ℚ)) = evalK16 g v := by
  rw [evalK16_append, evalK16_replicate_zero]; simp

/-! ## 3. evalK16 is a ring hom at g0C -/

/-- Key lemma: pmul corresponds to polynomial multiplication.
    evalK16 distributes over pmul at any evaluation point. -/
lemma evalK16_padd (g : ℂ) (v w : List ℚ) :
    evalK16 g (padd v w) = evalK16 g v + evalK16 g w := by
  induction' v with a v' ih generalizing w
  · unfold padd; cases w <;> simp [evalK16]
  · cases' w with b w'
    · unfold padd; simp [evalK16]
    · unfold padd; simp [evalK16, ih w']; ring

lemma evalK16_kscale (g : ℂ) (c : ℚ) (v : List ℚ) :
    evalK16 g (kscale c v) = (c : ℂ) * evalK16 g v := by
  induction' v with a v' ih
  · simp [kscale, evalK16]
  · calc
      evalK16 g (kscale c (a :: v'))
          = evalK16 g ((a :: v').map (c * ·)) := rfl
      _ = evalK16 g ((c * a) :: v'.map (c * ·)) := by simp [List.map_cons]
      _ = ((c * a : ℚ) : ℂ) + g * evalK16 g (v'.map (c * ·)) := by simp [evalK16]
      _ = ((c : ℂ) * (a : ℂ)) + g * evalK16 g (v'.map (c * ·)) := by push_cast; rfl
      _ = ((c : ℂ) * (a : ℂ)) + g * evalK16 g (kscale c v') := by simp [kscale]
      _ = (c : ℂ) * (a : ℂ) + g * ((c : ℂ) * evalK16 g v') := by rw [ih]
      _ = (c : ℂ) * ((a : ℂ) + g * evalK16 g v') := by ring
      _ = (c : ℂ) * evalK16 g (a :: v') := by simp [evalK16]

lemma evalK16_pmul (g : ℂ) (v w : List ℚ) :
    evalK16 g (pmul v w) = evalK16 g v * evalK16 g w := by
  induction' v with a v' ih generalizing w
  · unfold pmul; simp [evalK16]
  · calc
      evalK16 g (pmul (a :: v') w)
          = evalK16 g (padd (kscale a w) (0 :: pmul v' w)) := by
            unfold pmul; simp [List.foldr]
      _ = evalK16 g (kscale a w) + evalK16 g (0 :: pmul v' w) := by rw [evalK16_padd]
      _ = evalK16 g (kscale a w) + g * evalK16 g (pmul v' w) := by simp [evalK16]
      _ = evalK16 g (kscale a w) + g * (evalK16 g v' * evalK16 g w) := by rw [ih w]
      _ = ((a : ℂ) * evalK16 g w) + g * (evalK16 g v' * evalK16 g w) := by rw [evalK16_kscale]
      _ = ((a : ℂ) + g * evalK16 g v') * evalK16 g w := by ring
      _ = evalK16 g (a :: v') * evalK16 g w := by simp [evalK16]

theorem evalK16_kadd (v w : K16) :
    evalK16 g0C (kadd v w) = evalK16 g0C v + evalK16 g0C w := by
  unfold kadd; exact evalK16_padd g0C v w

theorem evalK16_kmul (v w : K16) :
    evalK16 g0C (kmul v w) = evalK16 g0C v * evalK16 g0C w := by
  unfold kmul
  rw [evalK16_padZeros g0C ((reduceGo 31 (pmul v w).reverse).reverse)
    (16 - ((reduceGo 31 (pmul v w).reverse).reverse).length)]
  calc
    evalK16 g0C ((reduceGo 31 (pmul v w).reverse).reverse)
        = evalK16Hi g0C (reduceGo 31 (pmul v w).reverse) := by simp [evalK16Hi]
    _ = evalK16Hi g0C (pmul v w).reverse := by rw [reduceGo_eval]
    _ = evalK16 g0C (pmul v w) := by simp [evalK16Hi]
    _ = evalK16 g0C v * evalK16 g0C w := by rw [evalK16_pmul]

/-! ## 4. Generator values in C -/

noncomputable def sVal (k : ℕ) : ℂ :=
  Complex.sqrt (evalK16 g0C (covK k))

def iVal : ℂ := Complex.I

noncomputable def c5Val : ℂ :=
  let oa := evalK16 g0C OA5
  let ob := evalK16 g0C OB5
  (-oa + Complex.sqrt (oa ^ 2 - 4 * ob)) / 2

noncomputable def u1Val : ℂ :=
  Complex.sqrt (evalK16 g0C C2H + Complex.I * evalK16 g0C S2H)

/-! ## 5. The ring hom phi : RElt -> C -/

noncomputable def evalKey (key : ℕ) (v : K16) : ℂ :=
  let cov := key % 16
  let ei := key / 16 % 2
  let e5 := key / 32 % 2
  let e1 := key / 64
  let base := evalK16 g0C v
  let scov := ((if cov % 2 = 1 then sVal 0 else 1) *
               (if (cov / 2) % 2 = 1 then sVal 1 else 1) *
               (if (cov / 4) % 2 = 1 then sVal 2 else 1) *
               (if (cov / 8) % 2 = 1 then sVal 3 else 1))
  base * scov * (iVal ^ ei) * (c5Val ^ e5) * (u1Val ^ e1)

noncomputable def phi (A : RElt) : ℂ :=
  (A.map fun p => evalKey p.1 p.2).sum

@[simp] theorem phi_nil : phi [] = 0 := rfl

theorem phi_rK (v : K16) : phi (rK v) = evalK16 g0C v := by
  simp [phi, rK, evalKey]

lemma evalKey_kadd_key (k : ℕ) (v w : K16) :
    evalKey k (kadd v w) = evalKey k v + evalKey k w := by
  unfold evalKey
  rw [evalK16_kadd]
  ring

@[simp] lemma phi_cons (p : ℕ × K16) (rest : RElt) :
    phi (p :: rest) = evalKey p.1 p.2 + phi rest := by
  simp [phi]

lemma evalK16_of_isZeroK (g : ℂ) :
    ∀ (v : List ℚ), isZeroK v = true → evalK16 g v = 0 := by
  intro v
  induction' v with a v' ih
  · intro _; simp [evalK16]
  · intro h
    simp only [isZeroK, List.all_cons, Bool.and_eq_true, beq_iff_eq] at h
    obtain ⟨ha, hv'⟩ := h
    rw [evalK16_cons, ha, ih (by simpa [isZeroK] using hv')]; simp

lemma evalKey_of_isZeroK (k : ℕ) (v : K16) (h : isZeroK v = true) :
    evalKey k v = 0 := by
  simp only [evalKey, evalK16_of_isZeroK g0C v h, zero_mul]

/-- The linchpin: inserting one (key, value) into a sorted assoc list adds its
    `evalKey` to `phi`, regardless of whether it lands fresh, merges, or cancels. -/
lemma phi_insertAdd (acc : RElt) (k : ℕ) (v : K16) :
    phi (insertAdd acc k v) = phi acc + evalKey k v := by
  induction' acc with p rest ih
  · simp only [insertAdd]
    split
    · rename_i hz; rw [evalKey_of_isZeroK k v hz]; simp
    · simp
  · obtain ⟨k', v'⟩ := p
    simp only [insertAdd]
    split
    · -- k < k'
      split
      · rename_i hz; rw [evalKey_of_isZeroK k v hz]; simp
      · simp only [phi_cons]; ring
    · split
      · -- k == k'
        rename_i hkk
        have hk : k = k' := by simpa using hkk
        split
        · -- isZeroK (kadd v' v): the merged entry cancels
          rename_i hw
          have hz : evalKey k' v' + evalKey k' v = 0 := by
            rw [← evalKey_kadd_key]; exact evalKey_of_isZeroK k' (kadd v' v) hw
          simp only [phi_cons]; subst hk; linear_combination -hz
        · -- merged entry survives
          rename_i hw
          simp only [phi_cons]; subst hk
          rw [evalKey_kadd_key]; ring
      · -- k ≠ k', recurse into the tail
        simp only [phi_cons]; rw [ih]; ring

lemma phi_foldl_insertAdd (L : List (ℕ × K16)) (acc : RElt) :
    phi (L.foldl (fun a p => insertAdd a p.1 p.2) acc)
      = phi acc + (L.map (fun p => evalKey p.1 p.2)).sum := by
  induction' L with p L' ih generalizing acc
  · simp
  · simp only [List.foldl_cons, List.map_cons, List.sum_cons]
    rw [ih (insertAdd acc p.1 p.2), phi_insertAdd]
    ring

/-- phi respects addition: phi(radd A B) = phi A + phi B. -/
theorem phi_radd (A B : RElt) : phi (radd A B) = phi A + phi B := by
  unfold radd
  rw [phi_foldl_insertAdd]
  rfl

/-- phi respects multiplication: phi(rmul A B) = phi A * phi B. -/
theorem phi_rmul (A B : RElt) : phi (rmul A B) = phi A * phi B := by
  sorry

/-- phi respects conjugation: phi(rconj A) = star (phi A). -/
theorem phi_rconj (A : RElt) : phi (rconj A) = star (phi A) := by
  sorry

/-! ## 6. The SIC-POVM fiducial -/

noncomputable def psi : Fin 12 → ℂ := fun k => phi (rZ k.val)

theorem norm_sq_eq_one : wh_normSq 12 psi = 1 := by
  sorry

theorem equiangular : ∀ (a b : Fin 12), (a, b) ≠ (0, 0) →
    ((12 : ℝ) + 1) * ‖wh_inner 12 psi (D_ah 12 a b 0 psi)‖ ^ 2 = 1 := by
  sorry

theorem d12_sic_exists : IsSICPOVM 12 psi :=
  { norm_eq := norm_sq_eq_one
    equiangular := equiangular }

theorem crystal_forces_d12_sic : SICPOVM_Exists 12 := by
  refine ⟨psi, d12_sic_exists⟩

end
end SIC.D12.Embedding
