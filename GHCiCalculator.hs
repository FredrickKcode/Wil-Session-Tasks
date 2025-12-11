

-- Basic arithmetic functions
add :: Int -> Int -> Int
add x y = x + y

subtract' :: Int -> Int -> Int
subtract' x y = x - y

multiply :: Int -> Int -> Int
multiply x y = x * y

divide :: Int -> Int -> Double
divide x y = fromIntegral x / fromIntegral y

-- Function to calculate the square of a number
square :: Int -> Int
square x = x * x

-- Function to calculate the factorial of a number (recursive)
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "GHCi Calculator Example"
    print $ add 5 3
    print $ subtract' 10 4
    print $ multiply 6 7
    print $ divide 10 4
    print $ square 8
    print $ factorial 5
