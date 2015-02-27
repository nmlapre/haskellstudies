head' :: [a] -> a
head' [] = error "can't call head on an empty list, dummy!"
head' (x:_) = x
