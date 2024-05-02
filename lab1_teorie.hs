-- stack exec ghci lab6.hs (rulare)
-- :r reload

{- 
    1 castul trebuie facut explicit (tipare statica)
     *in racket e dinamica
    2 evaluare lenesa = functiile nu sunt evaluate
                        pana cand valoarea lor este necesara
     *in racket e aplicativa
-}

-- square x = x * x

-- Functie anonima:
-- \x y -> x + y
-- parametrii(x, y), corpul functiei(->), ce returneaza(x + y)


-- f = \x y -> x + y
-- sau f x y = x + y
-- apelul f 2 3

-- ???????????????????????
-- (2 +) == \x -> 2 + x
-- (+ 2) == \x -> x + 2
-- (- 2) == -2
-- (2 -) == \x -> 2 - x

-- 2 + 3 == (+) 2 3 
-- elem 2 [1,2,3] == 2 `elem` [1, 2, 3]

-- :t 'a' intoarce 'a' :: Char
-- :t (42::Int) intoarce (42::Int) :: Int

-- Int e finit, Integer e infinit

-- 1:2:3:4:[] lista
-- [1, 2, 3, 4] lista
-- [1, 2 .. 4] lista

-- head ia primul element
-- tail ia toate mai putin primul

-- concatenare a 2 liste prin ++
-- [1, 2, 3] ++ [4, 5]


{-Perechi
    În Haskell, elementele unei liste sunt de același tip. Dacă dorim construcții cu elemente de tipuri diferite vom folosi tuplurile

    (3, "Ana") :: (Int, String)
    Haskell oferă funcții pentru extragerea componentelor din perechi

    fst (3, "Ana") - extrage primul
    snd (3, "Ana") - extrage al doilea
    Se ofera de asemenea și funcțiile zip și unzip, doar pentru perechi.
    (3, True, "Ana") :: (Int, Bool, String)
    zip3 și unzip3 pentru triplete.
    zip3 [3] [True] ["Ana"] face triplet


    Pentru tuplurile cu mai mult de 2 elemente este sarcina programatorului să definească funcțiile folosite.
-}

-- if-ul clasic
factorial_if x = if x < 1 
    then 1
    else x * factorial_if (x - 1)

-- similar cu cond
factorial_guards x 
    | x < 1 = 1
    | otherwise = x * factorial_guards (x - 1)
                
-- cu caseuri
factorial_case x = case x < 1 of
    True -> 1
    _ -> x * factorial_case (x - 1)

-- pattern matching
factorial_pm 0 = 1
factorial_pm x = x * factorial_pm (x - 1)

-- primul element si restul listei
-- (_:xs)

-- f x y = x + y
-- :t f iti da Num a => a -> a -> a
-- Num a constrangere pentru faptul ca a trebuie sa fie numeric
-- a -> a -> a este semnatura functiei f
-- primeste doi parametrii numerici(de acelasi tip) 
-- si intoarce o valoare numerica(de acelasi tip)

-- toate functiile din haskell sunt in forma curry

{-
    Functii uzuale
    map aplica o functie pe valorile unei liste
        intoarce tot o lista
    filter primeste o functie f
        intoarce o lista cu elementele care respecta f
    foldl intoarce o lista (incepe cu elementele din stanga si adauga la stanga)
        pe baza functiei primite
    foldr intoarce o lista (incepe cu elementele din dreapta si adauga la dreapta)
        pe baza functiei primite
    zip intoarce lista de tupluri
    zipwith aplica f pe 2 liste
-}

{-
    LET
    let id1 = val1
    id2 = val2
    ...
    idn = valn
in expr

    WHERE
    def = expr
    where  
    id1 = val1  
    id2 = val2  
    ...
    idn = valn
-}