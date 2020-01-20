--- Naming Values worksheet


------------------------------------------------
-- pi is a real number which is approximately
-- three and 1,416 ten thousandths. Define a Double
-- with this approximate value.

pie:: Double               -- Mis-spelling deliberate
pie = pi


--------------------------------------------------
-- The formula for the area of a circle is 
-- pie times r squared, where r is the radius of 
-- the circle. Define a Double which is the area 
-- in square centimeters of a circle with diameter 
-- 10 centimeters.

areaCircleDiameter10:: Double
areaCircleDiameter10 = pie*10**2


----------------------------------------------
-- Define an Integer that is the number of 
-- seconds in a week.

secondsIn1Week:: Integer
secondsIn1Week = 60*60*24*7


---------------------------------------------
-- Define a List of Integers with the elements
-- 1 to 10 in increasing order

oneToTen:: [Integer]
oneToTen = [1..10]


---------------------------------------------
-- Define a string that is your first name

yourFirstName:: String
yourFirstName = "Dylan"


---------------------------------------------
-- Define an Integer that is your age

yourAge:: Integer     
yourAge = 21


---------------------------------------------
-- Define a Bool truthvalue that is 
-- (yourAge is greater than 19) or (yourFirstName is "Tim")

compareName:: Bool
compareName = (yourAge > 19) || (yourFirstName == "Tim")


---------------------------------------------
-- Define an Double that is the average of 
-- 3.0, 7.42, and 24.8


average:: Double
average = (3.0+7.42+24.8)/3


---------------------------------------------
-- Define an Integer that is the remainder
-- when 14563 is divided by 22. Hint use the 
-- "mod" operator. Try it out to see how it works

remainder::Integer 
remainder = mod 14563 22


---------------------------------------------
-- Define a tuple that has your first name 
-- and your age.

tuple:: (String,Integer)
tuple = (yourFirstName, yourAge)


---------------------------------------------
-- Compute the difference between your
-- approximation of pie, and the fraction
-- 22 divided by 7.

difference:: Double
difference = pie - (22/7)

----------------------------------
-- add a type declaration
-- to each of the named expressions
i1:: Integer  -- I have done the first one for you
i1 = 45

i2 = "123"

i3 = 45 <= i1

i4 = 'c'

i5 = ["abc","ok"]

i6 = head i5

i7 = tail "abc"  -- Recall a string is a shorthand for a list of Char

i8 = (True,4.5)

i9 = [i1,34]

-------------------------------------------------
-- For each named expression replace "undefined"
-- with an expression with the same type as the declaration


j1:: (String,Integer)
j1 = (yourFirstName, yourAge)

j2:: [Integer]
j2 = [1..3]

j3:: Char
j3 = 'a'


j4:: Double
j4 = average


j5:: (Integer,String,Integer,Char)
j5 = (yourAge, yourFirstName, yourAge, j3)

j6:: ([Char],(Bool,String))
j6 = (['a'..'c'], (compareName, yourFirstName))

j7:: [[Bool]]
j7 = [[True, False]]

j8:: [(String,Bool)]
j8 = [(yourFirstName, compareName)]