sumList :: [Int] -> Int
sumList [] = 0 -- caso base
sumList (x:xs) = x + sumList xs -- caso recursivo

