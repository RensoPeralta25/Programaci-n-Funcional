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

-- Parte E - Que fue lo mas interesante o complicado de esta practica y por que?

-- Renso: Para mi lo mas complicado fue la parte B, en donde teniamos que usar division encadenada, ya que la logica que conllevaba aplicar lo requerido nos tomo algo de tiempo.
-- Scarlet: Lo mas complicado de la practica sin duda fue aplicar la parte B de division encadenada, ya que por la sintaxis era algo nuevo para nosotros poner en codigo la solucion pensada.
-- Joseph: Lo que me parecio mas dificil fue al igual que mis compañeros, la parte B en donde teniamos que aplicar la division encadenada, ya que nos tomo mucho tiempo aplicar la logica para la solucion del problema.
