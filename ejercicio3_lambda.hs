main :: IO ()
main = do
  print((\f -> f 2) (\x -> x + 1))

