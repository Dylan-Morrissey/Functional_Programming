--Question 4
-- In a similar way to && in this section’s slides, show how the disjunction operator || can be defined in three different ways using pattern matching.
myOr :: Bool -> Bool -> Bool
myOr False  b = b
myOr True   _  = True

--Question 5
lucky :: Integral a => a-> String
lucky a
    | a == 7 = "Lucky you buy a lotto ticket"
    | a == 13 = "You, sadly are quite unlucky."
    | otherwise = "Mmmm.... Can't really say ...."

--Question 6
first :: (a,b,c) -> a
first (a, _, _) = a
second:: (a,b,c) -> b
second (_, b, _) = b
third:: (a,b,c) -> c
third (_,_,c) = c

--Question 7 

luhnDouble :: Int -> Int
luhnDouble x = if (2 * x) > 9
    then (2 * x) - 9
    else 2 * x

luhn :: Int -> Int -> Int -> Int -> Bool
luhn x1 x2 x3 x4 = if 0 == sum[luhnDouble x1, x2, luhnDouble x3, x4] `mod` 10
    then True
    
    else False

--Question 8
luhnGetCheck:: Int -> Int -> Int -> Int
luhnGetCheck a b c = 10 - sum[luhnDouble a, b, luhnDouble c] `mod` 10