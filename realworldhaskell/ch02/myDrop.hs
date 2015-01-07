-- file: ch02/myDrop.hs
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)

-- also possible:
myDropX n xs = if n <= 0 || null xs then xs else myDrop (n - 1) (tail xs)


-- later note: reformulation using patterns and guards:
-- this style allows us to enumerate up front the cases in which we expect a function to 
-- behave differently. The code becomes harder to read the more we bury the decisions in if
-- expressions (sounds familiar)
niceDrop n xs | n <= 0 = xs
niceDrop _ []          = []
niceDrop n (_:xs)      = niceDrop (n - 1) xs
