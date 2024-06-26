%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resolución ejercicio Nro. 3a) 3b) y 3c) TP#1
%%% Métodos Numéricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

% Inicialización de las matrices a
A = [3 -2 1 -1;0 4 -1 2;0 0 2 3;0 0 0 5];
B = [8 -3 11 15]';

disp('Solución del sistema del Ejercicio 3a):')
Xa = Back_Subs(A,B)
Xa_M=A\B
        
% Inicialización de las matrices
A = [5 -3 -7 1;0 11 9 5;0 0 3 -13;0 0 0 7];
B = [-14 22 -11 14]';

disp('Solución del sistema del Ejercicio 3b):')
Xb = Back_Subs(A,B)
Xb_M=A\B

% Inicialización de las matrices
A = [4 -1 2 2 -1;0 -2 6 2 7;0 0 1 -1 -1;0 0 0 -2 -1;0 0 0 0 3];
B = [4 0 3 10 6]';

disp('Solución del sistema del Ejercicio 3c):')
Xc = Back_Subs(A,B)
Xb_M=inv(A)*B