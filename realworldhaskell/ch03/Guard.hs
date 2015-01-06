-- file: ch03/Guard.hs

-- We can also use pattern matching in places besides function definitions.
-- The case construct below allows pattern matching.
-- (this function is defined in Data.Maybe)
fromMaybe defval wrapped = 
    case wrapped of
      Nothing     -> defval
      Just        -> value
