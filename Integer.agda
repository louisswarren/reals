open import Agda.Builtin.Bool

open import Agda.Builtin.Nat
  renaming ( Nat to ℕ
           ; _<_ to boolltℕ
           ; _+_ to _+ℕ_
           ; _-_ to _-ℕ_
           ; _*_ to _*ℕ_)

open import Natural
  renaming ( _≤_ to _≤ℕ_)

open import Agda.Builtin.Int renaming (Int to ℤ)

open import common

infixl 4 _≤_
infixl 6 _+_ _-_
infixl 7 _*_

_≤_ : ℤ → ℤ → Set
pos n    ≤ pos m    = n ≤ℕ m
pos _    ≤ negsuc _ = False
negsuc _ ≤ pos _    = True
negsuc n ≤ negsuc m = m ≤ℕ n

_+_ : ℤ → ℤ → ℤ
pos n          + pos m          = pos (n +ℕ m)
pos zero       + negsuc m       = negsuc m
pos (suc n)    + negsuc zero    = pos n
pos (suc n)    + negsuc (suc m) = pos n + negsuc m
negsuc n       + pos zero       = negsuc n
negsuc zero    + pos (suc m)    = pos m
negsuc (suc n) + pos (suc m)    = negsuc n + pos m
negsuc n       + negsuc m       = negsuc (suc (n +ℕ m))

_-_ : ℤ → ℤ → ℤ
a - pos zero = a
a - pos (suc n) = a + negsuc n
a - negsuc n = a + pos (suc n)

_*_ : ℤ → ℤ → ℤ
a * b = ?

abs : ℤ → ℤ
abs a = ?
