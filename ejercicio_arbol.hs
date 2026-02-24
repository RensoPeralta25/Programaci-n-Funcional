data Nat = Cero | Succ Nat deriving Show
data Arbol a =
    Vacio
   | Nodo a (Arbol a) (Arbol a)
    deriving Show

enteroNatural :: Nat -> Int
enteroNatural Cero = 0
enteroNatural (Succ n) = 1 + enteroNatural n