%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 12 TP#7
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,X,Y]=Ejercicio_12()

a=4; % Abscisa final de cálculo
b=4; % Ordenada final de cálculo
h=0.5; % Ax
Max=50;
Tol=0.000001;

[U,X,Y] = Ec_Dif_Var_Parc_Eliptica('Ejercicio_12_f1','Ejercicio_12_f2','Ejercicio_12_f3','Ejercicio_12_f4',a,b,h,Tol,Max);

H_1=figure(1);
set(H_1,'position',[100 100 800 550],...
     'NumberTitle','off','name','Solución del Laplaciano U(x,t)'); % Seteo del area de visualizacion
surf(Y,X,U);
xlabel('y');
ylabel('x');
rotate3d;
title('U(x,y)');