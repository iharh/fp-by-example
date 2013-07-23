sumnats :: Int -> Int
sumnats n = foldr (+) 0 (map (\x -> x^2) [1..n])
