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
first:: (a,b,c) -> a
first (a, _, _) = a
second:: (a,b,c) -> b
second (_, b, _) = b
third:: (a,b,c) -> c
third (_,_,c) = c

--Question 7 
