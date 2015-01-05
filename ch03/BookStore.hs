-- file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
                deriving (Show)
{-|
 - data is a keyword
 - BookInfo is a type constructor for this type definition
 - Book is the value constructor (data constructor), used to create a value of the BookInfo type
 -      It must start with a capital letter.
 - Int, String and [String] are components of the type (fields)
 - Int is an identifier, String the title, and [String] the names of the authors
 - deriving (Show) has something to do with how ghci prints values of this type
|-}

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)
-- different from BookInfo since type/value constructors have different names

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

data BookReview = BookReview BookInfo CustomerID String
-- this definition says that the type named BookReview has a value constructor
--      that is also named BookReview

type CustomerID = Int
type ReviewBody = String
data BetterReview = BetterReview BookInfo CustomerID ReviewBody
-- the type keyword indicates a type synonym
-- the new name is on the left of the =, with the existing name on the right
-- both names identify the same type, so type synonyms are purely for readability

-- below: using a type synonym to create a shorter name for a verbose type
type BookRecord = (BookInfo, BookReview)


-- one way we might represent billing information with an algebraic data type's value constructors:
type CardHolder = String
type CardNumber = String
type Address = [String]
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

-- show pattern matching with this example
bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors


-- show the wild card pattern (we don't care what is present in part of a pattern)
-- it becomes obvious which part of the pattern we're using in each function
nicerID      (Book id _      _      ) = id
nicerTitle   (Book _  title  _      ) = title
nicerAuthors (Book _  _      authors) = authors

-- however, this is mad boilerplate code, so let's not
-- instead, we define a data type, and accessors for each of its components, simultaneously.
--      note: positions of commas here is a matter of preference (can be at end of line)
-- for each field that we name in our type definition, Haskell creates an accessor function of
--      that name
data Customer = Customer {
        customerID      :: CustomerID
      , customerName    :: String
      , customerAddress :: Address
      } deriving (Show)

{-|
 - this is identical to:
 -      data Customer = Customer Int String [String]
 -                      deriving (Show)
 -      ....and all that stuff
|-} 

