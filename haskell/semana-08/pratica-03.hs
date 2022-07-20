notDuplicated :: String -> String
notDuplicated [] = []
notDuplicated [e] = [e]
notDuplicated (e:ls) = [e | e /= head ls] ++ notDuplicated ls


main :: IO ()
main = do
    frase <- getLine
    putStrLn (notDuplicated frase)