-- There is only one Pythagorean triplet, {a,b,c} for which a + b + c = 1000. Find abc.
triplets l = [[a,b,c] | m <- [2..limit],
                        n <- [1..(m-1)],
                        let a = m^2 - n^2,
                        let b = 2*m*n,
                        let c = m^2 + n^2,
                        a + b + c == l]
    where limit = floor . sqrt . fromIntegral $ l

problem_9 = product . head . triplets $ 1000
