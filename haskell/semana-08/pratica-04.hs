import Data.Char ( toLower, toUpper )

dancante' :: String -> Int -> String
dancante' [] i = []
dancante' sent i = if even i
        then toUpper (head sent) : dancante' (tail sent) (i+1)
        else toLower (head sent) : dancante' (tail sent) (i+1)


dancante :: String -> String
dancante sent = dancante' sent 0


main :: IO()
main = do
    sent <- getLine
    putStrLn (dancante sent)