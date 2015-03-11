--find the longest collatz chain starting at a number < 1000000
import Data.List
import Data.Array
import Data.Ord (comparing)
problem_14 = j 1000000 where
f :: Int -> Integer -> Int
f k 1 = k
f k n = f (k + 1) $ if even n then div n 2 else 3*n + 1
g x y = if snd x < snd y then y else x
h x n = g x (n, f 1 n)
j n   = fst $ foldl' h (1,1) [2..n-1]

syrs n = 
    a
    where
    a = listArray (1,n) $ 0:[1 + syr n x | x <- [2..n]]
    syr n x =
        if x' <= n then a ! x' else 1 + syr n x'
        where
        x' = if even x then x `div` 2 else 3*x + 1

problem_14' = print $ maximumBy (comparing snd) $ assocs $ syrs 1000000
