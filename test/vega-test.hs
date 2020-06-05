{-# LANGUAGE TypeApplications #-}

{-# OPTIONS_GHC -w #-}
module Main where

import Data.Aeson (Value, decode)
import Data.Aeson.Encode.Pretty (encodePretty)
import qualified Data.ByteString.Lazy.Char8 as BL
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let filename = args !! 0

  lbs <- BL.readFile filename
  let Just v = decode @Value lbs 
  print v
  BL.putStrLn $ encodePretty v
  -- print filename
  -- putStrLn "test"
