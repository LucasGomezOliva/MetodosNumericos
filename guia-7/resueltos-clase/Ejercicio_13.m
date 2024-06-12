%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 13 TP#7
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,X,Y]=Ejercicio_13()

a=1.5; % Abscisa final de cálculo
b=1.5; % Ordenada final de cálculo
h=0.05; % Ax
Max=50;
Tol=0.000001;

[U,X,Y] = Ec_Dif_Var_Parc_Eliptica('Ejercicio_13_f1','Ejercicio_13_f2','Ejercicio_13_f3','Ejercicio_13_f4',a,b,h,Tol,Max);

H_1=figure(1);
set(H_1,'position',[100 100 800 550],...
     'NumberTitle','off','name','Solución del Laplaciano U(x,t)'); % Seteo del area de visualizacion
surf(Y,X,U);
xlabel('y');
ylabel('x');
rotate3d;
title('U(x,y)');