1. return x >>= f    ==  f x
2. mv >>= return     ==  mv
3. (mv >>= f) >>= g  ==  mv >>= (\x -> (f x >>= g))