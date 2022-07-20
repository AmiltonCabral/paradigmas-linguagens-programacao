bissexto :: Integral a => a -> Bool
bissexto ano
    | (ano `mod` 100 /= 00) && (ano `mod` 4 == 0) = True
    | ano `mod` 400 == 0 = True
    | otherwise = False


-- Recebe um ano e retorna uma String dizendo se ele é bissexto.
main :: IO ()
main = do
    ano <- readLn

    if ano <= 0 then
        putStrLn "O ano deve ser um numero positivo nao nulo"
    else if bissexto ano then do
        putStrLn ("O ano " ++ show ano ++ " e bissexto")
    else do
        putStrLn ("O ano " ++ show ano ++ " nao e bissexto")