module Euler1 where

sumTill :: Int -> Int -> Int
sumTill x y = y * (z * (z + 1) `div` 2)
    where z = div (x-1) y

-- This gives the fastest solution
euler1 :: Int
euler1 = sumTill 1000 3 + sumTill 1000 5 - sumTill 1000 15

eul :: Int -> Int -> [Int]
eul y z = filter (\x -> mod x y == 0 || mod x z == 0) [1 .. 999]

euler1' :: Int
euler1' = sum (eul 3 5)
