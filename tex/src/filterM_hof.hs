-- This generalizes the list-based 'filter' function.
filterM :: (Monad m) => (a -> m Bool) -> [a] -> m [a]
filterM _ []     = return []
filterM p (x:xs) = do
  flg <- p x
  ys  <- filterM p xs
  return (if flg then x:ys else ys)