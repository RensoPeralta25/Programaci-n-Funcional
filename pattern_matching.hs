data Figura = Circulo Float | Cuadrado Float | Rectangulo Float Float
perimetro :: Figura -> Float

perimetro (Circulo d) = pi * d
perimetro (Cuadrado l) = l * 4
perimetro (Rectangulo b h) = 2 * (b + h)


