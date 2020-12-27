module B_ADT where
  
secondShow:: Show a => [a] -> [Char]
secondShow x = show x


newtype CustomerId = MakeCustomerId Int deriving Show
newCustumerId = MakeCustomerId 10

data Customer = MakeCustomer {
      customerId :: CustomerId
    , name       :: String
    , magicNumber:: Int
} 
customer = MakeCustomer newCustumerId "Bob" 42 
secondCustomer = customer{ name = "Alice"}


instance Show Customer where
  show(MakeCustomer id name magicNumber) = show id ++ " " ++ name ++ " " ++ show magicNumber