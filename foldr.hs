
sumList :: Num a => [a] -> a
sumList [] = 0
sumList xs = foldr (+) 0 xs

productList :: Num a => [a] -> a
productList [] = 1
productList xs = foldr (*) 1 xs

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = foldr (*) 1 [1..n]

data Tree a = Empty | Node a (Tree a) (Tree a)
instance Foldable Tree where
 foldr f acc Empty = acc
 foldr f acc (Node x l r) =
    foldr f (f x (foldr f acc r)) l

