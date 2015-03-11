--find the sum of digits in 100!
--this function sums each digit in 100! as an integer via Char.digitToInt
import Data.Char (digitToInt)
problem_20 = sum $ map digitToInt $ show $ product [1..100]

problem_20_gen n = sum $ map digitToInt $ show $ product [1..n]
