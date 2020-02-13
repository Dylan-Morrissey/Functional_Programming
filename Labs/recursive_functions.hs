--Exercise 1

sumdown :: Int -> Int
sumdown 0 = 0
sumdown n = n + sumdown(n-1)

--Exercise 2
mySum :: [Int] -> Int
mySum [] = 0
mySum (n:ns) = n + mySum ns

--Exercise 3
myProduct :: [Int] -> Int
myProduct [] = 1
myProduct (n:ns) = n * myProduct ns

--Exercise 4 
doubleAll :: [Int] -> [Int]
doubleAll [] = []
doubleAll (x:xs) = x*2 : doubleAll xs  

--Exercise 5
exponention :: Int -> Int -> Int
exponention _ 0 = 1
exponention x y = x * exponention (x y-1)