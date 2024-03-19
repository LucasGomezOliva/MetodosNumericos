%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio: 06 Prueba de funcion
%%%
%%% function X = ForwardSubstitution(A,B)
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%%% Matrices ejerccio 06-A

Aa=[2,0,0,0;-1,4,0,0;3,-2,-1,0;1,-2,6,3]

Ba=[6,5,4,2]'

%%% Matrices ejerccio 06-B

Ab=[5,0,0,0;
    1,3,0,0;
    3,4,2,0;
    -1,3,-6,-4]

Bb=[-10,4,2,5]'

disp('Solucion de ejercico 06-A')

Xa = ForwardSubstitution(Ab, Bb)
Xa_M= Aa\Ba

disp('Solucion de ejercico 06-B')


Xb = ForwardSubstitution(Aa, Ba)
Xb_M= Ab\Bb
