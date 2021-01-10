manutd_legend :: Int -> String
manutd_legend 7 = "Eric Cantona"
manutd_legend 10 = "Wayne Rooney"
manutd_legend 11 = "Ryan Giggs"
manutd_legend _ = "No Legend"

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

add2Tuples2 :: (Int, Int) -> (Int, Int) -> (Int, Int)
add2Tuples2 a b = (fst a + fst b, snd a + snd b)

countElem :: [a] -> String
countElem [] = "empty"
countElem (_:[]) = "one"
countElem (_:_:[]) = "two"
countElem _ = "many"

-- guard
grade :: Int -> Char
grade score
  | score > 90 = 'A'
  | score > 80 = 'B'
  | score > 70 = 'C'
  | otherwise = 'F'

-- where
initials :: (String, String) -> String
initials name = [first] ++ "." ++ [last]
  where first = head (fst name)
        last = head (snd name)

-- quicksort
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort less ++ [x] ++ quicksort more
  where less = [y | y <- xs, y < x]
        more = [y | y <- xs, y >= x]

-- sum
sum' :: [Int] -> Int
-- sum' [] = 0
sum' [x] = x
-- sum' xs = head xs + (sum' . tail) xs
sum' (x:xs) = x + sum' xs
