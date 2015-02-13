-- here we show how, when writing things explicitly, we can cover edge cases
-- however, a lambda is only allowed to have a single clause in its definition
safeHead (x:_) = Just x
safeHead _     = Nothing

unsafeHead = \(x:_) -> x
