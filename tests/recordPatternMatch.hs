

module RecordPatternMatch where

import           Language.Fay.FFI
import           Language.Fay.Prelude

data Person = Person String String Int

main = print (case Person "Chris" "Done" 14 of
                Person "Chris" "Done" 13 -> "Hello!"
                _ -> "World!")

print :: String -> Fay ()
print = ffi "console.log(%1)"
