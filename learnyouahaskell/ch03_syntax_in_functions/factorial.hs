factorial :: (Integral a) => a -> a
factorial 1 = 1
factorial n = n * factorial (n - 1)
