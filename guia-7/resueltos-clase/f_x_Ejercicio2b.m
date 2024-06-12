%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 2 TP#7
%%% Condición inicial de posición U(x,0)=f(x)
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = f_x_Ejercicio2b(x)

if ((x>=0) && (x<=3/5))
    f = x;
else
    f=1.5-1.5*x;
end
