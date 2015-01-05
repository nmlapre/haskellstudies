-- file: ch03/add.hs

-- The below function is defined as a series of equations.
-- Both clauses define the behavior of the same function for different input patterns.
-- Patterns come before the equals sign.
myNot True  = False
myNot False = True


-- The below definition of sumList uses pattern matching:
--      -if a list is passed to the function, the : operator exists, so it matches
--      -otherwise, it hits the base case and returns 0
-- Note: the standard function sum does this already
sumList (x:xs) = x + sumList xs
sumList []     = 0
