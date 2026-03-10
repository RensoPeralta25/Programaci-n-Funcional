safeHead :: [a] -> Either String a
safeHead [] = Left "Lista vacia"
safeHead (x:xs) = Right x

