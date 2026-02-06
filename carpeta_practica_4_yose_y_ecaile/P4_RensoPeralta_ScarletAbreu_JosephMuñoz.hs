-- Parte A
sumNum :: Int -> Int
sumNum 0 = 0
sumNum n = n + sumNum (n - 1)

-- 
prodLista :: Num a => [a] -> a
prodLista [] = 1
prodLista (x:xs) = x * prodLista (xs)

-- Parte B
safeDiv :: (Fractional a, Eq a) => a -> a -> Maybe a
safeDiv _ 0 = Nothing
safeDiv x y = Just (x / y)

-- 

safeDivList :: Int -> [Int]  -> Maybe Int
safeDivList n [] = Just n
safeDivList _ (0:_) = Nothing
safeDivList n (x:xs) = safeDivList (n `div` x) xs

-- Parte C
--
data Operacion = Suma Int Int | Resta Int Int | Mult Int Int | Div Int Int
aplicarOp :: Operacion -> Maybe Int
aplicarOp (Suma a b) = a + b
aplicarOp (Resta a b) = a - b
aplicarOp (Mult a b) = a * b
aplicarOp (Div a 0) = Nothing
aplicarOp (Div a b) = Just (a `div` b)


