-- file: ch03/Bool.hs

-- The Bool type has two value constructors, True and False.
-- Each value constructor is separated in the definition by a | character (read as OR).
-- When a type has more than one value constructor, they are usually referred to as
--      alternatives or cases. We can use one of the alternatives to construct stuff.
-- 
data Bool = False | True
