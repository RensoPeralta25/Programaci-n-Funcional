lista :: [Int]
lista = [10, 15, 20, 25, 30]

pip :: [Int] -> Int
pip = sum . map (`div` 5) . filter (>15)


