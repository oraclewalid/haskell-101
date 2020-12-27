module C_Monad where
  
import Control.Monad.Reader
import Control.Monad.State


-- Monad addition

addM :: Monad m => m Int -> m Int -> m Int
addM mx my =  mx >>= (\x -> my >>= (\y -> return (y + x))) 

-- Monad addition with do notation

addM' :: Monad m => m Int -> m Int -> m Int
addM' mx my =  do
  x <- mx
  y <- my
  return (x + y)


-- do with list
people = ["Alice", "Bob", "Charly"]
items  = ["car" , "puuppy"]

missing = do 
  person <- people
  item  <- items
  return (person  ++ "lost a " ++ item) 
  

just2 = Just 2


-- Reader Monad

getFirst :: Reader String String
getFirst = do
  name <- ask
  return (name ++ " woke up")
  
getLast :: Reader String String
getLast = do
  name <- ask
  return (name ++ " wrote some Haskell")
  
getStory :: Reader String String
getStory = do
  first <- getFirst
  last  <- getLast
  return ("Fist " ++ first ++ ". and " ++ last)
  

  
 


