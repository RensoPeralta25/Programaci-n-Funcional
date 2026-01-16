increment :: Num a => a -> a
square :: Num b => b -> b

square x = x ^ 2
increment x = x + 1

squareThenIncrement :: Num a => a -> a
squareThenIncrement = square . increment

incrementThenSquare :: Num a => a -> a
incrementThenSquare = increment . square

