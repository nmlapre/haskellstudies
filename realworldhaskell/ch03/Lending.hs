-- file ch03/Lending.hs

-- keyword let begins variable declarations, in ends it
lend amount balance = let reserve       = 100
                          newBalance = balance - amount
                      in if balance < reserve
                          then Nothing
                          else Just newBalance

-- the where clause can also introduce local variables (but afterwards)
-- it allows the reader to see important logic first, then worry about values
lend2 amount balance = if amount < reserve
                       then Just newBalance
                       else Nothing
    where reserve    = 100
          newBlaance = balance - amount

-- reworked version that uses guards: (except apparently we need 0.5 this time for unexplained reasons)
-- basically here we cover each case and what we'll do in that case.
-- the reason it looks so sparse is because we just need to do a subtraction,
-- which actually is already done for us in the where clause
lend3 amount balance
    | amount <= 0             = Nothing
    | amount > reserve * 0.5  = Nothing
    | otherwise               = Just newBalance
  where reserve     = 100
        newBalance  = balance - amount
