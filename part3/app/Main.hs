module Main where

import KafkaInfo (printKafkaDebugInfo)

main :: IO ()
main = do
    putStrLn "hello world"
    printKafkaDebugInfo