main :: IO()
main = do
  print((\x -> \y -> x + y) 3 5)

