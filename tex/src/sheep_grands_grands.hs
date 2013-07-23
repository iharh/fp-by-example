motPatGrand :: Sheep -> Maybe Sheep
motPatGrand s = case (mother s) of
  Nothing -> Nothing
  Just m  -> case (father m) of
    Nothing -> Nothing
    Just gf -> father gf