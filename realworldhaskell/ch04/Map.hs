import Data.Char (toUpper) -- used for upperCase


-- equivalent to square.c
square :: [Double] -> [Double]
square (x:xs) = x*x : square xs
square []     = []

-- equivalent to uppercase.c
upperCase :: String -> String
upperCase (x:xs) = toUpper x : upperCase xs
uppercase []     = []


-- rewritten to use map, from prelude
square2 xs = map squareOne xs
    where squareOne x = x * x

upperCase2 xs = map toUpper xs


-- map abstracts out hte pattern common to square and upperCase so we can use it
-- with less boilerplate code. Implement it from scratch? okay.
myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = f x : myMap f xs
myMap _ _      = []
