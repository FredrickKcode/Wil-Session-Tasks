-- SumList.hs
-- Demonstrates recursion in Haskell

-- Recursive function to sum a list
sumList :: [Int] -> Int
sumList [] = 0               -- Base case: empty list sums to 0
sumList (x:xs) = x + sumList xs  -- Recursive case: sum head + sum of tail

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5]
    putStrLn $ "Sum of the list: " ++ show (sumList numbers)
