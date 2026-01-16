-- Resultado de 3 + 2: 5
-- Resultado 10 `div` 3: 3
-- Resultado 10 / 3: 3.33333
-- Resultado True && False: False
-- Resultado not (5 > 3) False
-- Resultado :t 10: 10 :: Num a => a
-- Resultado :t 10.5: 10.5 :: Fractional a => a
-- Resultado :t "Hola": "Hola" :: String
-- Resultado :t [1,2,3]: [1,2,3] :: Num a => [a]

duplicar x = x * 2
promedio x y = (x + y) / 2
es_positivo x = (x > 0)
funcion x y = if suma < product then product else suma where { product = x * y ; suma = x + y }

lista = [1..10]

main :: IO ()
main = do
  print (2 * 10)
  print ((4 + 6) / 2)
  print (es_positivo (-5))
  print (funcion 1 8)
  print (take 5 lista)

-- Scarlet Abreu
-- Lo mas interesante fue la creacion de la funcion 'funcion', porque fue la mas compleja

-- Renso Peralta
-- En mi opinion, lo mas interesante fue la manera en que se pensaron y escribieron las funciones, ya que
-- no es como en otros lenguajes la manera en la que se expresa la sintaxis.



