countZeros :: [Int] -> Int
countZeros [] = 0
countZeros (x:xs) | x == 0 = 1 + countZeros xs
				| otherwise = countZeros xs
