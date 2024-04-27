clear
clc

N=50;
K=1:1:N;
X=0.1*K;
Y = X + cos(K.^0.5);

[A,B,CC] = Ajuste_Lineal_MC(X',Y');

disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlación del ajuste lineal:')
CC

Y_AL=A*X+B; % Recta de Ajuste evaluada en los puntos xk
disp('Error Cuadrático Medio cometido:')
E2_Medio = sqrt(sum((Y-Y_AL).^2))/N
plot(X,Y,'r*',X,Y_AL,'b');
grid
xlabel('x');
ylabel('Red yk; Blue Lineal Aproximation')
title('Ejercicio 3')