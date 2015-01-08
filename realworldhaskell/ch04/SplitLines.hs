-- We opt to define isLineTerminator after, and give it a descriptive name, in order
-- to increase readability. This is not popular with everyone. break is a Prelude function
-- that here partitions the list into two parts. It takes a function as its first parameter,
-- which must examine an element of the list, and returns a Bool that indicates whether or
-- not to break the list at that point. The break function returns a pair, which consists
-- of the sublist before the predicate returned True, and the rest of the list (pre, suf).

uplitLines [] = []
splitLines cs =
    let (pre, suf) = break isLineTerminator cs
    in  pre : case suf of
                ('\r':'\n':rest) -> splitLines rest
                ('\r':rest)      -> splitLines rest
                ('\n':rest)      -> splitLines rest
                _                -> []

isLineTerminator c = c == '\r' || c == '\n'

-- In the case statement, we split lines based on whatever line separator is present.
-- The pre : expression indicates that we should add the pre value to the front. The 
-- suffix will be decided by the case statement.
