-- This takes a collection and reduces it to a single value.
-- mySum calls the helper function helper, passing it 0 as an initial value for the
-- accumulator and the list xs. The helper function calls itself, adding x to the
-- accumulator value. In this way, the function recurses.
mySum xs = helper 0 xs
    where helper acc (x:xs) = helper (acc + x) xs
          helper acc _      = acc

-- this implementation of mySum uses foldl
foldlSum xs = foldl step 0 xs
    where step acc x = acc + x


-- a nicer sum: foldl, plus function, initial value of accumulator, and list
niceSum :: [Integer] -> Integer
niceSum xs = foldl (+) 0 xs

-- an even nicer sum, omitting the list xs from both the parameter list and the parameters to foldl
-- this gives a more compact function of the same type
nicerSum :: [Integer] -> Integer
nicerSum :: foldl (+) 0
