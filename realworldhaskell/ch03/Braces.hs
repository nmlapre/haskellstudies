-- file: ch03/Braces.hs

-- The following two blocks are equivalent due to their structure.
-- The structure of the first is layout, and the second is explicit.
-- Indentation can be unusual when using {} to denote blocks.
-- This is also valid for where clauses and top-level declarations (anywhere layout is valid).
bar = let a = 1
          b = 2
          c = 3
      in a + b + c

foo = let { a = 1; b = 2;
        c = 3 }
      in a + b + c

-- as a note: though it's valid, explicit structuring is almost never used in reality
