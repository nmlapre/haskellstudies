import Data.Char (digitToInt) -- we'll need ord shortly

asInt :: String -> Int

loop :: Int -> String -> Int

asInt xs = loop 0 xs

-- This loop function is meant to use an accumulator (acc) to explicitly
-- 'loop' through the offered data, converting it to an integer.
-- Note that ' is valid in variable names, and denotes "prime."
loop acc [] = acc
loop acc (x:xs) = let acc' = acc * 10 + digitToInt x
                  in loop acc' xs
