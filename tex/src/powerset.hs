powerset :: [a] -> [[a]]
powerset = filterM (\x -> [True, False])
-- powerset xs = filterM (\x -> [True, False]) xs
