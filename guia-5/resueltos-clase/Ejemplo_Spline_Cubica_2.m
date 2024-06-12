%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejemplo2 Splines C�bicas
%%% 
%%% Ejemplo para ver el uso de la funci�n de interpolaci�n
%%% Spline C�bica
%%%
%%% S(x)=Sk(x)=s3k*(x-xk)^3+s2k(x-xk)^2+s1k(x-xk)+sok
%%%
%%% Se trabaja con Spline c�bica natural S''(x0)=S''(xN)=0
%%%
%%% Se interpola un conjunto de datos de per�odo card�acos,
%%% Comunmente llamado "Tacograma"
%%%
%%% Dr. Ing. Franco Martin Pessana
%%% M�todos Num�ricos
%%% Universidad Favaloro
%%% Facultad de Ingenier�a y Ciencias Exactas y Naturales
%%% PL 2020
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc
%%% Tacograma %%%
PC=[.92 .85 .8 .87 .84 .88 .8 .75 .81 .88 .95 .76 .81 ...
    .83 .85 .81 .86 .82 .79 .81 .85];
N=length(PC)-1;
%%% Armado de eje temporal del Tacograma %%%
T=[0 cumsum(PC(2:N+1))];
%%% Llamado al armado de los polinomios interpoladores de 3er grado
MC=Spline_Cubica(T,PC);
%%% Frecuencia de Mustreo %%%
fs=500;
At=1/fs; % Per�odo de muetreo
t=T(1):At:T(N+1)-At;   % Eje temporal para la interpolaci�n
Poli_Int=zeros(size(t)); % Inicializaci�n de valores del polinomio
M=length(t);
k=1;
Ind=1;
%%% Armado del polinomio interpolador para el conjunto de puntos 
%%% y la frecuencia de muestreo selecionada
while k<=M
    if t(k)<T(Ind+1)
        Poli_Int(k)=Eval_Polinomio_single(t(k),MC(Ind,:),T(Ind));
        k=k+1;
    else
        Ind=Ind+1;
    end
    if Ind>N
        k=M+1;
    end    
end
F1=figure(1);
set(F1,'position',[100 20 1400 800],'Menubar','none',...
        'NumberTitle','off','name',...
        'Interpolaci�n por Splines C�bicos de Per�odos Card�acos');
plot(T,PC,'*r') % Nube de puntos originales
axis([0 18 .7 1]);
hold on
xlabel('t (S)')
ylabel('PC (S)')
title('Per�odo card�aco Card�aco instant�neo')
grid
pause;
disp('Presione una tecla para continuar...')
plot(t,Poli_Int,'b') % Spline C�bica
hold off
