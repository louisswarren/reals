open import Integer
  renaming ( _≤_ to _≤ℤ_
           ; _+_ to _+ℤ_
           ; _-_ to _-ℤ_
           ; _*_ to _*ℤ_
           ; abs to absℤ )

open import Natural renaming (_≤_ to _≤ℕ_)

open import common

data ℚ : Set where
  quotient : ℤ → ℕ⁺ → ℚ

infixl 4 _≤_
infixl 6 _+_ _-_
infixl 7 _*_

_≤_ : ℚ → ℚ → Set
quotient a (n , _) ≤ quotient b (m , _) = a *ℤ pos m ≤ℤ b *ℤ pos n

_+_ : ℚ → ℚ → ℚ
quotient a n + quotient b m = quotient (a *ℤ ? +ℤ b *ℤ ?) {! n *ℕ⁺ m  !}

_-_ : ℚ → ℚ → ℚ
p - q = ?

_*_ : ℚ → ℚ → ℚ
p * q = ?

abs : ℚ → ℚ
abs (quotient a sn) = quotient (absℤ a) sn
