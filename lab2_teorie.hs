-- List coprehensions
-- [x | x <- [0, 2 ..], x `mod` 3 == 0]

{-
iterate primește o funcție f și o valoare inițială x și generează o listă infinită din aplicarea repetată a lui f. Implementarea listei numerelor naturale va arăta deci astfel:

naturals = iterate (\x -> x + 1) 0  -- SAU
naturals = iterate (+ 1) 0
-}

{-
    -- repeat: repetă o valoare la infinit
    -- intersperse: introduce o valoare între elementele unei liste

    ones = repeat 1 -- [1, 1, 1, ..] 
onesTwos = intersperse 2 ones -- [1, 2, 1, 2, ..] 
fibs = 0 : 1 : zipWith (+) fibs (tail fibs) -- sirul lui Fibonacci 
powsOfTwo = iterate (* 2) 1 -- puterile lui 2
palindromes = filter isPalindrome [0..] -- palindroame
    where  
    isPalindrome x = show x == reverse (show x) -- truc: reprezint numarul ca String
-}


{-
Point-free
. si $

f $ x y = f (x y)

f . g . h x = f(g(h(x)))

sum xs = foldl (+) 0 xs 
este echivalent cu
sum = foldl (+) 0

map $ (+ 1) . (* 2) map de functia de dupa $


> f . g $ 2
5
> f . g 2
-- eroare, echivalent cu f . (g 2), f . g (2)


flip f x y = f y x


myIntersperse :: a -> [a] -> [a]
myIntersperse y = foldr (++) [] . map (: [y])
-}
