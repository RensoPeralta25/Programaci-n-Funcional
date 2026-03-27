import Data.Sequence (Seq(Empty))
data GenTree a = Nodo a [GenTree a] deriving Show
 
showGTree :: Show a => GenTree a -> String
showGTree tree = aux tree 0
    where
        aux (Nodo x []) depth = replicate (2*depth) ' ' ++ "|-" ++ "Nodo " ++ show x ++ "\n"
        aux (Nodo x ts) depth = replicate (2*depth) ' ' ++ "|-" ++ "Nodo " ++ show x ++ "\n" ++ innodes ts
            where
                innodes xs
                    | null xs = ""
                    | otherwise = concatMap (\x -> aux x (depth + 1)) xs
 
exampleGTree :: GenTree Int
exampleGTree =
    Nodo 1 [
        Nodo 2 [],
        Nodo 3 [
            Nodo 6 [],
            Nodo 7 []
        ],
        Nodo 4 [
            Nodo 8 [],
            Nodo 9 [],
            Nodo 10 []
        ],
        Nodo 5 []
    ]


tamano :: GenTree a -> Int
tamano (GenTree 1 []) =  
--tamano (Nodo _ izq der) = 1 + tamano izq + tamano der