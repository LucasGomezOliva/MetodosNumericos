%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% 
%%% Ejercicio 11c TP#5
%%%
%%% S(x)=Sk(x)=s3k*(x-xk)^3+s2k(x-xk)^2+s1k(x-xk)+sok
%%%
%%% Se trabaja con Spline c�bica natural S''(x0)=S''(xN)=0
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% M�todos Num�ricos
%%% Universidad Favaloro
%%% Facultad de Ingenier�a y Ciencias Exactas y Naturales
%%% PL 2021
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%%% puntos a interpolar %%%
X=[0;1;2;3;4;5;6];
Y=[0;4;8;9;9;8;6];

MC=Spline_Cubica(X,Y);
N=size(MC,1);
L=100; % Cantidad de puntos entre intervalos de X discretos
x=zeros(N,L+1); % Matriz de abscisas (101 puntos por cada intervalo)
for k=1:N
    d=(X(k+1)-X(k))/L; % Armado de abscisas temporales para los 
    x(k,:)=X(k):d:X(k+1); % Polinomios spline c�bicos
end    
F1=figure(1);
set(F1,'position',[140 20 900 650],'Menubar','none',...
        'NumberTitle','off','name', 'Ejercicio 11c. TP#5. M�todos Num�ricos');
plot(X,Y,'*r') % Nube de puntos originales
xlabel('x')
ylabel('y(x)')
hold on
grid

% Armado y graficado de los polinomios interpoladores con mejor resoluci�n
Poli_Int=zeros(N,length(x));
for k=1:N
    Poli_Int(k,:) = Eval_Polinomio2(x(k,:),MC(k,:),X(k));
    plot(x(k,:),Poli_Int(k,:))
    hold on
end
hold off