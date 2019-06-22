shoppingList :: [String]
shoppingList = 
  [
    "Carrots"
  , "Butter"
  , "Apples"
  , "Milk"
  , "Bananas"
  , "Cereal"
  ]

main :: IO()
main = putStrLn ("there are "
                ++ (show (length shoppingList))
                ++ " items on shopping list."
                ++ " and the list is : "
                ++ joinWithCommas shoppingList)

joinWithCommas :: [String] -> String
joinWithCommas [] = ""
joinWithCommas [x] = x
joinWithCommas (x:xs) = x ++ ", " ++ joinWithCommas xs
