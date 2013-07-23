class  Monad m  where
    -- Sequentially compose two actions, passing any value
    -- produced by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b
    -- Inject a value into the monadic type.
    return      :: a -> m a
    -- Sequentially compose two actions, discarding any
    -- value produced by the first, like sequencing operators
    -- (such as the semicolon) in imperative languages.
    (>>)        :: forall a b. m a -> m b -> m b
        -- Explicit for-alls so that we know what order to
        -- give type arguments when desugaring
    m >> k      = m >>= \_ -> k
    ...