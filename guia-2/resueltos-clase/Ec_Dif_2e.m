%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% ecuaci�n diferencial del Ejercicio 2e 
%%% Resuelta por M�todo de Euler
%%%
%%% TP.2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% Per�odo Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_2e(t,y)

yp= 2*t*y.^2;