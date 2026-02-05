safeDivide :: Num a => a -> a -> Maybe a
safeDivide _ 0 = Nothing
safeDivide a b = Just (a `div` b)

