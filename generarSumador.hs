generarSumador :: Int -> (Int -> Int)
generarSumador num = \x -> x + num

sumar10 :: Int -> Int
sumar10 = generarSumador 10
