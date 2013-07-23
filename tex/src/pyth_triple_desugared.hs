import Control.Monad
pyth n =
  [1..n] >>= (\x ->
  [x..n] >>= (\y -> 
  [y..n] >>= (\z ->
  (guard $ x^2 + y^2 == z^2) >>
  return (x,y,z))))