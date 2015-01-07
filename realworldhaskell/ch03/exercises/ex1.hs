-- Problem: Write a function that computes the number of elements in a list.
--          To test it, ensure that it gives the same answers as the standard length function.

elementCount (x:xs) = 1 + elementCount (xs)
elementCount _      = 0
