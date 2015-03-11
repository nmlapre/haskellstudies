--just like mathematical set notation, list comprehensions can apply complex
--functions over a list
--this example gets the first 10 even numbers greater than or equal to 12

test1 = [x*2 | x <- [1..10], x*2 >= 12]

--how about every number between 50 and 100 divisible by 3?
test2 = [x | x <- [50..100], x `mod` 7 == 3]

--we can have several predicates in list comprehensions
test3 = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

--get the products of all possible combinations between two lists
test4 = [x*y | x <- [1,2,3], y <- [4,5,6]]

--all possible combinations of two lists of words?
nouns = ["shoes", "frogs", "cowboys"]
adjectives = ["grumpy", "fergilicious", "plaid"]
test5 = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

--of all odd numbers in the list, replace ones < 10 with Boom! and >10 with Bang!
boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]

--can i write fizzbuzz with this? --first iteration, doesn't print FizzBuzz or numbers
bad_fizzbuzz = [ if x `mod` 3 == 0 then "Fizz" else "Buzz" | x <- [1..100]]

--this works by checking each n mod given numbers, then applying that in a list comprehension
--yay!
fizzbuzz' n | n `mod` 15 == 0 = "FizzBuzz"
            | n `mod` 5  == 0 = "Fizz"
            | n `mod` 3  == 0 = "Buzz"
            | otherwise       = show n
l = [ fizzbuzz' x | x <- [1..100] ]
fizzbuzz = print $ l

--write a length function that calculates length with list comprehensions
--this function says, let's just have everything in the list be 1, then sum it all
length' xs = sum [1 | _ <- xs]

--a function to remove non-uppercase letters
--this function works by taking each character from st, and returning it if it's
--in the set of letters [A..Z]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

