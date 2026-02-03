data Semaforo = Verde | Amarillo | Rojo
siguiente :: Semaforo -> Semaforo

siguiente (Rojo) = Verde
siguiente (Verde) = Amarillo
siguiente (Amarillo) = Rojo

puedePasar :: Semaforo -> Bool
puedePasar (Verde) = True
puedePasar _ = False

