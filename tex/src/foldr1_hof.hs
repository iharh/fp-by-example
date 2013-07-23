-- | 'foldr1' is a variant of 'foldr' that
-- has no starting value argument,
-- and thus must be applied to non-empty lists.
foldr1 :: (a -> a -> a) -> [a] -> a
foldr1 _ [x]    =  x
foldr1 f (x:xs) =  f x (foldr1 f xs)
foldr1 _ []     =  errorEmptyList "foldr1"