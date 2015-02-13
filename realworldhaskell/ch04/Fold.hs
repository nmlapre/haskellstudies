-- show right folding: function definition
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr step zero (x:xs) = step x (foldr step zero xs)
foldr _    zero []     = zero

-- the identity transformation with foldr replaces the empty list with itself,
-- and applies the list constructor to each head/tail pair
identity :: [a] -> [a]
identity xs = foldr (:) [] xs

append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs

-- incorrect: seq is hidden by the application of someFunc
-- since someFunc will be evaluated first, seq may occur too late
hiddenInside x y = someFunc (x `seq` y)

-- incorrect: a variation of the above mistake
hiddenByLet x y z = let a = x `seq` someFunc y
                    in anotherFunc a z

-- correct: seq will be evaluated first, forcing evaluation of x
onTheOutside x y = x `seq` someFunc y

-- to strictly evaluate several values, chain applications of seq together
chained x y z = x `seq` y `seq` someFunc z
