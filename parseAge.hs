parseAge :: Int -> Either String Int
parseAge edad | edad < 0 = Left "Error"
              | edad >= 120 = Left "Error"
              | otherwise = Right edad

