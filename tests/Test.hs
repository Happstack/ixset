module Main where

import Data.IxSet.Tests (allTests)
import Prelude hiding (catch)
import Test.HUnit (failures, runTestTT)
import qualified Test.HUnit as HUnit
import System.Exit (exitFailure)
import qualified System.Exit as Exit
import Test.HUnit
import Test.HUnit.Text

main = do
    count <- HUnit.runTestTT (TestList allTests)
    if HUnit.failures count > 0 then Exit.exitFailure else return ()