%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Resoluci�n ejercicio Nro. 10a) TP#1
%%% M�todos Num�ricos
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

% Inicializaci�n de las matrices
A = [1 2 0 0;2 3 -1 0;0 4 2 -5;0 0 2 -4];
B = [9 9 26 32]';

disp('Soluci�n del sistema tridiagonal del Ejercicio 10a):')
X_Sol=Sol_Sist_Tridiag(A,B)


