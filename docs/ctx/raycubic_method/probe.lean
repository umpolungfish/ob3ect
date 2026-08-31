import Mathlib
import Imscribing.Millennium.SIC_D12_RayTower

namespace SIC.D12.Seal
open SIC.D12.RayTower

@[simp] theorem q0a : (0 : Q13).a = 0 := rfl
@[simp] theorem q0b : (0 : Q13).b = 0 := rfl
@[simp] theorem q1a : (1 : Q13).a = 1 := rfl
@[simp] theorem q1b : (1 : Q13).b = 0 := rfl
@[simp] theorem qma (x y : Q13) : (x * y).a = x.a * y.a + 13 * (x.b * y.b) := rfl
@[simp] theorem qmb (x y : Q13) : (x * y).b = x.a * y.b + x.b * y.a := rfl

@[simp] theorem e0a {B} [Zero B] : (0 : Ext2 B).a = 0 := rfl
@[simp] theorem e0b {B} [Zero B] : (0 : Ext2 B).b = 0 := rfl
@[simp] theorem e1a {B} [Zero B] [One B] : (1 : Ext2 B).a = 1 := rfl
@[simp] theorem e1b {B} [Zero B] [One B] : (1 : Ext2 B).b = 0 := rfl
@[simp] theorem m2a {B} [Add B] (mB : B → B → B) (r : B) (x y : Ext2 B) :
    (mul2 mB r x y).a = mB x.a y.a + mB r (mB x.b y.b) := rfl
@[simp] theorem m2b {B} [Add B] (mB : B → B → B) (r : B) (x y : Ext2 B) :
    (mul2 mB r x y).b = mB x.a y.b + mB x.b y.a := rfl

/-- Componentwise extensionality: the frame each deposit is banked in. -/
theorem q_ext {x y : Q13} (ha : x.a = y.a) (hb : x.b = y.b) : x = y := by
  cases x; cases y; simp_all
theorem e_ext {B} {x y : Ext2 B} (ha : x.a = y.a) (hb : x.b = y.b) : x = y := by
  cases x; cases y; simp_all

/-- base deposits: Q13 -/
theorem qzl (z : Q13) : mulQ 0 z = 0 := q_ext (by simp [mulQ]) (by simp [mulQ])
theorem qzr (z : Q13) : mulQ z 0 = 0 := q_ext (by simp [mulQ]) (by simp [mulQ])
theorem qol (z : Q13) : mulQ 1 z = z := q_ext (by simp [mulQ]) (by simp [mulQ])
theorem qor (z : Q13) : mulQ z 1 = z := q_ext (by simp [mulQ]) (by simp [mulQ])

/-- one layer up: zero and one propagate, given they hold below. Pure symbol
    movement -- no product is ever evaluated. -/
theorem lift_zl {B} [Zero B] [Add B] (mB : B → B → B) (r : B)
    (hzl : ∀ z, mB 0 z = 0) (hzr : ∀ z, mB z 0 = 0) (haz : (0:B) + 0 = 0) (y : Ext2 B) :
    mul2 mB r 0 y = 0 :=
  e_ext (by simp [hzl, hzr, haz]) (by simp [hzl, haz])
theorem lift_zr {B} [Zero B] [Add B] (mB : B → B → B) (r : B)
    (hzl : ∀ z, mB 0 z = 0) (hzr : ∀ z, mB z 0 = 0) (haz : (0:B) + 0 = 0) (x : Ext2 B) :
    mul2 mB r x 0 = 0 :=
  e_ext (by simp [hzl, hzr, haz]) (by simp [hzr, haz])
theorem lift_ol {B} [Zero B] [One B] [Add B] (mB : B → B → B) (r : B)
    (hzl : ∀ z, mB 0 z = 0) (hzr : ∀ z, mB z 0 = 0) (hol : ∀ z, mB 1 z = z)
    (haz : (0:B) + 0 = 0) (hz0 : ∀ z : B, z + 0 = z) (h0z : ∀ z : B, 0 + z = z) (y : Ext2 B) :
    mul2 mB r 1 y = y :=
  e_ext (by simp [hzl, hzr, hol, hz0]) (by simp [hzl, hol, hz0, h0z])


@[simp] theorem qaa (x y : Q13) : (x + y).a = x.a + y.a := rfl
@[simp] theorem qab (x y : Q13) : (x + y).b = x.b + y.b := rfl
@[simp] theorem eaa {B} [Add B] (x y : Ext2 B) : (x + y).a = x.a + y.a := rfl
@[simp] theorem eab {B} [Add B] (x y : Ext2 B) : (x + y).b = x.b + y.b := rfl

theorem q00 : (0:Q13) + 0 = 0 := q_ext (by simp) (by simp)
theorem qa0 (z : Q13) : z + 0 = z := q_ext (by simp) (by simp)
theorem q0a' (z : Q13) : 0 + z = z := q_ext (by simp) (by simp)
theorem e00 {B} [Zero B] [Add B] (h : (0:B)+0 = 0) : (0 : Ext2 B) + 0 = 0 :=
  e_ext (by simp [h]) (by simp [h])
theorem ea0 {B} [Zero B] [Add B] (h : ∀ z : B, z + 0 = z) (z : Ext2 B) : z + 0 = z :=
  e_ext (by simp [h]) (by simp [h])
theorem e0a' {B} [Zero B] [Add B] (h : ∀ z : B, 0 + z = z) (z : Ext2 B) : 0 + z = z :=
  e_ext (by simp [h]) (by simp [h])

-- layer 1
theorem m1zl (z : L1) : mul1 0 z = 0 := lift_zl mulQ r1 qzl qzr q00 z
theorem m1zr (z : L1) : mul1 z 0 = 0 := lift_zr mulQ r1 qzl qzr q00 z
theorem m1ol (z : L1) : mul1 1 z = z := lift_ol mulQ r1 qzl qzr qol q00 qa0 q0a' z
theorem a1_00 : (0:L1) + 0 = 0 := e00 q00
theorem a1_z0 (z : L1) : z + 0 = z := ea0 qa0 z
theorem a1_0z (z : L1) : 0 + z = z := e0a' q0a' z
-- layer 2
theorem m2zl (z : L2) : mul2' 0 z = 0 := lift_zl mul1 r2 m1zl m1zr a1_00 z
theorem m2zr (z : L2) : mul2' z 0 = 0 := lift_zr mul1 r2 m1zl m1zr a1_00 z
theorem m2ol (z : L2) : mul2' 1 z = z := lift_ol mul1 r2 m1zl m1zr m1ol a1_00 a1_z0 a1_0z z
theorem a2_00 : (0:L2) + 0 = 0 := e00 a1_00
theorem a2_z0 (z : L2) : z + 0 = z := ea0 a1_z0 z
theorem a2_0z (z : L2) : 0 + z = z := e0a' a1_0z z
-- layer 3
theorem m3zl (z : L3) : mul3 0 z = 0 := lift_zl mul2' r3 m2zl m2zr a2_00 z
theorem m3zr (z : L3) : mul3 z 0 = 0 := lift_zr mul2' r3 m2zl m2zr a2_00 z
theorem m3ol (z : L3) : mul3 1 z = z := lift_ol mul2' r3 m2zl m2zr m2ol a2_00 a2_z0 a2_0z z
theorem a3_00 : (0:L3) + 0 = 0 := e00 a2_00
theorem a3_z0 (z : L3) : z + 0 = z := ea0 a2_z0 z
theorem a3_0z (z : L3) : 0 + z = z := e0a' a2_0z z
-- layer 4: the degree-32 field, reached without evaluating a single product
theorem m4zl (z : L4) : mul4 0 z = 0 := lift_zl mul3 r4 m3zl m3zr a3_00 z
theorem m4zr (z : L4) : mul4 z 0 = 0 := lift_zr mul3 r4 m3zl m3zr a3_00 z
theorem m4ol (z : L4) : mul4 1 z = z := lift_ol mul3 r4 m3zl m3zr m3ol a3_00 a3_z0 a3_0z z
theorem a4_z0 (z : L4) : z + 0 = z := ea0 a3_z0 z
theorem a4_0z (z : L4) : 0 + z = z := e0a' a3_0z z

end SIC.D12.Seal
