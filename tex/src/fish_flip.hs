-- Right-to-left Kleisli composition of monads.
(<=<) :: Monad m => (b -> m c) -> (a -> m b) -> (a -> m c)
(<=<)  = flip (>=>)
-- Just flip function arguments
flip :: (a -> b -> c) -> b -> a -> c
flip f x y =  f y x