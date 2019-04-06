module Euler2 where

fib :: Int -> Int
fib = l 1 1  
    where l a b c = if c<2 then a else l(a+b) a (c-1)

euler2 :: Int
euler2 = sum(filter (\x -> x < 4000000 && even x) (map fib [1..39]))
