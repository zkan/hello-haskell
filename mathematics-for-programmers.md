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


Write a simple palindrome checker
isPalindrome :: [a] -> Bool

```hs
p = "tenet"
np = "ten"
reverse p == p
reverse np == np

isPalindrome w = w == reverse w
isPalindrome p
isPalindrome np
```


Write a function that generates sequence with three parameters, start, end, and step
mkSequence :: Int -> Int -> Int -> [Int]


Write a function that generates a palindrome from a list, mkPalindrom :: [a] -> [a] and check with is Palindrome
