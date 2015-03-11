-- What is the difference between the sum of the squares and the square of the sums
-- between 1 and 100?
problem_6 = (sum [1..100])^2 - sum (map (^2) [1..100])

-- This program subtracts the sum of each square between 1..100 from the square of the
-- sum of 1..100, because that's what's up and yeah. the map function takes a function 
-- as the first artument and applies it to all items in the list passed in as the
-- second argument.
