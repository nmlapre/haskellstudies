-- guards in this function are essentially super compact and readable if else statements
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight."
    | bmi <= 25.0 = "You're average BMI range."
    | bmi <= 30.0 = "You're overweight."
    | otherwise   = "You're super overweight."


-- in this second function, we just calculate the bmi for you (shows that guards can take many things)
-- I decided that that was obvious and just messed around with where clauses for fun
bmiTell' :: (RealFloat a) => a -> a -> String
bmiTell' weight height
    | bmi <= 18.5 = "You're underweight."
    | bmi <= 25.0 = "You're average BMI range."
    | bmi <= 30.0 = "You're overweight."
    | otherwise   = "You're super overweight."
    where bmi = weight / height ^ 2
