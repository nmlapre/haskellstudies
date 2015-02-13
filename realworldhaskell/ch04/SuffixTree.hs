-- only returns non-empty suffixes of a list
-- the pattern xs@(_:xs') is called an as-pattern, and it means "bind the variable xs to 
-- the value that matches the right side of the @ symbol"
-- the wildcard _ indicates that we're not interested in the value of the head
-- if the pattern after the @ matches, xs will be bound to the entire list that matched,
-- and xs' to all but the head of the list.
suffixes :: [a] -> [[a]]
suffixes xs@(_xs') = xs : suffixes xs'
suffixes _         = []

-- this version doesn't use the as pattern, and as a result is less readable
noAsPattern :: [a] -> [[a]]
noAsPAttern (x:xs) = (x:xs) : noAsPattern xs
noAsPattern _      = []
