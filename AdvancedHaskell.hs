import Data.Monoid

-- Using Sum Monoid to combine numbers
total :: [Int] -> Int
total xs = getSum $ mconcat $ map Sum xs

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5]
    putStrLn $ "Total sum using Monoid: " ++ show (total numbers)
