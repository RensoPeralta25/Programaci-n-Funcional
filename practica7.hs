import Parser (parsePrice, parsePrices, pairProducts)
import Processing (averagePrice, maxProduct, minProduct, formatProducts, generateReport, selectProduct)
import System.Random (randomRIO)

main :: IO ()
main = menu

menu :: IO ()
menu = do
    contentProducto <- map lines readFile "productos.txt"
    contentPrecio <- map lines readFile "precios.txt"

    putStrLn "1. Mostrar Productos"
    putStrLn "2. Generar informe de estadísticas"
    putStrLn "3. Leer nuevo archivo"
    putStrLn "4. Seleccionar producto aleatorio"
    putStrLn "5. Salir"
    option <- getLine


    case option of
        "1" -> do
            pairProducts(contentProducto, parsePrices(contentPrecio))
            formatProducts (contentProducto, contentPrecio)
            menu

        "2" -> do
            pairProducts(contentProducto, parsePrices(contentPrecio))
            generateReport(contentProducto, contentPrecio)
            menu

        "3" -> do
            contentProducto <- readFile "productos.txt"
            contentPrecio <- readFile "precios.txt"
            menu

        "4" -> do
            selectProduct(contentProducto, contentPrecio, randomRIO (1, length(pairProducts(contentProducto, parsePrices(contentPrecio)))) :: IO Int)
            menu

        "5" -> do
            putStrLn "Programa finalizado"
        
        _ -> do
            putStrLn "Opcion invalida"
            menu
    



