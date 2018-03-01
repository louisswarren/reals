open import Agda.Builtin.Nat renaming (Nat to ℕ; _<_ to leqbool)

open import common

data _≤_ : ℕ → ℕ → Set where
  z≤n : ∀{n}           → zero  ≤ n
  s≤s : ∀{n m} → n ≤ m → suc n ≤ suc m

_<_ : ℕ → ℕ → Set
n < m = suc n ≤ m

ℕ⁺ = Σ ℕ λ n → zero < n

csuc : ℕ → ℕ⁺
csuc n = suc n , s≤s z≤n

_*ℕ⁺_ : ℕ⁺ → ℕ⁺ → ℕ⁺
(zero , ()) *ℕ⁺ (m , pfm)
(suc zero , pfn) *ℕ⁺ (m , pfm) = m , pfm
(suc n@(suc _) , pfn) *ℕ⁺ (zero , ())
(suc n@(suc _) , pfn) *ℕ⁺ (m@(suc _) , pfm) = (m + n * m) , s≤s z≤n
