open import Natural renaming (_≤_ to _≤ℕ_)

open import Rational
  renaming (_≤_ to _≤ℚ_)

open import common

ℚ^ℕ⁺ = ℕ⁺ → ℚ

IsRegular : ℚ^ℕ⁺ → Set
IsRegular qs = (n m : ℕ⁺) → abs {! ? + ?  !} ≤ℚ {!   !}
