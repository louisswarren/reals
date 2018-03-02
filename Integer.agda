open import Agda.Builtin.Bool

open import Agda.Builtin.Nat
  renaming ( Nat to ℕ
           ; _<_ to boolltℕ
           ; _+_ to _+ℕ_
           ; _-_ to _-ℕ_
           ; _*_ to _*ℕ_)

open import Natural
  renaming ( _≤_ to _≤ℕ_)

open import common

data ℤ : Set where
  pos : ℕ → ℤ
  negsuc : ℕ → ℤ

infixl 4 _≤_
infixl 6 _+_ _-_
infixl 7 _*_

_≤_ : ℤ → ℤ → Set
a ≤ b = {!   !}

_+_ : ℤ → ℤ → ℤ
a + b = ?

_-_ : ℤ → ℤ → ℤ
a - b = ?

_*_ : ℤ → ℤ → ℤ
a * b = ?

abs : ℤ → ℤ
abs a = ?
