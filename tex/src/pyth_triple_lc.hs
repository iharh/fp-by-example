pyth :: (Num a, Enum a) => a -> [(a, a, a)]
pyth n = [(x,y,z) | x <- [1..n], y <- [x..n], z <- [y..n],
          x^2 + y^2 == z^2]