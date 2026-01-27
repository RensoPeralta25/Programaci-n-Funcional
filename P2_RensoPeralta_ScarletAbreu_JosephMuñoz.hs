-- Parte A

triple :: Num a => a -> a
triple x = 3 * x

decrease :: Num a => a -> a
decrease x = x - 1

absolute :: (Ord a, Num a) => a -> a
absolute x = if x < 0 then -x else x

-- Parte B

f = absolute . decrease
-- El valor absoluto del decremento de un numero.
g = decrease . absolute
-- El decremento del valor absoluto de un numero.

-- La composición no es conmutativa porque el orden afecta al resultado. Dan resultados diferentes.

-- Parte C

-- triple (decrease 4)
-- triple (4 - 1)
-- triple (3)
-- 3 * 3
-- 9

-- absolute (triple (-2))
-- absolute (3 * (-2))
-- absolute (-6)
-- if -6 < 0 then -(-6) else -6
-- if True the -(-6) else -6
-- -(-6)
-- 6

-- (absolute . decrease) (-1)
-- absolute (decrease (-1))
-- absolute ((-1) - 1)
-- absolute (-2)
-- if -2 < 0 then -(-2) else -2
-- if True then -(-2) else -2
-- -(-2)
-- 2

-- Parte D

-- 7
-- Si esta en forma normal, ya que no se puede seguir transformando.

-- 3 * 4
-- No esta en forma normal, se puede seguir operando y llegar a 12 (esta ultima si es forma normal)

-- decrease 2
-- No esta en forma normal, se puede operar la funcion decrease evaluando x - 1, en este caso la forma normal solo seria 1.

-- (absolute . decrease) 0
-- No esta en forma normal se puede descomponer operando primero con decrease y luego con absolute.

-- Parte E

-- Joseph Muñoz: Para mí lo más importante de esta práctica fue entender el como afecta el orden de las funciones en la composición 
-- y como esto puede cambiar completamente el resultado final.

-- Renso Peralta: En opinión, lo mas importante y complicado de la practica fue la reescritura, no fue dificil, sin embargo se tuvo que tener en cuenta
-- unos cuantos detalles.

-- Scarlet: Lo que más me interersó y es la que más se me complicó fue la parte E ya que considero que aún tengo problemas con transformar escribir de forma imperactiva.


main :: IO ()
main = do
  print(triple 3)
  print(decrease 5)
  print(absolute (-6))
  print (f (-5)) -- 6
  print (g (-5)) -- 4


