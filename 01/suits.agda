module suits where

data 𝔹 : Set where
 tt : 𝔹
 ff : 𝔹

-- this is an alias for Mac users who cannot see blackboard b.
bool : Set
bool = 𝔹

{-# BUILTIN BOOL  𝔹  #-}
{-# BUILTIN TRUE  tt  #-}
{-# BUILTIN FALSE ff #-}

data suit : Set where
  hearts : suit
  spades : suit
  diamonds : suit
  clubs : suit

is-red : suit → 𝔹
is-red hearts = tt
is-red diamonds = tt
is-red clubs = ff
is-red spades = ff
