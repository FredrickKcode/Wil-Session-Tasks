module Main where

-- Using let...in
areaLet :: Float -> Float
areaLet radius =
    let piVal = 3.14
    in piVal * radius * radius

-- Using where
areaWhere :: Float -> Float
areaWhere radius =
    piVal * radius * radius
  where
    piVal = 3.14

main :: IO ()
main = do
    putStrLn "Area using let...in:"
    print (areaLet 5)

    putStrLn "Area using where:"
    print (areaWhere 5)
