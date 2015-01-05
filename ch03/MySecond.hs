-- file ch03/MySecond.hs

mySecond :: [a] -> a

mySecond xs = if null (tail xs) -- checks there are 2 left
              then error "list too short"
              else head (tail xs) -- 2nd from last

safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))

tidySecond :: [a] -> Maybe a
tidySecond (_:x:_) = Just x
tidySecond _       = Nothing
