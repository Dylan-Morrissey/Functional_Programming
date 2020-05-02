module Clean.CleanVotes where

import Text.Read
import Data.List.Split (splitOn)
import Data.List (sortBy)
import Data.Function (on)

--To do
    --Split the data into list based on \n (Done)
    --Remove holes and duplicates eg. * (Done) 
    --Remove empty lines (Done)
    --Returing candidate names ()

-- Splits the data into a 2d array not cleaned
-- First Value = [["1","*","*","*","*"]]
split_new_line csvData = [drop 2 (splitOn "," x )  | x <- tail (splitOn "\n" csvData)]

-- Removes * and "" from the data
remove_empty list_data = [[x | x <- xs, x/="*", x/=""] | xs <- list_data]

-- Goes through the list and removes any duplicates using the function below
remove_duplicates list_data = [removeDuplicates xs | xs <- list_data, not (null xs)]

-- Change Values to candidat names
candidate_names list_data = [zip ["D. Abbott", "E. Balls", "A. Burbhm", "D. Milliband", "E. Milliband"] [x | x <- xs] | xs <- list_data]

-- Sorts Values based on the second numbe in the tuple
sort_by_vote list_data = [sortBy (compare `on` snd) xs | xs <- list_data]

-- Function to remove duplicate from stackoverflow:
-- https://stackoverflow.com/questions/16108714/removing-duplicates-from-a-list-in-haskell-without-elem
removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates = rdHelper []
    where rdHelper seen [] = seen
          rdHelper seen (x:xs)
              | x `elem` seen = rdHelper seen xs
              | otherwise = rdHelper (seen ++ [x]) xs