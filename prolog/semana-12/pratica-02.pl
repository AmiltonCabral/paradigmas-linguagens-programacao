/*
Escreva um programa que recebe na entrada um valor inteiro N seguido de varios outros inteiros até receber como entrada a palavra fim. 
Na saida deve ser retornado a soma de todos valores menores que N. 
*/


somatorio(N, X, Sum, SumOut):-
    (
        X < N -> SumOut is X + Sum;
        SumOut is Sum
    ).


entrada(N, Sum, Out):-
    read(X),
    (
        dif(X, 'fim') ->
        somatorio(N, X, Sum, SumOut),
        entrada(N, SumOut, Out);
        Out is Sum
    ).
    

main():-
    read(N),
    entrada(N, 0, Out),
    write(Out), halt.