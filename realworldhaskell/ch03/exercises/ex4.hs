-- Problem: Turn a list into a palindrome. e.g. [1,2,3] becomes [1,2,3,3,2,1]

palindrome :: [a] -> [a]
palindrome (x:xs) = [x] ++ palindrome xs ++ [x]
palindrome [] = []


-- First, let me just say wow - this is a remarkably succinct way of expressing things.
-- This solution deconstructs the list recursively, then reconstructs it by placing each
-- element at the end as it recurses back up.
