import Data.List

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

showList' :: [String] -> String
showList' list = "there are "
                 ++ (show . length) list
                 ++ " items on shopping list."
                 ++ " and the list is : "
                 ++ joinWithCommas' list

addItemToList :: String -> [String] -> [String]
addItemToList item list = item : list

deleteItemFromList :: String -> [String] -> [String]
deleteItemFromList item = filter (/= item)

main :: IO()
main = do 
   putStrLn $ showList' shoppingList
   putStrLn "type 'add' to a new item"
   putStrLn "type 'delete' to delete an item"
   putStrLn "type 'exit' to exit"
   command <- getLine
   case command of
     "add" -> do
        putStrLn "what is it?"
        item <- getLine
        putStrLn $ showList' $ addItemToList item shoppingList
     "delete" -> do
        putStrLn "what do you want to delete?"
        item <- getLine
        putStrLn $ showList' $ deleteItemFromList item shoppingList
     "exit" ->
        putStrLn "bye"
     _ -> 
       putStrLn "what the heck are typing?"

-- joinWithCommas :: [String] -> String
-- joinWithCommas [] = ""
-- joinWithCommas [x] = x
-- joinWithCommas (x:xs) = x ++ ", " ++ joinWithCommas xs

joinWithCommas' :: [String] -> String
joinWithCommas' = intercalate ", "
