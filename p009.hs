prod :: Num a => (a, a, a) -> a
prod (a, b, c) = a * b * c

triple :: [(Integer, Integer, Integer)]
triple = [(a, b, 1000 - a - b) | a <- [1..333], b <- [a..500], a*a + b*b == (1000 - a - b)*(1000 - a - b)]

solution :: Integer
solution = prod $ head triple

main = print solution
