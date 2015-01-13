doubleMe x = x + x
doubleUs x y = x*2 + y*2
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

-- variable naming rules/talk show host
conanO'Brien = "I'm Conan O'Brien!"

-- to get an element out of a list by index, use !! (indeces start at 0)
-- for example, "Steve Buscemi" !! 6
-- will yield 'B'
-- there are out-of-bounds errors as well

-- lists can be compared, and the comparison is done in lexigraphical order. So, first, the heads
-- are compared. Then, if they are equal, the second elements are compared, and so on.
-- [3,2,1] >  [2,1,0]  --> True
-- [3,4,2] >  [3,4]    --> True
-- [3,4,2] == [3,4,2]  --> True

-- head: 1st element
-- tail: chop off head
-- last: last element
-- init: chop off last
--
-- length.
-- null: list.empty
-- reverse
-- take: [x] [list], selects x from list
-- drop: [x] [list], drops x from list
-- maximum
-- minimum
-- sum
-- product: as sum, returns product of all elements
-- elem: [thing] [list of things] is thing in list?
-- cycle: takes a list, repeats it indefinitely (should probably use with take or something)
-- repeat: produces an infinite list of some element
-- replicate: [x] [y] puts x ys in a list
