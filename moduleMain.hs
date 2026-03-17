import MathOps (square, cube)
import Parsing (parseNumbers)
import GHC.Internal.Read (readField)

main :: IO ()
main = do
    content <- readField "numerosModule.txt"