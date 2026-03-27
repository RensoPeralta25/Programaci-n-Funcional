data Tree a = Empty | Node a (Tree a) (Tree a) deriving Show
 
-- Ejemplo de arbol
exampleTree :: Tree Double
exampleTree = preorderToTree $ map (\x -> x ^ 2 - 2 * x + 1) [-3..3]
 
-- Generacion de Arboles
split :: [a] -> ([a],[a])
split xs = splitAt n xs
    where
        n = (if even (length xs) then 0 else 1) + div (length xs) 2
 
preorderToTree :: [a] -> Tree a
preorderToTree [] = Empty
preorderToTree (x:xs) = Node x (preorderToTree ys) (preorderToTree ys')
    where
        (ys, ys') = split xs

dispTree :: Show a => Tree a -> String
dispTree tree = aux tree 0
    where
        aux Empty depth = replicate (2*depth) ' ' ++ "|-" ++ "Empty"
        aux (Node x l r) depth = replicate (2*depth) ' ' ++ "|-" ++  "Node " ++ show x ++
                                 "\n" ++ aux l (depth+1) ++
                                 "\n" ++ aux r (depth+1)

cumplenCondicion :: (a -> Bool) -> Tree a -> Bool
cumplenCondicion condicion Empty = True
cumplenCondicion condicion (Node x l r) = condicion x && cumplenCondicion condicion l && cumplenCondicion condicion r

