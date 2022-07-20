/*
Arthur decidiu fazer uma viagem, para segurança de sua casa ele colocou um detector de movimento e pediu que os seus dois vizinhos, João e Maria, ficassem atentos a qualquer atividade suspeita. 

Faça um programa que receba os sinais de cada um dos vizinhos e do detector, sendo o sinal 1 quando algo errado aconteceu e o sinal 0 caso esteja tudo normal, e retorne uma string informando qual é a situação.

Arthur fez o seguinte guia de interpretação de situações:

João | Maria | Detector | Mensagem

   1    |     1    |      1       |  Terremoto

   1    |     1    |      0       |  Incendio

   0    |     1    |      1       |  Assalto

   0    |     0    |      0       |  Tudo Certo

Para qualquer caso não listado acima, o sistema deverá retornar a mensagem “Alarme Falso”.
*/


alarme(1,1,1,'Terremoto').
alarme(1,1,0,'Incendio').
alarme(0,1,1,'Assalto').
alarme(0,0,0,'Tudo Certo').
alarme(_,_,_,'Alarme Falso').

main():-
    read(A),
    read(B),
    read(C),
    alarme(A,B,C,OUT),
    write(OUT), halt.