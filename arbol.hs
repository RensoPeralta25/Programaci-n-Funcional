data Arbol a = Vacio |
                    Nodo a (Arbol a) (Arbol a)

arbol :: Arbol Int

arbol = Nodo 5
        (Nodo 6
            (Nodo 8 (Vacio) (Vacio))
            (Nodo 9 (Vacio) (Vacio)))
        (Nodo 7
            (Nodo 10
                (Nodo 12 (Vacio) (Vacio))
                (Nodo 13 (Vacio) (Vacio)))
            (Nodo 11 (Vacio) (Vacio)))

preorder :: Arbol a -> [a]
preorder Vacio = []
preorder (Nodo x izq der) = [x] ++ preorder izq ++ preorder der

inorder :: Arbol a -> [a]
inorder Vacio = []
inorder (Nodo x izq der) = inorder izq ++ [x] ++ inorder der

postoder :: Arbol a -> [a]
postoder Vacio = []
postoder (Nodo x izq der) = postoder izq ++ postoder der ++ [x]

tamano :: Arbol a -> Int
tamano Vacio = 0
tamano (Nodo x izq der) = 1 + tamano izq + tamano der

altura :: Arbol a -> Int
altura Vacio = 0
altura (Nodo x izq der) = 1 + max (altura izq) (altura der)

suma :: Num a => Arbol a -> a
suma Vacio = 0
suma (Nodo x izq der) = x + suma izq + suma der

