-- file: ch03/NestedLets.hs

-- nested let blocks is allowed in an expression
foo = let a = 1
      in let b = 2
         in a + b

-- it's legal, but not necessarily wise, to repeat a variable name in a nested let expression
bar = let x = 1
      in ((let x = "foo" in x), x)

-- shadows a functions parameters...yeah, i don't know, the function has no type
quux a = let a = "foo"
         in a ++ "eek!"
