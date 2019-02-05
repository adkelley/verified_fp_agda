module my-bool where

open import bool1 hiding (_xor_)

_xor_ : 𝔹 → 𝔹 → 𝔹
tt xor ff = tt
ff xor tt = tt
tt xor tt = ff
ff xor ff = ff
