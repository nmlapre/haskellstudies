-- Problem: Using the binary tree type from earlier in the chapter, write a function that
-- will determine the height of the tree. The height is the largest number of hops from the
-- root to an Empty. For example, the tree Empty has height zero; `Node "x" Empty Empty` has
-- height one; `Node "x" Empty (Node "y" Empty Empty)` has height two; and so on.

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child"  Empty Empty)
                           (Node "right child" Empty Empty)

height :: Tree a -> Int
height Empty = 0
height (Node _ Empty Empty) = 1
height (Node _ l Empty)     = 1 + (height l)
height (Node _ Empty r)     = 1 + (height r)
height (Node _ l r)         = 1 + (max (height l) (height r))

-- The above implementation of the height determination on a binary tree feels a little more
-- complex than it has to be. But, if nothing else, it's extremely explicit about what it does,
-- and it does it correctly.

tidyHeight :: Tree a -> Int
tidyHeight Empty = 0
tidyHeight (Node _ l r) = 1 + max (testheight l) (testheight r)

-- Alright, I figured out that I really didn't need to define left and right leaf cases. The 
-- function tidyHeight above works equivalently. Perhaps there is some speed difference, but
-- for the sake of simplicity the second function is pretty great.
