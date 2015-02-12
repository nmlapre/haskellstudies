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
