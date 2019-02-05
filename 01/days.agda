module days where

data day : Set where
  sun : day
  mon : day
  tue : day
  wed : day
  thu : day
  fri : day
  sat : day

nextday : day → day
nextday sun = mon
nextday mon = tue
nextday tue = wed
nextday thu = fri
nextday fri = sat
nextday sat = sun
