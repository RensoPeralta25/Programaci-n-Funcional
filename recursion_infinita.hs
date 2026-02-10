ones :: [Int]
ones = 1 : ones

main :: IO ()
main = do
    print $ take 3 ones
