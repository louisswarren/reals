module common where

data _⊎_ (A B : Set) : Set where
  inl : A → A ⊎ B
  inr : B → A ⊎ B

record Σ (I : Set)(A : I → Set) : Set where
  constructor _,_
  field
    fst : I
    snd : A fst
open Σ public
infixr 10 _,_

_×_ : (A B : Set) → Set
A × B = Σ A (λ _ → B)

record True : Set where
data False : Set where
