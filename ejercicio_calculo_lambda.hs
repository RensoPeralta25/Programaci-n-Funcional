add :: Int -> Int -> Int -> Int
add = \x -> \y -> \z -> x+y+z

apply :: (a -> b) -> a -> b
apply = \a -> \b -> a b

main :: IO ()
main = do
  print(add 3 4 5)
  print(apply (\x -> 4 + x) 5)

