module Parsing (parseNumbers) where

parseNumbers :: String -> Either String [Int]
parseNumbers content
    | null content = Left "No available data"
    | any null parseList = Left "Parsing Error"
    | not (all (null . snd . head) parseList) = Left "Parsing error"
    | otherwise = Right (map (fst . head) parseList)
    where
        contentList = lines content
        parseList = if not (null contentList) then map reads (lines content) else []
