module Proccesing where 
    
averagePrice :: [(String, Double)] -> Double
averagePrice [] = 0
averagePrice products = sum prices / fromIntegral (length prices)
	where
		  prices = map snd products

maxProduct :: [(String, Double)] -> (String, Double)
maxProduct [] = ("", 0)
maxProduct products = foldl1 (\(name1, price1) (name2, price2) -> if price1 > price2 then (name1, price1) else (name2, price2)) products

minProduct :: [(String, Double)] -> (String, Double)
minProduct [] = ("", 0)
minProduct products = foldl1 (\(name1, price1) (name2, price2) -> if price1 < price2 then (name1, price1) else (name2, price2)) products

formatProducts :: [(String, Double)] -> String
formatProducts products = unlines (map (\(name, price) -> name ++ " - " ++ show price) products)

generateReport :: [(String, Double)] -> String
generateReport products =
	"Cantidad de productos: " ++ show (length products) ++ "\n" ++
	"Precio promedio: " ++ show (averagePrice products) ++ "\n" ++
	"Producto mas caro:\n" ++ fst (maxProduct products) ++ " - " ++ show (snd (maxProduct products)) ++ "\n" ++
	"Producto mas barato:\n" ++ fst (minProduct products) ++ " - " ++ show (snd (minProduct products))

selectProduct :: [(String, Double)] -> Int -> Either String (String, Double)
selectProduct products index
	| index < 0 || index >= length products = Left "indice fuera de rango"
	| otherwise = Right (products !! index)