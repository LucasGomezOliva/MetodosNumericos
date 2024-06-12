%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Resolución ejercicio N 5ab TP#7
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [U,T,X]=Ejercicio_5ab(f_x)

a=1; % Abscisa final de cálculo
b=0.1; % Tiempo final de cálculo
c1=0;
c2=0;
h=0.1; % Ax
k=0.01; %At
c=1/sqrt(2); % Conastante del Calor
N=a/h+1; % Cantidad de filas de la matriz solución
M=b/k+1; % Cantidad de columnas de la matriz solución

[U,X,T] = Ec_Dif_Var_Parc_Parabolica(f_x,c1,c2,a,b,c,N,M);

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

