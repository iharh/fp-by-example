-- Just to remind a Monad definition:
(>>=) :: forall a b. m a -> (a -> m b) -> m b
-- Left-to-right Kleisli composition of monads
(>=>) :: Monad m => (a -> m b) -> (b -> m c) -> (a -> m c)
f >=> g = \x -> f x >>= g
