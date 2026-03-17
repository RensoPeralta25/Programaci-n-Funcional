import GHC.Internal.Read (readField)
import Distribution.PackageDescription (cNot)
countLines :: String -> Int
countLines content = length (lines content)

main :: IO ()
main = do
    content <- readFile "datos.txt"
    print(countLines content)
