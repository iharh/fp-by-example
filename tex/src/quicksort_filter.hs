qsort        :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = (qsort lth) ++ [x] ++ (qsort gth) where
         lth = filter (<  x) xs
         gth = filter (>= x) xs