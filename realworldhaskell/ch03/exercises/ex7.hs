-- Problem: Define a function that joins a list of lists together using a separator value.

intersperse :: a -> [[a]] -> [a]
intersperse _ [] = []
intersperse s (xs:[]) = xs              -- don't add a trailing separator in the last element
intersperse s (x:xs) = x ++ [s] ++ intersperse s xs

-- This function handles each situation explicitly, a style of which I'm becoming fond.
-- The last statement of the function will intersperse the separator recursively through the
-- list of lists, and make it into one list at the end. Pretty awesome that it happens in one line.
