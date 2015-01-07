-- Problem: Create a function that sorts a list of lists based on the length of each
--          sublist. Consider using the sortBy function from the Data.List module.

import Data.List

sortLists :: [[a]] -> [[a]]
sortLists l = sortBy lengthComp l
    where lengthComp a b = compare (length a) (length b)

-- This solution uses a new function (to me) called sortBy. sortBy takes a comparison
-- function as its first argument, and the data as the second argument (here it is a list).
