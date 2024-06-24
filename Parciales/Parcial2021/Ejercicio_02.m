clear
clc

% Definir parámetros
t0 = 0;   % Tiempo Inicial
tf = 2;   % Tiempo Final
y0 = 1;   % Condición inicial
M = 20;

% Resolver la EDO
[T, Y] = Algoritmo_Ejercicio_02('FuncionEjercicio2', t0, tf, y0, M);

% Mostrar los resultados
disp('Tiempos:'), disp(T)
disp('Soluciones:'), disp(Y)

% Graficar la solución
plot(T, Y)
xlabel('t')
ylabel('y(t)')
title('Solución numérica de la EDO')
grid on