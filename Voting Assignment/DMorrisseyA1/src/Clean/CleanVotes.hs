module Clean.CleanVotes where

import Text.Read
import Data.List.Split (splitOn)

--To do
    --Split the data into list based on \n (Done)
    --Remove holes and duplicates eg. * 
    --Remove empty lines
    --Returing candidate names

-- Splits the data into a 2d array not cleaned
-- First Value = [["1","Ms D Abbott MP  ","1","*","*","*","*"]]
split_new_line csvData = [splitOn "," x | x <- tail (splitOn "\n" csvData)]

-- Removes * and "" values from votes
remove_empty list_data = [x | xs <- list_data, x <- xs, x/="*", x/=""]