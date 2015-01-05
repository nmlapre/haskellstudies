-- file: ch03/Tuple.hs

-- This function will pattern match a 3-tuple and return the third element.
third (a, b, c) = c

-- This function will pattern match a more complex structure.
complicated (True, a, x:xs, 5) = (a, xs)

