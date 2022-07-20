/*
Escreva um programa que recebe na entrada um valor inteiro N seguido de varios outros inteiros até receber como entrada a palavra fim. 
Na saida deve ser retornado a soma de todos valores menores que N. 
*/


somatorio(N, X, S, S2):-
    (
        X < N -> S2 is X + S;
        S2 is S
    ).


entrada(N, S, Out):-
    read(X),
    (
        dif(X, 'fim') ->
        somatorio(N, X, S, S2),
        entrada(N, S2, Out);
        Out is S
    ).
    

main():-
    read(N),
    entrada(N, 0, Out),
    write(Out), halt.