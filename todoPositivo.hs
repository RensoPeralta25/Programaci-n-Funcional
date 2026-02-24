allPositive :: [Int] -> Bool
allPositive [] = True
allPositive (x:xs) | x <= 0 = False
			| x > 0 = True && allPositive xs

