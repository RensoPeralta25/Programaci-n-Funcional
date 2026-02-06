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
aplicarOp (Suma a b) = Just (a + b)
aplicarOp (Resta a b) = Just (a - b)
aplicarOp (Mult a b) = Just (a * b)
aplicarOp (Div a 0) = Nothing
aplicarOp (Div a b) = Just (a `div` b)

-- Parte D
main :: IO ()
main = do
    print (sumNum 5) -- Debería imprimir 15
    print (prodLista [1, 2, 3, 4]) -- Debería imprimir 24
    print (safeDiv 10 2) -- Debería imprimir Just 5.0
    print (safeDiv 10 0) -- Debería imprimir Nothing
    print (safeDivList 100 [2, 5, 0]) -- Debería imprimir Nothing
    print (safeDivList 100 [2, 5, 2]) -- Debería imprimir Just 10
    print (aplicarOp (Suma 3 4)) -- Debería imprimir Just 7
    print (aplicarOp (Div 10 0)) -- Debería imprimir Nothing
    print (aplicarOp (Div 10 2)) -- Debería imprimir Just 5