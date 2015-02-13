-- only returns non-empty suffixes of a list
-- the pattern xs@(_:xs') is called an as-pattern, and it means "bind the variable xs to 
-- the value that matches the right side of the @ symbol"
-- the wildcard _ indicates that we're not interested in the value of the head
-- if the pattern after the @ matches, xs will be bound to the entire list that matched,
-- and xs' to all but the head of the list.
import Data.List -- for tails
suffixes :: [a] -> [[a]]
suffixes xs@(_:xs') = xs : suffixes xs'
suffixes _         = []

-- this version doesn't use the as pattern, and as a result is less readable
noAsPattern :: [a] -> [[a]]
noAsPAttern (x:xs) = (x:xs) : noAsPattern xs
noAsPattern _      = []

-- init returns all but the last element of a list, so it can strip epsilon for us....nice
suffixes2 xs = init (tails xs)

compose :: (b -> c) -> (a -> b) -> a -> c
compose f g x = f (g x)

suffixes3 xs = compose init tails xs

suffxes4 = compose init tails

suffixes5 = init . tails
