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

ℤ = ℕ × ℕ

wpos : ℕ → ℤ
wpos n = (n , zero)

wneg : ℕ → ℤ
wneg n = (zero , n)

pos : ℕ⁺ → ℤ
pos (n , _) = wpos n

neg : ℕ⁺ → ℤ
neg (n , _) = wneg n

infixl 4 _≤_
infixl 6 _+_ _-_
infixl 7 _*_

_≤_ : ℤ → ℤ → Set
n₁ , m₁ ≤ n₂ , m₂ = (n₁ +ℕ m₂) ≤ℕ (n₂ +ℕ m₁)

_+_ : ℤ → ℤ → ℤ
(n₁ , m₁) + (n₂ , m₂) = (n₁ +ℕ n₂) , (m₁ +ℕ m₂)

_-_ : ℤ → ℤ → ℤ
(n₁ , m₁) - (n₂ , m₂) = (n₁ +ℕ m₂) , (m₁ +ℕ n₂)

_*_ : ℤ → ℤ → ℤ
(n₁ , m₁) * (n₂ , m₂) = (n₁ *ℕ n₂ +ℕ m₁ *ℕ m₂) , (n₁ *ℕ m₂ +ℕ n₂ *ℕ m₁)

abs : ℤ → ℤ
abs (n , m) with (boolltℕ n m)
...         | false = n , m
...         | true  = m , n
