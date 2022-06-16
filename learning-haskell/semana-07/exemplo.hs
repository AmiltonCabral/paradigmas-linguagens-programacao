double :: Num a => a -> a
double x = x * 2

main :: IO ()
main = do
    putStr "Digite um número: "
    num <- readLn
    
    -- Le uma string e converte para inteiro:
    -- numStr <- getLine
    -- let num = read numStr

    putStr "O dobro é:        "
    print (double num)