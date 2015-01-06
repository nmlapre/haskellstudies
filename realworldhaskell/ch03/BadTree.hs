-- file: ch03/BadTree.hs

bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a
bad_nodesAreSame _                         = Nothing
