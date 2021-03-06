import Data.Array
n = 28124
abundant n = eulerTotient n - n > n
abunds_array = listArray (1, n) $ map abundant [1..n]
abunds = filter (abunds_array !) [1..n]

rests x = map (x-) $ takeWhile (<= x `div` 2) abunds
isSum = any (abunds array !) . rests

problem_23 = print . sum . filter (not . isSum) $ [1..n]
