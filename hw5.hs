-- length (_:xs) = 1 + length xs
drop 0 xs = xs
drop n [] = []
drop n (x : xs) = drop (n-1) xs
