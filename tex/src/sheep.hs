data Sheep = Sheep {
  name   :: String
, mother :: Maybe Sheep
, father :: Maybe Sheep
  ..
}
-- this will auto-generate functions:
name :: Sheep -> String
name = ...
father :: Sheep -> Maybe Sheep
father = ...
mother :: Sheep -> Maybe Sheep
mother = ...