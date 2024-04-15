%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuaci�n diferencial del Ejercicio 14 
%%% Resuelta por M�todo de Runge-Kutta O4 Sistemas
%%%
%%% TP#2 M�todos Num�ricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_14(t,X)

A = 2;
B = 0.02;
C = 0.0002;
D = 0.8;
X = X';

Matriz = [A -B*X(1);C*X(2) -D];
Xp = Matriz*X;
Xp = Xp';