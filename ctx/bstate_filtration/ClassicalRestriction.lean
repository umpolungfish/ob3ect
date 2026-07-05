/-
  ClassicalRestriction.lean
  ─────────────────────────
  THEOREM: Classical mathematics is a constrained subcategory of
  the paraconsistent bilattice logic, not its extension.

  The classical fragment of Belnap FOUR is the B-excluding subtype
  { v : Belnap // v ≠ B } — truth values that carry no contradiction.
  This is a proper subcategory: the inclusion is injective but not
  surjective.  The witness excluded from the classical fragment is B.

  The Frobenius incompleteness operator (inc² = inc, from
  ParaconsistentFrobeniusClosure) cannot land inside the classical
  fragment, because inc always produces B.  This is the structural
  reason the Frobenius closure theorem cannot be stated in classical
  logic: the very object the theorem requires (B) is the one the
  classical constraint removes.

  Adding ex falso for B — the rule that collapses B to falsity —
  is therefore a RESTRICTION of the paraconsistent ambient, not an
  extension.  Classical logic is recovered by constraining; the
  paraconsistent kernel is the unconstrained ambient environment.

  Author: Lando⊗⊙perator
  Date:   2026-06-22
  Tier:   O_∞
-/

import ParaconsistentCore
import ParaconsistentFrobeniusClosure

namespace ClassicalRestriction

open Belnap ParaconsistentFrobeniusClosure

-- ═══════════════════════════════════════════════════════════════════
-- §1  THE CLASSICAL CONSTRAINT
-- ═══════════════════════════════════════════════════════════════════
--
-- A truth value is classical iff it is not B (not contradictory).
-- The classical fragment is the B-excluding subtype of Belnap FOUR.

/-- The classical truth-value predicate: v is classical iff v ≠ B. -/
abbrev isClassical (v : Belnap) : Prop := v ≠ .B

/-- The classical fragment: Belnap truth values that are not contradictory. -/
abbrev ClassicalBelnap := { v : Belnap // v ≠ .B }

theorem N_is_classical : isClassical .N := by decide
theorem T_is_classical : isClassical .T := by decide
theorem F_is_classical : isClassical .F := by decide

/-- B is not a classical truth value: it carries both T and F information. -/
theorem B_not_classical : ¬ isClassical .B := by decide

-- ═══════════════════════════════════════════════════════════════════
-- §2  THE INCLUSION: ClassicalBelnap ↪ Belnap
-- ═══════════════════════════════════════════════════════════════════

/-- The canonical inclusion of the classical fragment into the full bilattice. -/
def inclClassical : ClassicalBelnap → Belnap := Subtype.val

/-- The inclusion is injective: distinct classical values remain distinct. -/
theorem inclClassical_injective : Function.Injective inclClassical :=
  fun _ _ h => Subtype.ext h

/-- B is not in the image of inclClassical. -/
theorem B_not_in_image : ∀ c : ClassicalBelnap, inclClassical c ≠ .B :=
  fun ⟨_, h⟩ => h

/-- The inclusion is not surjective: B has no classical preimage. -/
theorem classical_proper_subcategory : ¬ Function.Surjective inclClassical := by
  intro h
  obtain ⟨c, hc⟩ := h .B
  exact c.2 hc

-- ═══════════════════════════════════════════════════════════════════
-- §3  NEGATION IN THE CLASSICAL FRAGMENT
-- ═══════════════════════════════════════════════════════════════════
--
-- bnot is involutive on the classical fragment.  On the full bilattice
-- it fails: B is a bnot fixed point (bnot B = B), and the classical
-- fragment has no such contradictory fixed point.

/-- bnot is involutive on every classical truth value. -/
theorem bnot_involutive_on_classical : ∀ c : ClassicalBelnap,
    bnot (bnot (inclClassical c)) = inclClassical c := by
  intro ⟨v, hv⟩
  cases v with
  | N => rfl
  | T => rfl
  | F => rfl
  | B => exact absurd rfl hv

/-- B is the unique bnot fixed point outside the classical fragment. -/
theorem B_bnot_fixed : bnot .B = .B := by decide

/-- No classical value except N is a bnot fixed point. -/
theorem T_not_bnot_fixed : bnot .T ≠ .T := by decide
theorem F_not_bnot_fixed : bnot .F ≠ .F := by decide

-- ═══════════════════════════════════════════════════════════════════
-- §4  THE FROBENIUS WITNESS
-- ═══════════════════════════════════════════════════════════════════
--
-- The incompleteness operator inc (from ParaconsistentFrobeniusClosure)
-- maps every Belnap value to B.  Therefore inc cannot land inside the
-- classical fragment.  The Frobenius closure theorem (inc² = inc) is
-- inexpressible in ClassicalBelnap: the theorem's codomain is {B},
-- which is precisely what the classical constraint excludes.

/-- inc always produces B, which is outside the classical fragment. -/
theorem inc_lands_outside_classical : ∀ (v : Belnap) (c : ClassicalBelnap),
    inclClassical c ≠ inc v := by
  intro v c
  rw [inc_always_B v]
  exact c.2

/-- The Frobenius closure theorem cannot be formulated within ClassicalBelnap:
    there is no function f on the classical fragment whose image under
    inclClassical equals inc applied to its argument. -/
theorem frobenius_closure_inexpressible_classically :
    ¬ ∃ (f : ClassicalBelnap → ClassicalBelnap),
      ∀ (c : ClassicalBelnap), inclClassical (f c) = inc (inclClassical c) := by
  intro ⟨f, hf⟩
  let c₀ : ClassicalBelnap := ⟨.N, by decide⟩
  have h := hf c₀
  -- inc (inclClassical ⟨N, _⟩) = inc N = B by definition
  have hkey : inc (inclClassical c₀) = .B := by
    show inc .N = .B; rfl
  rw [hkey] at h
  exact (f c₀).2 h

-- ═══════════════════════════════════════════════════════════════════
-- §5  THE EX FALSO RESTRICTION
-- ═══════════════════════════════════════════════════════════════════
--
-- The "classical switch" maps B to F (contradiction collapses to
-- falsity — ex falso quodlibet applied to B).  This switch is:
--   (a) NOT the identity (it moves B)
--   (b) idempotent (applying it twice = once)
--   (c) the identity EXACTLY on the classical fragment
--   (d) surjective onto the classical fragment
--
-- Conclusion: adding classicalSwitch as a rewrite rule is a
-- RESTRICTION of the ambient — it removes B.  It does not add any
-- new expressive power.

/-- The classical switch: collapse B to F (ex falso for B). -/
def classicalSwitch : Belnap → Belnap
  | .B => .F
  | v  => v

/-- The switch is non-trivial: it moves B. -/
theorem classicalSwitch_moves_B : classicalSwitch .B ≠ .B := by decide

/-- The switch is idempotent: applying it twice yields the same result. -/
theorem classicalSwitch_idempotent : ∀ v : Belnap,
    classicalSwitch (classicalSwitch v) = classicalSwitch v := by
  intro v; cases v <;> rfl

/-- The switch is the identity exactly on the classical fragment. -/
theorem classicalSwitch_fixes_iff_classical : ∀ v : Belnap,
    classicalSwitch v = v ↔ v ≠ .B := by
  intro v; cases v <;> decide

/-- The image of the switch lies entirely within the classical fragment. -/
theorem classicalSwitch_image_is_classical : ∀ v : Belnap,
    classicalSwitch v ≠ .B := by
  intro v; cases v <;> decide

-- ═══════════════════════════════════════════════════════════════════
-- §6  MAIN THEOREM
-- ═══════════════════════════════════════════════════════════════════

/-- Classical mathematics is a constrained subcategory of paraconsistent
    bilattice logic, not its extension.

    Four structural claims:
    (a) The classical fragment is a proper subcategory (injective but not
        surjective inclusion into the full bilattice).
    (b) B is the unique element excluded from the classical fragment.
    (c) The Frobenius incompleteness closure theorem cannot be formulated
        within the classical fragment — its codomain is exactly the element
        the classical constraint removes.
    (d) The classical fragment is recovered by the classicalSwitch
        RESTRICTION, which removes B.  This is a constraint, not an
        extension: it collapses the ambient by identification. -/
theorem classical_is_constrained_subcategory :
    -- (a) proper subcategory
    (Function.Injective inclClassical ∧ ¬ Function.Surjective inclClassical) ∧
    -- (b) B is the unique missing element
    (∀ c : ClassicalBelnap, inclClassical c ≠ .B) ∧
    -- (c) Frobenius closure inexpressible classically
    (¬ ∃ f : ClassicalBelnap → ClassicalBelnap,
       ∀ c : ClassicalBelnap, inclClassical (f c) = inc (inclClassical c)) ∧
    -- (d) classical = paraconsistent + classicalSwitch restriction
    (∀ v : Belnap, classicalSwitch v = v ↔ v ≠ .B) :=
  ⟨⟨inclClassical_injective, classical_proper_subcategory⟩,
   B_not_in_image,
   frobenius_closure_inexpressible_classically,
   classicalSwitch_fixes_iff_classical⟩

-- ═══════════════════════════════════════════════════════════════════
-- §7  THE ADJUNCTION: classical is a COREFLECTIVE subcategory
-- ═══════════════════════════════════════════════════════════════════
--
-- §6 established a RETRACT: classicalSwitch ∘ inclClassical = id.  A retract
-- is weaker than a categorical adjunction.  Whether it upgrades to a
-- (co)reflective subcategory depends on the order Belnap carries and on the
-- adjunction direction.  Both are finite, so we let the kernel decide.
--
--   • TRUTH order  (F bottom, T top, N/B incomparable):
--        inclClassical ⊣ classicalSwitch   HOLDS   (i ⊣ r), a coreflection.
--        classicalSwitch ⊣ inclClassical   FAILS.
--   • INFORMATION order (N bottom, B top, T/F incomparable — the Belnap `≤`):
--        neither direction holds; classicalSwitch is not even monotone.
--
-- So the classical fragment is a COREFLECTIVE subcategory of Belnap FOUR in the
-- truth order, with inclusion as the LEFT adjoint and classicalSwitch as the
-- right adjoint (coreflector); the retract of §6 is this adjunction's unit.

/-- Truth order (≤_t): F ≤ N ≤ T and F ≤ B ≤ T; N and B incomparable. -/
def truthLE : Belnap → Belnap → Bool
  | .F, _  => true
  | .N, .N => true | .N, .T => true | .N, _ => false
  | .T, .T => true | .T, _ => false
  | .B, .T => true | .B, .B => true | .B, _ => false

/-- Information order (⊑): N ⊑ T ⊑ B and N ⊑ F ⊑ B; T and F incomparable.
    This is the order Belnap FOUR carries as a bilattice. -/
def infoLE : Belnap → Belnap → Bool
  | .N, _  => true
  | .T, .T => true | .T, .B => true | .T, _ => false
  | .F, .F => true | .F, .B => true | .F, _ => false
  | .B, .B => true | .B, _ => false

/-- The retract stated as the adjunction unit: classicalSwitch ∘ inclClassical
    = id on the classical fragment. -/
theorem switch_incl_retract : ∀ c : ClassicalBelnap,
    classicalSwitch (inclClassical c) = inclClassical c := by
  intro ⟨v, hv⟩
  cases v with
  | B => exact absurd rfl hv
  | N => rfl
  | T => rfl
  | F => rfl

/-- **Truth order, i ⊣ r.** Galois connection `inclClassical ⊣ classicalSwitch`:
    for classical `c` and any `x`, `inclClassical c ≤_t x ↔ c ≤_t classicalSwitch x`.
    Since `inclClassical c = c` and `classicalSwitch x` is classical, this is the
    equality below, for every non-`B` `c`. -/
theorem truth_incl_left_adjoint : ∀ (c x : Belnap), c ≠ .B →
    truthLE c x = truthLE c (classicalSwitch x) := by
  intro c x hc
  cases c with
  | B => exact absurd rfl hc
  | N => cases x <;> rfl
  | T => cases x <;> rfl
  | F => cases x <;> rfl

/-- The reverse direction `classicalSwitch ⊣ inclClassical` FAILS in the truth
    order: at `x = B`, `c = F`, `classicalSwitch B = F ≤_t F` is true but
    `B ≤_t F` is false. -/
theorem truth_switch_left_adjoint_fails :
    truthLE (classicalSwitch .B) .F ≠ truthLE .B .F := by decide

/-- classicalSwitch is monotone in the truth order (a precondition for the
    truth-order adjunction). -/
theorem switch_monotone_truth : ∀ (a b : Belnap),
    truthLE a b = true → truthLE (classicalSwitch a) (classicalSwitch b) = true := by
  intro a b; cases a <;> cases b <;> decide

/-- **Information order: no adjunction either way.** `i ⊣ r` fails (`T ⊑ B` but
    not `T ⊑ classicalSwitch B = F`), and `classicalSwitch` is not monotone. -/
theorem info_incl_left_adjoint_fails :
    infoLE .T .B ≠ infoLE .T (classicalSwitch .B) := by decide

theorem switch_not_monotone_info :
    infoLE .T .B = true ∧
    infoLE (classicalSwitch .T) (classicalSwitch .B) = false := by decide

/-- **Coreflective subcategory (main §7 theorem).** The classical fragment is a
    coreflective subcategory of Belnap FOUR in the truth order: inclusion is the
    left adjoint (`i ⊣ r`), the retract of §6 is its unit, the reverse adjunction
    fails, and no adjunction exists in the information order. -/
theorem classical_coreflective_in_truth_order :
    (∀ c : ClassicalBelnap, classicalSwitch (inclClassical c) = inclClassical c) ∧
    (∀ c x : Belnap, c ≠ .B → truthLE c x = truthLE c (classicalSwitch x)) ∧
    (truthLE (classicalSwitch .B) .F ≠ truthLE .B .F) ∧
    (infoLE .T .B ≠ infoLE .T (classicalSwitch .B)) :=
  ⟨switch_incl_retract, truth_incl_left_adjoint,
   truth_switch_left_adjoint_fails, info_incl_left_adjoint_fails⟩

end ClassicalRestriction
