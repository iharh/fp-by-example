instance  Monad Maybe  where
-- (>>=) :: m a -> (a -> m b) -> m b
  (Just x) >>= k      = k x
  (Just _) >>  k      = k
  Nothing  >>= _      = Nothing

  return              = Just
