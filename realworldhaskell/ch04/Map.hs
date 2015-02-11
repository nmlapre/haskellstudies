import Data.Char (toUpper) -- used for upperCase


-- equivalent to square.c
square :: [Double] -> [Double]
square (x:xs) = x*x : square xs
square []     = []

-- equivalent to uppercase.c
upperCase :: String -> String
upperCase (x:xs) = toUpper x : upperCase xs
uppercase []     = []
