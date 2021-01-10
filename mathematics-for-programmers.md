# Mathematics for Programmers

How many unique words in the string "this is cat this is a bat this is a rat"

```hs
str = "this is a cat this is a bat this is a rat"
words str
Data.List.nub it

countUniq = length . Data.List.nub . words
countUniq str
```

`it` คือผลของการ evaluate ล่าสุดของ REPL


Write a simple palindrome checker `isPalindrome :: [a] -> Bool`

```hs
p = "tenet"
np = "ten"
reverse p == p
reverse np == np

isPalindrome w = w == reverse w
isPalindrome p
isPalindrome np
```


Write a function that generates sequence with three parameters, start, end, and step `mkSequence :: Int -> Int -> Int -> [Int]`


Write a function that generates a palindrome from a list, `mkPalindrome :: [a] -> [a]` and check with is Palindrome


Write a program that does a very simple 'compression' by replacing repeating elements with number of repetition. Ex. AAAACCCBBA => A4C3B2A1

```hs
s1 = "AAA"
head s1
head s1 : show (length s1)

compressOne s = head s : show (length s)
compress = concat . map compressOne . Data.List.group
compress str
```

### List Comprehension

```hs
[x | x <- [1..5]]
[(a, b) | a <- [1..5], b <- ['A'..'C']]
isPrime x = [1, x] == [y | y <- [1..x], x `mod` y == 0]

-- Infinite Fibonacci
fibs = 0 : 1 : [a + b | (a, b) <- zip fibs (tail fibs)]
take 10 fibs
```
