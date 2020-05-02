module Main where

import Lib
import Data.List
import Clean.CleanVotes 

main :: IO ()
main = do

 -- Reads the data from uk.csv (Uncleaned)
    csvData <- readFile "uk.csv"
    let list_data = split_new_line csvData
    let cleaned_votes = sort_by_vote (candidate_names (remove_duplicates (remove_empty list_data))) 
    print  (cleaned_votes)

