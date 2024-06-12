%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 5b TP#7
%%% Condición de contorno U(x,0)=f(x)
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = f_x_Ejercicio5b(x)

f = 3-abs(3*x-1)-abs(3*x-2);