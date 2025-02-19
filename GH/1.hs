module Main where

double :: Int -> Int
double x = x * 2

main :: IO ()
main = do
    putStrLn "Введите число:"
    input <- getLine
    let num = read input :: Int
    print (double num)
