postulate ℝ : Set
postulate _+_ _*_ : ℝ → ℝ → ℝ
postulate _≈_ _≤_ : ℝ → ℝ → Set

postulate -   : ℝ → ℝ
postulate ∣_∣ : ℝ → ℝ

postulate zero one : ℝ

infix 1 _≈_ _≤_
infixl 4 _+_
infixl 5 _*_
infix 6 ∣_∣

postulate ≈sym :   ∀ x      → x ≈ x
postulate ≈refl :  ∀{x y}   → x ≈ y → y ≈ x
postulate ≈trans : ∀{x y z} → x ≈ y → y ≈ z → x ≈ z

postulate ≤sym :   ∀ x      → x ≤ x
postulate ≤≥to≈ :  ∀{x y}   → x ≤ y → y ≤ x → x ≈ y
postulate ≤trans : ∀{x y z} → x ≤ y → y ≤ z → x ≤ z

postulate +comm : ∀ x y → x + y ≈ y + x
postulate *comm : ∀ x y → x * y ≈ y * x

postulate +assoc : ∀ x y z → (x + y) + z ≈ x + (y + z)
postulate *assoc : ∀ x y z → (x * y) * z ≈ x * (y * z)

postulate distrib : ∀ x y z → x * (y + z) ≈ x * y + x * z

postulate +ident : ∀ x → zero + x ≈ x
postulate *ident : ∀ x → one * x ≈ x

postulate +inv : ∀ x → x + (- x) ≈ zero
postulate *abs : ∀ x y → ∣ x * y ∣ ≈ ∣ x ∣ * ∣ y ∣
postulate triangle : ∀ x y → ∣ x + y ∣ ≤ ∣ x ∣ + ∣ y ∣


addop : ∀ x y z → x ≈ y → x + z ≈ y + z
addop x y z x≈y = {!   !}

two = one + one

thm : ∀ x → (x * one) * (x * one) ≈ x * x + two * x + one
thm x = ?
