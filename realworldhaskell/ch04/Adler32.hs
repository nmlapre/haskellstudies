{-|
 - Check this implementation of the Adler-32 checksum in Java:
 - public class Adler32
 - {
 -     private static final int base = 65521;
 -     public static int compute (byte[] data, int offset, int length)
 -     {
 -         int a = 1, b = 0;
 -         for (int i = offset; i < offset + length; i++) {
 -             a = (a + (data[i] & 0xff)) % base;
 -             b = (a + b) % base;
 -         }
 -         return (b << 16) | a;
 -     }
 - }
 -
 - Now, consider the following Haskell code, an attempt to replicate the above.
|-}

import Data.Char (ord)
import Data.Bits (shiftL, (.&.), (.|.))

base = 65521

adler32 xs = helper 1 0 xs
    where helper a b (x:xs) = let a' = (a + (ord x .&. 0xff)) `mod` base
                                  b' = (a' + b) `mod` base
                              in helper a' b' xs
          helper a b _      = (b `shiftl` 16) .|. a


-- This function is tail recursive, so the checksum is returned when the recursion terminates.
-- Let's attempt to make this look more like the mySum function from earlier.
-- The way this function is arranged is called a 'fold' because it 'folds up' a list.
-- There's foldl and foldr to fold from the left and right, respectively.
adler32_try2 xs = helper (1,0) xs
    where helper (a,b) (x:xs) = 
              let a' = (a + (ord x .&. 0xff)) `mod` base
                  b' = (a' + b) `mod` base
              in helper (a',b') xs
          helper (a,b) _     = (b `shiftL` 16) .|. a

-- definition of foldl:
foldl :: (a -> b -> a) -> a -> [b] -> a
foldl step zero (x:xs) = foldl step (step zero x) xs
foldl _    zero []     = zero


-- do adler with fold to make things a little clearer:
adler32_foldl xs = let (a, b) = foldl step (1, 0) xs
                   in (b `shiftL` 16) .|. a
    where step (a, b) x = let a' = a + (ord x .&. 0xff)
                          in (a' `mod` base, (a' + b) `mod` base)

