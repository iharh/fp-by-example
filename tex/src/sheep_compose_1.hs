-- father, mother :: Sheep -> Maybe Sheep
type SheepFun = Sheep -> Maybe Sheep
s_comp :: SheepFun -> SheepFun -> SheepFun
s_comp fun1 fun2 = \s ->
  case (fun1 s) of
    Nothing -> Nothing
    Just m  -> fun2 m
