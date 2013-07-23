data Ordering = LT | EQ | GT

-- Minimal complete definition: either 'compare' or '<='.
-- Using 'compare' can be more efficient for complex types.
--
class  (Eq a) => Ord a  where
    compare              :: a -> a -> Ordering
    (<), (<=), (>), (>=) :: a -> a -> Bool
    max, min             :: a -> a -> a

    compare x y = if x == y then EQ
                  else if x <= y then LT
                  else GT
