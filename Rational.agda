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

open import common

data ℚ : Set where
  quotient : ℤ → ℕ⁺ → ℚ

recip : ℕ⁺ → ℚ
recip n = quotient (wpos 1) n

rat : ℤ → ℚ
rat a = quotient a (csuc 0)

infixl 4 _≤_
infixl 6 _+_ _-_
infixl 7 _*_

_≤_ : ℚ → ℚ → Set
quotient a n ≤ quotient b m = a *ℤ pos m ≤ℤ b *ℤ pos n

_+_ : ℚ → ℚ → ℚ
quotient a n + quotient b m = quotient (a *ℤ pos m +ℤ b *ℤ pos n) (n *ℕ⁺ m)

_-_ : ℚ → ℚ → ℚ
quotient a n - quotient b m = quotient a n + quotient (wpos 0 -ℤ b) m

_*_ : ℚ → ℚ → ℚ
quotient a n * quotient b m = quotient (a *ℤ b) (n *ℕ⁺ m)

abs : ℚ → ℚ
abs (quotient a sn) = quotient (absℤ a) sn



-- half = quotient (wpos 1) (csuc 1)
-- third = quotient (wpos 1) (csuc 2)



