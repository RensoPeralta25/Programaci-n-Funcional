import Text.XHtml (content)
parseNumbers :: String -> [Int]
parseNumbers content = map read (lines content)

sumContent::String -> String
sumContent = show .sum .parseNumbers

main :: IO ()
main = do
    content <- readFile "numeros.txt"
    print $ sumContent content
