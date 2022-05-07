doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- Both bellow function do the same
doubleSmallNumber x = if x <= 100 then doubleMe x else x
doubleSmallNumber' x = if x <= 100
    then doubleMe x
    else x

-- We can use ' in function names
-- Function names cannot start with capial letter
i'mBeauty = "I'm the most beatyfull person in the world"

lis1 = [1, 2]
lis2 = [3, 4]
lis3 = lis1 ++ lis2

-- Strings are list, so we can use list function in strings
helwld = "Hello" ++ [' '] ++ "world"

-- Add 0 to the lis3 begin
lis4 = 0:lis3

-- Access a list element from a indice
lstele = helwld !! 4

lis5 = [[1, 2], [3, 4, 5]]
lis5n = lis5 !! 1 !! 2


lis6 = [1, 2, 3, 4, 5]

head'' = head lis6    -- 1
last'' = last lis6    -- 5
init'' = init lis6    -- [1, 2, 3, 4]
tail'' = tail lis6    -- [2, 3, 4, 5]

-- Obtain a list length
length'' = length lis6    -- 5

-- Is a list emty?
null'' = null lis6    -- False
-- null []   -- True

reverse'' = reverse lis6    -- [5, 4, 3, 2, 1]

-- Take the first n elements from a list
take'' = take 3 [1, 2, 3, 4, 5] -- [1, 2, 3]

-- Take all elements from N
drop'' = drop 3 [1, 2, 3, 4, 5] -- [4, 5]

min'' = minimum [5, 3, 7]  -- 3
max'' = maximum [5, 3, 7]  -- 7

sum'' = sum [5, 3, 7]  -- 15
product'' = product [10, 3, 7] -- 210

-- elem return true if a list contain the element
elem'' = 3 `elem` [5, 3, 7]  -- True
elem''' = 9 `elem` [5, 3, 7]  -- False

-- range
lis7 = [1..5] -- equivalent to [1,2,3,4,5]
lis8 = [2, 5..19]  -- equivalent to [2,5,8,11,14,17]
lis9 = [10,9..2]  -- equivalent to [10,9,8,7,6,5,4,3,2]
lis10 = [0.1,0.4..1.5]  -- something crazy

mul11 = take 10 [11, 22..]  -- first 10 number multiple of 11
                            -- [11, 22..] is a infinity list

-- cycle
lis11 = take 10 (cycle [1,2])  -- [1,2,1,2,1,2,1,2,1,2]

-- repeat
-- lis12 = take 5 (repeat 1)  -- [1,1,1,1,1]
lis12 = replicate 5 1  -- do the same as above

-- list comprehension
lis13 = [x*3 | x <- [1..10]]
lis14 = [x*3 | x <- [1..10], even (x*3)]  -- only even number above list

length' xs = sum [1 | _ <- xs]
