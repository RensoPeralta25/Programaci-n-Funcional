data Persona = Persona {nombre::String, edad::Integer}
esMayor :: Persona -> Bool
esMayor (Persona nombre edad) = edad >= 18


