inc :: Int -> Int     -- type signature
inc x = x + 1         -- function equation

exclaim :: String -> String
exclaim sentence = sentence ++ "!"

average :: Float -> Float -> Float
average a b = (a + b) / 2



double [] = []
double (x:xs) = x:xs

removeOdd [] = []
removeOdd (x:xs) 
  | mod x 2 == 0 = x:(removeOdd xs)
  | otherwise = removeOdd xs
  

secondDouble n = case n of
  [] -> []
  (x:xs) -> 2*x:(secondDouble xs)
  

hightFold = foldr (+) 0

hightZip = zipWith (\ x y -> x + y)

stringLenght = length . show


foldDouble x = hightFold $ secondDouble $ x