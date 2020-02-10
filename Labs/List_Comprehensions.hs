import Data.Char

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
doubleAll xs = [x * 2 | x <- xs]

--Exercise 10
capitalize :: String -> String
capitalize xs = [toUpper(x) | x <- xs]

--Exercise 11
mySigma :: Int
mySigma = sum[x^2 | x <- [1..100]]

--Exercise 12
sigma' :: Int -> Int
sigma' n = sum[x^2 | x <-[1..n]]

--Exercise 13
grid :: Int -> Int -> [(Int, Int)]
grid a b = [(a, b) | a <-[0..a], b <-[0..b]]

--Exercise 14
square :: Int -> [(Int, Int)]
--square n= [(x, y) | x<-[0..n], y <-[0..n], x/=y]
square n = [(x, y) | (x, y) <- grid n n, x/=y]

--Exercise 15
--myReplicate 3 True = [True, True, True]
myReplicate :: Int -> a -> [a]
myReplicate x a = [a | _ <- [1..x]] 

--Exercise 16
pyhs :: Int -> [(Int, Int, Int)]
pyhs n = [(x, y, z) | x <-[1..n], y <-[1..n], z<-[1..n], x^2 + x^2 = z^2]

--Exercise 17
perfects :: Int -> [Int]
perfects n = [x | x<-[1..n], x==sum(factors n) - x]