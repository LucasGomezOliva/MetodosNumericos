%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuaci�n diferencial del Ejercicio 16d 
%%% Resuelta por M�todo de Runge-Kutta O4 Sistemas
%%%
%%% TP.2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xp = Ec_Dif_16d(t,X)

X = X';

A = [0 1;2/t (2*t-1)/t];

Xp = A*X;
Xp = Xp';