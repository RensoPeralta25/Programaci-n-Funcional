safeTail :: [a] -> Either String [a]
safeTail [] = Left "Lista vacia"
safeTail (x:xs) = Right xs

