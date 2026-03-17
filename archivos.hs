import GHC.Internal.Read (readField)
main :: IO()
main = do
    content <- readFile "datos.txt"
    writeFile "copia.txt" content

