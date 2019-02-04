module peano where

data 𝕟 : Set where
  zero : 𝕟
  suc  : 𝕟 → 𝕟

-- addition
_+_ : 𝕟 → 𝕟 → 𝕟
zero + zero = zero
zero + n    = n
(suc n) + n′ = suc (n + n′) -- use \' to input ′
