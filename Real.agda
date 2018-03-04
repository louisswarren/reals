open import Data.Nat
open import Data.Rational

import Data.Integer

∣_∣ : ℚ → ℚ
∣ p ∣ = (Data.Integer.+ Data.Integer.∣ (ℚ.numerator p) ∣
        ÷ suc (ℚ.denominator-1 p))
        {ℚ.isCoprime p}

record ℝ : Set where
  constructor real
  field
    seq        : ℕ → ℚ
    regularity : ∀ n m → ∣ seq n + seq m ∣ ≤ (


-- IsRegular : ℚ^ℕ → Set
-- IsRegular qs = (n m : ℕ) → abs (qs n +ℚ qs m) ≤ℚ recip n +ℚ recip m
-- 
-- ℝ = Σ ℚ^ℕ⁺ IsRegular
-- 
-- _≈_ : ℝ → ℝ → Set
-- (x , pfx) ≈ (y , pfy) = (n : ℕ⁺) → abs (x n -ℚ y n) ≤ℚ rat (wpos 2) *ℚ recip n
-- 
-- 
-- 
-- addseq : ℚ^ℕ⁺ → ℚ^ℕ⁺ → ℚ^ℕ⁺
-- addseq x y = λ n → x (csuc 1 *ℕ⁺ n) +ℚ y (csuc 1 *ℕ⁺ n)
-- 
-- postulate additive : ∀ ps qs
--                    → IsRegular ps → IsRegular qs → IsRegular (addseq ps qs)
-- 
-- _+_ : ℝ → ℝ → ℝ
-- (x , pfx) + (y , pfy) = (addseq x y) , additive x y pfx pfy
-- 
-- 
-- thm : (x : ℝ) → (x + (x + x)) ≈ (x + (x + x))
-- thm (qs , pf) n = {!   !}
