-- 'filter', applied to a predicate and a list,
-- returns the list of those elements that
-- satisfy the predicate, i.e.
-- > filter p xs = [ x | x <- xs, p x]
filter :: (a -> Bool) -> [a] -> [a]
filter _pred []    = []
filter pred  (x:xs)
  | pred x         = x : filter pred xs
  | otherwise      = filter pred xs