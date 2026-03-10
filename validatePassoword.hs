import Data.Char (isDigit)
validatePassword :: String -> Either String String
validatePassword passwd | length passwd < 8 = Left "Contrasena debe ser al menos 8 caracteres"
                        | any isDigit passwd == False = Left "Debe tener al menos un digito"
                        | otherwise = Right passwd
                    