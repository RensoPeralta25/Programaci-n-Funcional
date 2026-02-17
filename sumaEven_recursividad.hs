sumEven :: [Int] -> Int
sumEven [] = 0
sumEven (x:xs) | even x = x + sumEven xs
				| otherwise = sumEven xs 

