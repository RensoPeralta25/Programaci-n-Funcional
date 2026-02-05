myHead :: [a] -> a
myHead [] = error "Lista vacia"
myHead (x:xs) = x

myTail :: [a] -> [a]
myTail [] = error "Lista vacia"
myTail (x:xs) = xs


