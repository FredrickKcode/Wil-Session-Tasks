
-- Demonstrates custom data types and type classes in Haskell

-- Define a custom data type for a geometric shape
data Shape = Circle Float       -- radius
           | Rectangle Float Float  -- width and height
           deriving (Show, Eq)

-- Example: Using Eq type class to compare shapes
isSameShape :: Shape -> Shape -> Bool
isSameShape s1 s2 = s1 == s2

-- Example: Using Ord type class to compare areas
area :: Shape -> Float
area (Circle r) = pi * r ^ 2
area (Rectangle w h) = w * h

compareShapes :: Shape -> Shape -> Ordering
compareShapes s1 s2 = compare (area s1) (area s2)

main :: IO ()
main = do
    let circle1 = Circle 5
    let circle2 = Circle 5
    let rect1 = Rectangle 4 6

    putStrLn $ "Circle1: " ++ show circle1
    putStrLn $ "Rectangle1: " ++ show rect1

    putStrLn $ "Are circle1 and circle2 the same? " ++ show (isSameShape circle1 circle2)
    putStrLn $ "Comparing circle1 and rectangle1 by area: " ++ show (compareShapes circle1 rect1)
