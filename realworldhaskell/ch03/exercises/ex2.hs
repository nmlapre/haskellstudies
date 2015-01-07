-- Ex2: Enhancement. Add a type signature for your function to the source file. To test it,
--      load the source file into ghci again.

elementCount :: [a] ->  Double                 -- this line does the thing
elementCount (_:xs) = 1 + elementCount (xs)
elementCount _      = 0

-- note: we could also use Int. I chose Double because it allows operations such as
--       floating point division. And that's cool.
