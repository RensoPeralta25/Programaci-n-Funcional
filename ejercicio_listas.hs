infinita :: [Int]
infinita = [1..]

esPrimo :: Int -> Bool
esPrimo x 
	x < 2
	if (\n -> (mod x n == 0)) then False
	else True

filtrarPrimo :: [Int]
filtrarPrimo = filter esPrimo infinita

primo :: Int -> Int
primo x = filtrarPrimo !! x

main :: IO ()
main = do
    print "Ingrese un número: "
    n <- readLn :: Int
    Print (primo n)