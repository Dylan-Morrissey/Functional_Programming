--Exercise 1
exc1 = [1..6]

--Excercise 2
exc2 = [10,20..60]

--Exercise 3
exc3 = [(x,x) | x <- [1..4]]

--Exercise 4
exc4 = [(x,x+1) | x <- [1..4]]

--Exercise 5
exc5 = [(x,1) | x <- [1..5]]

--Exercise 6
exc6 = [(x,x^2) | x <- [1..10]]

--Exercise 7 
f1 :: [(Int, Int)]
f1 = [(x, y) | x <-[1..3], y<- [4..5]]
f2 :: [(Int, Int)]
f2 = [(x, y) | y<- [4..5], x <-[1..3]]
f3 :: [(Int, Int)]
f3 = [(y, x) | x <-[1..3], y<- [4..5]]

--Exercise 8 
isEven :: Integer -> Bool
isEven n = (n `mod` 2 == 0)
evenList = [2*n | n <- [2,4,7], isEven n, n>3]

--Exercise 9
doubleAll :: [Integer] -> [Integer]
doubleAll [x] = [x..*2]
