matGrandf :: Sheep -> Maybe Sheep
matGrandf s = case (mother s) of
--              Nothing -> Nothing
                Just m  -> father m