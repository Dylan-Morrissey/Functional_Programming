module Main where

import Lib
import Data.List
import Clean.CleanVotes 

main :: IO ()
main = do

 -- Reads the data from uk.csv (Uncleaned)
    csvData <- readFile "uk.csv"
    
    print (csvData)
