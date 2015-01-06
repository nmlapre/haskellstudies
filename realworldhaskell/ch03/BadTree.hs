-- file: ch03/BadTree.hs

-- the below function is incorrect - we cannot place a variable in multiple positions
--      to express the notion "this value and that should be identical"
-- we'll instead use guards to fix this function
bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
bad_nodesAreSame _                         = Nothing

-- this code snippet uses guards
-- a pattern can be followed by >= 0 guards 
-- the | symbol introduces a guard, then a guard expression (Bool) happens,
-- then an = symbol (or -> for case expressions), then the body if the guard
-- expression is true. If a guard pattern matches, each guard associated with
-- that pattern is evaluated, in the order in which they are written.
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing
