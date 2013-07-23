foldr :: (a -> b -> b) -> b -> [a] -> b
foldr _ z []     = z
foldr f z (x:xs) = f x (foldr f z xs)
-- foldr op x0 (x:xs) = x 'op' (foldr op x0 xs)