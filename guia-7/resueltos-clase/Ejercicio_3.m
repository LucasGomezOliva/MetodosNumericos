%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 3 TP#7
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,T,X]=Ejercicio_3(f_x,g_x)

a=1; % Abscisa final de cálculo
b=1; % Tiempo final de cálculo 
h=0.1; % Ax
k=0.05; %At
c=2; % Velocidad de la Onda
N=a/h+1; % Cantidad de filas de la matriz solución
M=b/k+1; % Cantidad de columnas de la matriz solución

[U,X,T] = Ec_Dif_Var_Parc_Hiperbolica(f_x,g_x,a,b,c,N,M);

H_1=figure(1);
set(H_1,'position',[100 300 500 350],...
     'NumberTitle','off','name','U(x,t)'); % Seteo del area de visualizacion
surf(T,X,U);
xlabel('t');
ylabel('x');
rotate3d;
title('U(x,t)');
figure(2);
H_2=figure(2);
set(H_2,'position',[600 100 500 350],'Menubar','none',...
     'NumberTitle','off','name','Evolución Temporal'); % Seteo del area de visualizacion
Max_x=max(X);
Min_x=min(X);
Max_U=max(max(U));
Min_U=min(min(U));
for i=1:M
    plot(X,U(:,i));
    grid;
    axis([Min_x Max_x Min_U Max_U]);
    title('Evolución temporal');
    ylabel('U(x)');
    xlabel('x');
    pause(0.01);
end

