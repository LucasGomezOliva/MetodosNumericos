    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 3 TP#3 M�todos Num�ricos
%%%
%%% Ajuste lineal de una funci�n cosenoidal alineal
%%%
%%% Aproximaci�n Lineal por M�nimos Cuadrados:
%%%
%%%         y = Ax + B
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ejercicio 3abc TP#3 MN FICEN. UF

clear
clc

N = 50; % Cantidad de puntos de an�lisis
k = 1:N; % Variable discreta natural
X = 0.1*k; % abscisas xk
Y = X + cos(k.^0.5); % ordenadas yk

[A,B,CC] = Ajuste_Lineal_MC(X',Y');
disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlaci�n del ajuste lineal:')
CC
Y_AL=A*X+B; % Recta de Ajuste evaluada en los puntos xk
disp('Error Cuadr�tico Medio cometido:')
E2_Medio = sqrt(sum((Y-Y_AL).^2))/N
plot(X,Y,'r*',X,Y_AL,'b');
grid
xlabel('x');
ylabel('Red yk; Blue Lineal Aproximation')
title('Ejercicio 3a, 3b y 3c')