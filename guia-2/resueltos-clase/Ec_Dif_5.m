%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ecuaci�n diferencial del Ejercicio 5 
%%% Resuelta por M�todo de Euler
%%%
%%% TP.2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% Per�odo Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function yp = Ec_Dif_5(t,y)

yp = 32-0.032*y^(3/2);