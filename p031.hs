coinsAvailable = [200, 100, 50, 20, 10, 5, 2, 1]

numb :: Integer -> [Integer] -> Integer
numb 0 coins            = 0
numb total []           = 0
numb total (coin:coins)
  | total `rem` coin == 0 = sum [numb (total - coin * i) coins | i <- [0..(total `div` coin)]] + 1
  | otherwise             = sum [numb (total - coin * i) coins | i <- [0..(total `div` coin)]]

solution = numb 200 coinsAvailable

main =
  print solution
