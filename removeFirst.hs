removeFirst :: Eq a => a -> [a] -> [a]
removeFirst _ [] = []
removeFirst x (y:ys) | x == y = ys
				| otherwise = removeFirst x ys
                