--factorial de un numero usando foldr
factorial :: Integer -> (Integer -> Integer) -> Integer
factorial n f = foldr (\x acc -> f x * (x - 1)) 1 [1..n]
main :: IO()
main = do
    print $ factorial 5 (\x -> x)