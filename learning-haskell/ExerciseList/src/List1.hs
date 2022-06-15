module ExerciseList.List1 where

-- LISTA DE EXERCÍCIOS 1
-- http://www.facom.ufu.br/~madriana/PF/Exercicios1.pdf


-- 1) Forneça uma temperatura em graus Fahrenheit
--    a partir de uma temperatura em graus Celsius.
-- Celsius to Fahrenheit
ceToFa :: Fractional a => a -> a
ceToFa c = c * 1.8 + 32
-- Fahrenheit to Celsius
faToCe :: Fractional a => a -> a
faToCe f = (f-32) / 1.8


-- 2) Uma empresa decidiu dar a seus funcionários um abono de salario, baseando-se nos
--    pontos obtidos durante o mês, de acordo com a tabela:
abono :: (Ord a, Num a) => a -> [Char]
abono premio
    | premio <   1 = ""
    | premio <= 10 = "Premio de R$ 100,00"
    | premio <= 20 = "Premio de R$ 200,00"
    | premio <= 30 = "Premio de R$ 300,00"
    | premio <= 40 = "Premio de R$ 400,00"
    | otherwise = "Premio de R$ 500"


-- 3) Considere que o preço de uma passagem de avião em um trecho pode variar
--    da idade do passageiro. Pessoas com 60 anos ou mais pagam apenas
--    60% do preço total. Crianças até 10 anos pagam 50% e bebês (abaixo de 2 anos)
--    pagam apenas 10%. Faça uma função que tenha como entrada o valor total da
--    passagem e a idade do passageiro e produz o valor a ser pago
ticketPrice :: (Ord a1, Fractional a2, Num a1) => a2 -> a1 -> a2
ticketPrice valorTotal idade
    | idade <   2 = valor 10 valorTotal
    | idade <= 10 = valor 50 valorTotal
    | idade >= 60 = valor 60 valorTotal
    | otherwise = valorTotal
    where valor porcentagem valorTotal = porcentagem / 100 * valorTotal


-- 4) Faça uma função que recebe um numero e retorna verdadeiro se o numero for par.
ehPar :: Integral a => a -> Bool
ehPar num = num `mod` 2 == 0


-- 5) Faça uma função que recebe dois valores e retorna o menor.
menor :: Ord p => p -> p -> p
menor n1 n2 = if n1 < n2 then n1 else n2


-- 6) Faça uma função que recebe três valores e retorna o menor.
menorDeTres :: Ord p => p -> p -> p -> p
menorDeTres n1 n2 = menor (menor n1 n2)

-- Caso não tivesse uma função para retornar o menor de dois poderiamos fazer assim:
menorDeTres' :: Ord p => p -> p -> p -> p
menorDeTres' n1 n2 = menor'' (menor'' n1 n2)
    where menor'' n1 n2 = if n1 < n2 then n1 else n2


-- 7) Escreva uma função recursiva para calcular o fatorial de um numero natural.
fatorial :: (Eq p, Num p) => p -> p
fatorial 0 = 1
fatorial num = fatorial (num - 1) * num


-- 8) Especifique as seguintes funções para a manipulação de listas:

-- 8.A)  Recebe uma lista qualquer e retorna o número de elementos na lista.
nroElementos :: Num a => [t] -> a
nroElementos ls = sum [1 | _ <- ls]

-- A mesma funcao usando pattern mathing
nroElementos' :: Num p => [a] -> p
nroElementos' [] = 0
nroElementos' (_:ls) = nroElementos' ls + 1


-- 8.B) Recebe uma lista de números e retorna o maior
maior :: Ord a => [a] -> a
maior [] = error "Lista vazia"
maior [num] = num
maior (num:ls) = if num > maior ls then num else maior ls


-- 8.C) Recebe um elemento e uma lista qualquer e retorna o número
--      de ocorrências do elemento na lista
contaOcorrencias :: (Num p, Eq t) => t -> [t] -> p
contaOcorrencias el [] = 0
contaOcorrencias el (el2:ls) = if el == el2 then 1 + contaOcorrencias el ls else contaOcorrencias el ls


-- 8.D) Recebe um elemento e uma lista e verifica se existe uma
--      única ocorrência do elemento na lista.
unicaOcorrencia' :: Eq t => t -> [t] -> Bool
unicaOcorrencia' el ls = contaOcorrencias el ls == 1


-- 8.E) Recebe um número e uma lista de números e retorna uma lista com
--      os números que são maiores do que o valor informado.
maioresQue :: Ord a => a -> [a] -> [a]
maioresQue num ls = [x | x <- ls, x > num]


-- 8.F) Recebe duas listas quaisquer e retorna uma terceira lista com os
--      elementos da primeira no início e os elementos da segunda no fim.
concatena :: [a] -> [a] -> [a]
concatena ls1 ls2 = ls1 ++ ls2

-- A mesma função utilizando recursao
concatena' :: [a] -> [a] -> [a]
concatena' [] ls = ls
concatena' ls1 ls2 = concatena (init ls1) (last ls1:ls2)


-- 8.G) Recebe uma lista e retorna uma nova lista contendo a duplicação dos
--      elementos da lista original.
duplica :: [a] -> [a]
duplica [] = error "Lista vazia"
duplica [el] = [el, el]
duplica ls = head ls : head ls : duplica (tail ls)

-- Uma forma melhor utilizando pattern matching, não da erro com lista vazia.
duplica' :: [a] -> [a]
duplica' [] = []
duplica' (el:ls) = el : el : duplica' ls