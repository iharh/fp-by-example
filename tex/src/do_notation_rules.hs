do { x }
  = x
do { x ; <stmts> }
  = x >> do { <stmts> }
do { v <- x ; <stmts> }
  = x >>= \v -> do { <stmts> }