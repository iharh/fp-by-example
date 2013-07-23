my_max :: Ord a => [a] -> a
my_max = foldr1 max
