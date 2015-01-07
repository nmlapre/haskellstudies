-- Problem: Consider three two-dimensional points a, b, and c. If we look at the angle formed by
-- the line segment from a to b and the line segment from b to c, it either turns left, turns right,
-- or forms a straight line. Define a Direction data type that lets you represent these possibilities.

data Direction = leftTurn | rightTurn | stright
                 deriving (Show)

-- This solution seems pretty simple. Just define a data type with three possibilities.
-- Hoever, I can think of some more. What if the point is the same (no movement), or if
-- it goes straight backwards, or moves towards an imaginary number?
