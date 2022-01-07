module KafkaInfo(printKafkaDebugInfo) where

import Kafka.Dump (hPrintSupportedKafkaConf)
import System.IO (stdout)

printKafkaDebugInfo :: IO ()
printKafkaDebugInfo = print "printing all kafka info to stdout: " >> hPrintSupportedKafkaConf stdout