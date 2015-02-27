-- here all acts as an as pattern for (x:xs), providing a convenient way to reference (x:xs)
capital :: String -> String
capital [] = "Nothing, silly."
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
