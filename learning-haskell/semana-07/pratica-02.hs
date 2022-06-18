collatz' :: (Integral a) => a -> a -> a -> a
collatz' 1 _ _ = 1
collatz' n e i
    | e == i = n
    | even n = collatz' (n `div` 2) e (i + 1)
    | otherwise = collatz' (n * 3 + 1) e (i + 1)


collatz :: (Integral a) => a -> a -> a
collatz n e = collatz' n e 0


-- Retorna o enésimo valor da Conjectura de Collatz
main :: IO ()
main = do
    n <- readLn
    e <- readLn
    print (collatz n e)