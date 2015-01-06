-- file: ch03/BogusPattern.hs

-- the following code is the incorrect way to match against a variable
data Fruit = Apple | Orange
apple = "apple"
orange = "orange"
whichFruit :: String -> Fruit
whichFruit f = case f of
                 apple  -> Apple
                 orange -> Orange

-- it's easier to spot the mistake in this style (equational style)
-- note: equational is not a keyword
-- here apple does not refer to the top level value named apple: it is a local pattern variable
equational apple  = Apple
equational orange = Orange

-- here is the corrected version of this function (matches the literal values):
betterFruit f = case f of
                  "apple"  -> Apple
                  "orange" -> Orange
