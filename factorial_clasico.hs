factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorialfold :: Integral a => a -> a
factorialfold n = foldl (*) 1 [1..n]