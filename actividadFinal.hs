-- Promedio de un lista
promedio :: [Float] -> Either String Float
promedio [] = Left "No data available"
promedio xs = Right (sum xs / fromIntegral (length xs))
 
-- Mediana de una lista
median :: [Float] -> Either String Float
median [] = Left "No data available"
median xs
    | odd (length xs) = Right (xs' !! n)
    | otherwise = promedio[xs' !! n, xs' !! (n+1)]
    where
        n = div (length xs) 2
        xs' = sort xs
 
-- Ordenar una lista (para la mediana)
sort :: Ord a => [a] -> [a]
sort [] = []
sort (x:xs) = sort ys ++ [x] ++ sort ys'
    where
        ys = [y | y <- xs, y < x]
        ys' = [y | y <- xs, y >= x]
 
-- Rango de una lista
rango :: [Float] -> Either String (Float, Float)
rango [] = Left "No data available"
rango xs = Right (minimum xs, maximum xs)
 
-- Desviacion estandar de una lista
std :: [Float] -> Either String Float
std [] = Left "No data available"
std xs = Right ((sqrt . sum . map (\x -> (x - xMean) ^ 2 / n)) xs)
    where
        xMean = sum xs / n
        n = fromIntegral (length xs)
 
-- Parsing
parseNumbers :: String -> Either String [Float]
parseNumbers content
    | null content = Left "No available data"
    | any null parseList = Left "Parsing Error"
    | not (all (null . snd . head) parseList) = Left "Parsing error"
    | otherwise = Right (map (fst . head) parseList)
    where
        contentList = lines content
        parseList = if not (null contentList) then map reads (lines content) else []
 
-- Identificar si un Either es error
isLeft :: Either a b -> Bool
isLeft (Left _) = True
isLeft _ = False
 
-- Mostrar resultado de Either
showRight :: Show b => Either a b -> String
showRight (Right x) = show x
showRight _ = ""