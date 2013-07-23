-- father, mother :: Sheep -> Maybe Sheep
matGrandf :: Sheep -> Maybe Sheep
matGrandf s = case (mother s) of
                Nothing -> Nothing
                Just m  -> father m
matGrandm :: Sheep -> Maybe Sheep
matGrandm s = case (mother s) of
                Nothing -> Nothing
                Just m  -> mother m
patGrandm :: Sheep -> Maybe Sheep
patGrandm s = case (father s) of
                Nothing -> Nothing
                Just m  -> mother m