isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime k = null [ x | x <- [2..isqrt k], k `mod` x  == 0]

primeFactorsOf :: Integer -> [Integer]
primeFactorsOf(n) =
  filter isPrime [x | x <- [2..isqrt n], n `mod` x == 0]

solution = maximum (primeFactorsOf 600851475143)

main = print solution
