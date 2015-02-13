-- The first version uses a helper function inSequence along with any to check if
-- any of the needles are in the nested list haystack.
-- The second function applies a lambda function (no name, one clause) to do the same exact job.
-- The third function uses a partially applied function to put the function on only some of
-- the arguments. We take isInfixOf and 'fix' it's first argument to be the needle variable
-- from the parameter list. This gives us a partially applied function that has exactly the same
-- type and behavior as the helper and lambda in the previous defitions.
-- The fourth function uses sections, a notational shortcut that allows writing a partialy applied
-- funtion in infix style. This sort of partial application is called a section. This function is arguably
-- the most readable version of the four of these.

import Data.List

isInAny needle haystack = any inSequence haystack
    where inSequence s = needle `isInfixOf` s

isInAny2 needle haystack = any (\s -> needle `isInfixOf` s) haystack

isInAny3 needle haystack = any (isInfixOf needle) haystack

isInAny4 needle haystack = any (needle `isInfixOf`) haystack
