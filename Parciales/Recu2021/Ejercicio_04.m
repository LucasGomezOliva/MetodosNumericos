clear
clc

%% Defino un polinomio

disp('Y = 12*x^3 + 4*x^2 + 1*x + 4')

A = [12 4 1 4];

%% Derivada en un punto x0

x0 = 9;

[dx0 , dA]  = DerivadaPrimeraEnX0( A, x0 );

disp('dY/dX = 36*x^2 + 8*x^1 + 1')

dA

disp('dY/dX(9) = 36*x^2 + 8*x^1 + 1 = 2989')

dx0

%% Derivada en un entorno [a , b]

a = 4;

b = 12;

M = 300;

disp('Derivada en un entorno [a , b]')

[ dx , df ] = DerivadaEntornoA_B(A, a, b, M );

plot(dx , df)
ylabel(' F ( x )')
xlabel(' x ')
title('Derivada de un polinomio en un entorno [a , b]')
grid
hold
