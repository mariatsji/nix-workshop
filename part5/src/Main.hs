module Main where

import System.Clock

main :: IO ()
main = do
    time <- getTime Monotonic
    print "The time is:"
    print time

