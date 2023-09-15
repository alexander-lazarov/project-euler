sequenceLength :: Integer -> Integer
sequenceLength n = sequenceLength' n 1
  where sequenceLength' n l
          | n == 1 = l
          | even n = sequenceLength' (n `div` 2) (l + 1)
          | odd n  = sequenceLength' (3 * n + 1) (l + 1)

longestSequence :: Integer -> Integer
longestSequence n = longestSequence' n 1 1
  where longestSequence' n l i
          | n == 1 = i
          | l' > l = longestSequence' (n - 1) l' n
          | otherwise = longestSequence' (n - 1) l i
          where l' = sequenceLength n

main :: IO ()
main = print $ longestSequence 1000000
