mod3 :: Integer -> Integer
mod3(a) = mod a 3

mod5 :: Integer -> Integer
mod5(a) = mod a 5

divBy3or5 :: Integer -> Bool
divBy3or5(a) =
  (mod3(a) == 0) || (mod5(a) == 0)

divBy3or5below :: [Integer]
divBy3or5below =
  (filter divBy3or5 ([1..999]))

main =
  print (sum divBy3or5below)
