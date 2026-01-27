f x = x + 1

main :: IO()
main = do
  print((\x -> f x) 5)
  print(f 5)

