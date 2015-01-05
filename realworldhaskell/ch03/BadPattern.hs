-- file: ch03/BadPattern.hs

-- the following omits a check for the [] constructor
-- this will yield a non-exhaustive pattern error (in function badExample)
badExample (x:xs) = x + badExample xs

-- provide a default behavior in cases where we don't care about specific constructors
-- (we can use a wild card pattern)
goodExample (x:xs) = x + goodExample xs
goodExample _      = 0
