%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 3c TP#7
%%% Condición inicial U(x,0)=f(x)
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f = f_x_Ejercicio3c(x)

if ((x>=0) && (x<=1/2))
    f = 2*x;
else
    f = 2-2*x;
end
