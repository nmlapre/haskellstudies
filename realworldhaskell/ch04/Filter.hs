-- This implementation will append x to the list if it's odd, otherwise discard it.

oddList :: [Int] -> [Int]
oddList (x:xs) | odd x      = x : oddList xs
               | otherwise  = oddList xs
oddList _                   = []

-- Such a function is so common (taking a predicate and applying it to each element in the 
-- input list), that filter from Prelude takes care of it.
-- :type filter --> filter :: (a -> Bool) -> [a] -> [a]
-- example use: filter odd [2,1,3,5,4] --> [1,3,5]
