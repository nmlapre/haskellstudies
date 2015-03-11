--Calculate the sum of all the primes below one million.
primes = 2 : filter (null . tail . primeFactors) [3,5..]

primeFactors n = factor n primes
    where
        factor n (p:ps)
            | p*p > n        = [n]
            | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
            | otherwise      =     factor n ps

problem_10 = sum (takeWhile (< 1000000) primes)
