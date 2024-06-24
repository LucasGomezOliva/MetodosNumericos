%% corregir

function [ T, y_sol ] = Algoritmo_Ejercicio_02( f, t0, tf, y0, M )
h = (tf-t0)/M;
y_sol=zeros(1, M+1);
y_sol(1) = y0;
T = t0:h:tf;
for k = 1:1:M-2
 test = feval(f,T(k + 1), y_sol(k + 1));
 y_sol(k+2) = 2*h*feval(f,T(k), y_sol(k)) + 3*y_sol(k) - 4*test;
end

