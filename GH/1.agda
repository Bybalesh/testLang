{-# OPTIONS --safe #-}
module Nat where

open import Data.Nat
open import Data.Unit
open import Data.Bool
open import Relation.Binary.PropositionalEquality

-- Определяем тип натуральных чисел (Peano numbers)
data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- Функция сложения
_+_ : ℕ → ℕ → ℕ
zero  + n = n
(suc m) + n = suc (m + n)

-- Пример использования
testAddition : ℕ
testAddition = (suc (suc zero)) + (suc zero)  -- 2 + 1 = 3

-- Доказательство того, что 1 + 1 = 2

one : ℕ
one = suc zero

two : ℕ
two = suc one

plusOneOneEqualsTwo : one + one ≡ two
plusOneOneEqualsTwo = refl
