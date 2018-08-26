fib :: [Integer]
fib = 1 : 2 : [ a+b | (a,b) <- zip fib (tail fib) ]

lessThan4Mil :: Integer -> Bool
lessThan4Mil(a) = a < 4000000


fibLessThan4Mil = takeWhile lessThan4Mil fib
evenNums = filter even fibLessThan4Mil
answer = sum evenNums

main = print answer
