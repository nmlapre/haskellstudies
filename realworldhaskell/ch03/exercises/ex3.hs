-- Write a function that computes the mean of a list.

meanList l = sum l / fromIntegral (length l)

{-|
For this solution, I decided to use standard functions to simplify the expression.
The empty list case is handled implicitly. There were posted solutions that were super cool.
Here is one such solution (credit Rob Grainger):

mean :: [Double] -> Double
mean l = snd (inner l) / fst (inner l)
    where inner []     = (0,0)
          inner (x:xs) = (fst (inner xs) + 1, snd (inner xs) + x)
|-}
