-- LambdaExample.hs
-- Demonstrates practical uses of lambda functions in Haskell

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5]

    -- Double each element using a lambda function
    let doubled = map (\x -> x * 2) numbers
    putStrLn $ "Doubled numbers: " ++ show doubled

    -- Filter even numbers using a lambda function
    let evens = filter (\x -> x `mod` 2 == 0) numbers
    putStrLn $ "Even numbers: " ++ show evens

    -- Sum all numbers using foldr with a lambda
    let total = foldr (\x acc -> x + acc) 0 numbers
    putStrLn $ "Sum of numbers: " ++ show total

    -- Apply a custom transformation
    let squaredPlusOne = map (\x -> x^2 + 1) numbers
    putStrLn $ "Squared plus one: " ++ show squaredPlusOne
