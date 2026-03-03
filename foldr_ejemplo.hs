main :: IO()
main = do
    print $ take 5 (foldr (:) [] [4,5,7,3,2,5,78,2,2])
    print $ take 5 (foldl (\acc x -> acc ++ [x]) [] [2,4,5,6,73,4,6,8])
    print $ take 5 (foldr (:) [] [1..])
    print $ take 5 (foldl (\acc x -> acc ++ [x]) [] [1..])