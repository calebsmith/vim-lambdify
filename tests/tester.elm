stringList = [ "Hi!"
  , "Look at my \"quotes\""
  , "aren't they nice :)"
  , "\str -> String.toUpper str"
  ]

test =
  List.map (\str -> String.toUpper str) stringList
