import GHC.Internal.Read (readField)

parseNumbers :: String -> [Float]
parseNumbers content = map read (lines content)

promedio :: [Float] -> Float
promedio [] = 0
promedio (xs) = sum xs / fromIntegral (length xs)

promContent::String -> String
promContent = show .promedio .parseNumbers

main :: IO()
main = do
    content <- readFile "promedio.txt"
    print $ promContent content

