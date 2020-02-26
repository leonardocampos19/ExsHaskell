module Aula1 where

-- LISTA: É UMA ESTRUTURA QUE
-- CARREGA VALORES DE MESMO TIPO.
-- UMA PODE SER INFINITA, NULA OU FINITA
-- E POSSUIR UM TAMANHO VARIAVEL
-- [1, 2, 3, .., N]

-- TUPLA: ESTRUTURA QUE CARREGA VALORES
-- DE DIFERENTES TIPOS. POSSUEM
-- 
-- (coordenada1, coordenada2)
-- Somente duas funcoes se aplicam fst (first) e snd (second)

-- :t x = Retorna o tipo de x
-- :t 1 = Int
-- :t (true, false) = (Bool, Bool)

--Soma usando tupla
soma :: (Int, Int, Int) -> Int
soma (x,y,z) = x+y+z


-- Haskell infere o tipo
-- nome_da_funcao :: tipo_parametro -> tipo_retorno
dobro :: Int -> Int
dobro x = 2*x

somar :: Int -> Int -> Int -> Int
somar x y z = x+y+z

-- String e [Char] dá no mesmo
reverterDoisUlt :: [Char] -> [Char]
reverterDoisUlt pal = take 2 (reverse pal)

-- tipo_funcao -> tipo retorno
u :: Int
u = 7

-- Função recursiva, não termina, pois x = x + 1 = (x + 1) + 1 = ...
--x :: Int
--x = x + 1

-- LIST COMPREHENSIONS: GERA LISTAS
-- A PARTIR DE EXPRESSÕES
-- [EXPRESSAO | ITERACOES, FILTRO 1, FILTRO 2]
-- [x | x <- [1 .. 10], x > 2, x < 8]

l1 :: [Int]
l1 = [x | x <- [1 .. 10], x > 2, x < 8]

-- Tabuada
tabuada :: Int -> [Int]
tabuada n = [n * x | x <- [ 1 .. 10]]