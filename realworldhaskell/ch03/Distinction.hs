-- file: ch03/Distinction.hs

-- Same type, since both tuples with elements of the same type are structurally identical.
a = ("Porpoise", "Grey")
b = ("Table", "Oak")

-- Different names, so they have distinct types, even if they are structurally equivalent.
data Cetacean = Cetacean String String
data Furniture = Furniture String String
c = Cetacean "Porpoise" "Grey"
d = Furniture "Table" "Oak"
