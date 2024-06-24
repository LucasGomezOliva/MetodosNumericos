clear
clc

% Definir par�metros
t0 = 0;   % Tiempo Inicial
tf = 2;   % Tiempo Final
y0 = 1;   % Condici�n inicial
M = 20;

% Resolver la EDO
[T, Y] = Algoritmo_Ejercicio_02('FuncionEjercicio2', t0, tf, y0, M);

% Mostrar los resultados
disp('Tiempos:'), disp(T)
disp('Soluciones:'), disp(Y)

% Graficar la soluci�n
plot(T, Y)
xlabel('t')
ylabel('y(t)')
title('Soluci�n num�rica de la EDO')
grid on