module System.CommandExists (commandExists) where

import Effect (Effect)
import Effect.Uncurried

foreign import sync :: EffectFn1 String Boolean

commandExists :: String -> Effect Boolean
commandExists = runEffectFn1 sync 
