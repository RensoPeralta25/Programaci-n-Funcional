doble :: Int -> Int
doble x = x * 2

-- Declaracion de funciones fuera del main y de manera modular

main :: IO () -- IO con tuplas vacias en vez de un valor
main = do
    x <- readLn -- readLn para recibir enteros
    print (doble x) -- print en vez de return para diseño correcto

