module Test.Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import System.CommandExists (commandExists)

main :: Effect Unit
main = do
  pursExists <- commandExists "purs"
  if pursExists then log "Purescript compiler 'purs' found!"
                else log "Purescript compiler 'purs' not found!"
