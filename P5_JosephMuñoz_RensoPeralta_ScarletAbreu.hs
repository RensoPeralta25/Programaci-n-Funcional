-- ================================
-- Parte A: Funciones puras e infinitas
-- ================================

naturales :: [Integer]
naturales = [0 ..]

paresPorDos :: [Integer] -> [Integer]
paresPorDos xs = [x * 2 | x <- xs, x `mod` 2 == 0]


-- ================================
-- Parte B: Evaluación perezosa
-- ================================

-- take 10 [1..] termina porque solo demanda 10 elementos de la lista infinita.
-- sum [1..] no termina porque necesita recorrer toda la lista para acumular.

multiplosDeCinco :: IO ()
multiplosDeCinco = do
    putStrLn "Ingrese un numero"
    numRecibido <- getLine
    let n = read numRecibido :: Int
    let lista = take n [5,10 ..]
    let suma = sum lista
    putStrLn ("La lista es " ++ show lista ++ " y su suma es " ++ show suma)


-- ================================
-- Parte C: IO como frontera controlada
-- ================================

-- Función pura
primerosNPares :: Int -> [Integer]
primerosNPares n = take n [2,4..]

parteC :: IO ()
parteC = do
    putStrLn "Ingrese n:"
    entrada <- getLine
    let n = read entrada :: Int
    let resultado = primerosNPares n
    print resultado


-- ================================
-- Parte D: Estrategias de evaluación
-- ================================

square :: Int -> Int
square x = x * x

double :: Int -> Int
double x = 2 * x

{-

Evaluación perezosa en Haskell (lazy evaluation)

Expresión:
square $ double (1 + 2)

Paso a paso:

-> square (double (1 + 2))
-> square (2 * (1 + 2))
-> square (2 * 3)
-> square 6
-> 6 * 6
-> 36

Evaluación estricta en Haskell (strict evaluation con $!)

Expresión:
square $! (double (1 + 2))

Paso a paso:

-> square $! (double (1 + 2))
-> double (1 + 2)
-> 2 * (1 + 2)
-> 2 * 3
-> 6
-> square 6
-> 6 * 6
-> 36

Diferencia clave:

En lazy, la evaluación de (1 + 2) ocurre cuando square lo necesita.
En strict ($!), todo el argumento se evalúa antes de llamar a square.

-}

-- ================================
-- Parte E: Respuesta Corta
-- ================================

-- Renso: considero que lo mas complicado fue realizar el apartado B, por el tiempo que
-- nos llevo aplicar la lógica para realizar el programa con la lista infinita.

-- Scarlet: lo mas interesante fue el apartado D, ya que me permitió entender mejor la diferencia entre evaluación perezosa y estricta.

-- Joseph: lo mas complicado para mi fue B al igual que renso, ya que me costo entender como manejar la lista infinita y la evaluación perezosa para obtener el resultado.


-- ================================
-- Main
-- ================================

main :: IO ()
main = do
    putStrLn "Primeros 10 numeros naturales:"
    print (take 10 naturales)

    putStrLn "Primeros 10 pares por dos:"
    print (take 10 (paresPorDos naturales))

    multiplosDeCinco
    parteC