prom :: Fractional a => a -> a -> a
prom x y = (x + y) / 2

main :: IO ()
main = do
    print("Ingrese primer numero: ")
    x <- readLn
    print("Ingrese segundo numero: ")
    y <- readLn
    print (prom x y)

