

import Data.List (sort)  -- <- Import sort from Data.List

-- Simple functions
double :: Int -> Int
double x = x * 2

increment :: Int -> Int
increment x = x + 1

circleArea :: Float -> Float
circleArea r = pi * r ^ 2

-- Function composition example
getTopThreePlayers :: [Int] -> [Int]
getTopThreePlayers = take 3 . reverse . sort

-- Higher-order function: apply a function twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Lazy evaluation example: infinite list
infiniteNumbers :: [Int]
infiniteNumbers = [1..]  -- Haskell generates numbers on demand

main :: IO ()
main = do
    print $ double 5
    print $ increment 10
    print $ circleArea 3
    print $ getTopThreePlayers [20, 50, 10, 40, 30]
    print $ applyTwice increment 7
    print $ take 10 infiniteNumbers  -- take first 10 numbers from infinite list
