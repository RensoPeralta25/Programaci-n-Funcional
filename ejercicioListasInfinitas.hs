lista :: [Int]
lista = [3,9..]

pipeline :: [Int]
pipeline = map (>50) . filter odd . take 10


