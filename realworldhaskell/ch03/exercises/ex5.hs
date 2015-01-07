-- Problem: Write a function that determines whether its input list is a palindrome.

isPalindrome xs = xs == reverse xs

-- This solution is pretty quick, and really easy to read. Thanks to the standard
-- function reverse, we can simply compare the original list to the reversed list. 
