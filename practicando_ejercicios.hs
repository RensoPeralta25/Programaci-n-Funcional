cuadrado :: Num a => a -> a -- Definiendo funcion con argumento y retorno de cualquier tipo
cuadrado x = x ^ 2

incremento :: Num a => a -> a
incremento x = x + 1

squareIncrement = cuadrado . incremento
incrementSquare = incremento . cuadrado

main :: IO ()
main = do
  print(cuadrado(2))
  print(incremento(1))
  print(squareIncrement(2)) -- Deberia dar 9
  print(incrementSquare(2)) -- Deberia dar 5






