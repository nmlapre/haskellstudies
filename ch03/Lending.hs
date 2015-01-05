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
