data NombreApellido = Nombre String | Apellido String | Conjunto String deriving (Show)

instance Num NombreApellido where
    Nombre name + Apellido lastname = Conjunto (name ++ " " ++ lastname)
