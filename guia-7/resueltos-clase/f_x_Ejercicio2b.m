%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resoluci�n ejercicio N 2 TP#7
%%% Condici�n inicial de posici�n U(x,0)=f(x)
%%% M�todos Num�ricos
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
