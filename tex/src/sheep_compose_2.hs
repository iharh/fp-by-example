-- father, mother :: Sheep -> Maybe Sheep
matGrandf :: Sheep -> Maybe Sheep
matGrandf = mother 's_comp' father
matGrandm :: Sheep -> Maybe Sheep
matGrandm = mother 's_comp' mother
patGrandm :: Sheep -> Maybe Sheep
patGrandm = father 's_comp' mother
motPatGrand :: Sheep -> Maybe Sheep
motPatGrand = mother 's_comp' father 's_comp' father
