module Main where

import Lib
import Data.List
import Clean.CleanVotes 
import Alt.AltVote
import SingleTransferableVote.STV

main :: IO ()
main = do

 -- Reads the data from uk.csv (Uncleaned)
    csvData <- readFile "uk.csv"
    let cleaned_votes = sort_by_vote (candidate_names (remove_duplicates (remove_empty (split_new_line csvData)))) 


    print (cleaned_votes)
