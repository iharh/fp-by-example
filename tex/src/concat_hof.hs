-- Concatenate a list of lists.
concat :: [[a]] -> [a]
concat = foldr (++) []