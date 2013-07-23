class Monad m => MonadPlus m where
   -- the identity of 'mplus'.
   -- It should also satisfy the equations
   --   mzero >>= f  =  mzero
   --   v >> mzero   =  mzero
   mzero :: m a 
   -- an associative operation
   mplus :: m a -> m a -> m a

instance MonadPlus [] where
   mzero = []
   mplus = (++)

instance MonadPlus Maybe where
   mzero = Nothing
   Nothing `mplus` ys = ys
   xs      `mplus` _  = xs