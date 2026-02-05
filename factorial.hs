factorial :: Int -> Int
factorial 0 = 1 -- Caso Base
factorial n = n * factorial (n - 1)



