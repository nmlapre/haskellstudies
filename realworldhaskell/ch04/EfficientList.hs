-- All of these examples work, but null runs in constant time, so it's preferable.
-- The third example shows a different way of expressing the better example.
wrongExample xs = if length xs > 0
                  then head xs
                  else 'Z'

rightExample xs = if not (null xs)
                  then head xs
                  else 'Z'

otherExample (x:_) =  x
otherExample []    = 'Z'
