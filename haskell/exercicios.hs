module Exercicios where
--2.1
-- a) [1,11,121,1331,14641,161051,1771561]	
ex2p1a :: [Int]
ex2p1a = [11^x | x <- [0..6]]

-- b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
ex2p1b :: [Int]
ex2p1b = [x | x <- [1..40], (mod x 4) /= 0]

-- c) ["AaBB","AbBB","AcBB","AdBB","AeBB","AfBB","AgBB"]
ex2p1c :: [[Char]]
ex2p1c = ["A"++[x]++"BB" | x <- ['a'..'g']]

-- d) [5,8,11,17,20,26,29,32,38,41]
-- 14, 23, 35
ex2p1d :: [Int]
ex2p1d = [x | x <- [5,8..41], x /= 14 && x /= 23 && x /= 35]

-- e)  [1.0,0.5,0.25,0.125,0.0625,0.03125]
ex2p1e :: [Float]
ex2p1e = [(1/x) | x <- [1..42], (2 ^ round x) `mod` (round x) == 0]

-- f) [1,10,19,28,37,46,55,64]	
ex2p1f :: [Int]
ex2p1f = [x | x <- [1,10..64]]

-- g) [2,4,8,10,12,16,18,22,24,28,30]	


-- 2.2
ex2p2 :: [Char] -> Bool
ex2p2 texto = even(length texto)

-- 2.3
ex3p2 :: [String] -> [String]
ex3p2 lista = reverse lista

-- 2.4
ex2p4 :: [String] -> [Int]
ex2p4 xs = [length x | x <- xs, (length x) `mod` 4 /=0 ]

-- 2.5
ex2p5 :: [Char] -> Char
ex2p5 x = last (reverse x)

-- 2.6
ex2p6 :: [Char] -> Bool
ex2p6 x = (reverse(x) == x)