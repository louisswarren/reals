open import Agda.Builtin.Nat
  renaming ( Nat to ℕ
           ; _<_ to boolltℕ
           ; _+_ to _+ℕ_
           ; _-_ to _-ℕ_
           ; _*_ to _*ℕ_)

open import Natural renaming (_≤_ to _≤ℕ_)

open import Integer
  renaming ( _≤_ to _≤ℤ_
           ; _+_ to _+ℤ_
           ; _-_ to _-ℤ_
           ; _*_ to _*ℤ_
           ; abs to absℤ )

open import Rational
  renaming ( _≤_ to _≤ℚ_
           ; _+_ to _+ℚ_
           ; _-_ to _-ℚ_
           ; _*_ to _*ℚ_)

open import common

ℚ^ℕ⁺ = ℕ⁺ → ℚ

IsRegular : ℚ^ℕ⁺ → Set
IsRegular qs = (n m : ℕ⁺) → abs (qs n +ℚ qs m) ≤ℚ recip n +ℚ recip m

ℝ = Σ ℚ^ℕ⁺ IsRegular

_≈_ : ℝ → ℝ → Set
(x , pfx) ≈ (y , pfy) = (n : ℕ⁺) → abs (x n -ℚ y n) ≤ℚ rat (wpos 2) *ℚ recip n



addseq : ℚ^ℕ⁺ → ℚ^ℕ⁺ → ℚ^ℕ⁺
addseq x y = λ n → x (csuc 1 *ℕ⁺ n) +ℚ y (csuc 1 *ℕ⁺ n)

postulate additive : ∀ ps qs
                   → IsRegular ps → IsRegular qs → IsRegular (addseq ps qs)

_+_ : ℝ → ℝ → ℝ
(x , pfx) + (y , pfy) = (addseq x y) , additive x y pfx pfy


thm : (x : ℝ) → (x + (x + x)) ≈ (x + (x + x))
thm (qs , pf) n = {!   !}
