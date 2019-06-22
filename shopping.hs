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
showList' list = ("there are "
                  ++ (show $ length list)
                  ++ " items on shopping list."
                  ++ " and the list is : "
                  ++ joinWithCommas' list)

add :: String -> [String]
add item = item : shoppingList

main :: IO()
main = do 
   putStrLn $ showList' shoppingList
   putStrLn "type 'add' to a new item"
   putStrLn "type 'exit' to exit"
   command <- getLine
   case command of
     "add" -> do
        putStrLn "what is it?"
        item <- getLine
        let added = add item
        putStrLn "your list is now"
        putStrLn $ showList' added
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
