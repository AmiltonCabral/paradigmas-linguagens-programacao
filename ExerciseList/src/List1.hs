module ExerciseList.List1 where

-- LISTA DE EXERCÍCIOS 1
-- http://www.facom.ufu.br/~madriana/PF/Exercicios1.pdf


-- 1) Forneça uma temperatura em graus Fahrenheit
--    a partir de uma temperatura em graus Celsius.
ceToFa :: Fractional a => a -> a
ceToFa c = c * 1.8 + 32


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
-- Ambos os casos funcionam da mesma forma.


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
maior ls = "to do..."