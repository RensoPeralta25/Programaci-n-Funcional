module Parser where

parsePrice :: String -> Either String Double
parsePrice str
 | null str = Left "No hay datos disponibles"
 | otherwise = case reads str :: [(Double, String)] of
    [(price, "")] -> Right price
    _ -> Left "Precio invalido"

parsePrices :: [String] -> Either String [Double]
parsePrices strs
    | null strs = Left "No hay datos disponibles"
    | any null strs = Left "Error de parsing"
    | otherwise = Right [price | str <- strs, Right price <- [parsePrice str]]
    
pairProducts :: [String] -> [Double] -> Either String [(String, Double)]
pairProducts products prices
    | length products /= length prices = Left "La cantidad de productos y precios no coincide"
    | otherwise = Right (zip products prices)