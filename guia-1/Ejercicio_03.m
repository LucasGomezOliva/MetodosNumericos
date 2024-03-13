%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio: 03 Prueba de funcion
%%%
%%% function X = BackSubstitution(A,B)
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%%% Matrices ejerccio 03-A

Aa = [3 -2 1 -1;0 4 -1 2;0 0 2 3;0 0 0 5];
Ba = [8 -3 11 15]';

%%% Matrices ejerccio 03-B

Ab = [5 -3 -7 1;0 11 9 5;0 0 3 -13;0 0 0 7];
Bb = [-14 22 -11 14]';

%%% Matrices ejerccio 03-C

Ac = [4 -1 2 2 -1;0 -2 6 2 7;0 0 1 -1 -1;0 0 0 -2 -1;0 0 0 0 3];
Bc = [4 0 3 10 6]';

disp('Solucion de ejercico 03-A')

Xa = BackSubstitution(Aa,Ba)

disp('Solucion de ejercico 03-B')

Xb = BackSubstitution(Ab,Bb)

disp('Solucion de ejercico 03-C')

Xc = BackSubstitution(Ac,Bc)