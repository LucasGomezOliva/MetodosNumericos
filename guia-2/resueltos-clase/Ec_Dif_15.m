%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ecuaci�n diferencial del Ejercicio 15
%%% Resuelta por M�todo de Runge-Kutta O4
%%%
%%% TP#2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_15(t,y)

xt = 2;  % escal�n de tensi�n de Entrada
R=10;
Lo=10;
L=Lo*exp(-t);

yp=xt/L-(R-L)*y/L;
