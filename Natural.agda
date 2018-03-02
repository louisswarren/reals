open import Agda.Builtin.Nat renaming (Nat to ℕ; _<_ to leqbool)

open import common

data _≤_ : ℕ → ℕ → Set where
  z≤n : ∀{n}           → zero  ≤ n
  s≤s : ∀{n m} → n ≤ m → suc n ≤ suc m

_<_ : ℕ → ℕ → Set
n < m = suc n ≤ m
