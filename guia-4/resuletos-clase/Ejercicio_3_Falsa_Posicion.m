%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 3
%%%
%%% Evaluaci�n de M�todo de Falsa Posicion (Regula Falsi)
%%%
%%% TP.4 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

epsilon = 0.0000000000001;
Max=30;

% Inciso a
a=-2.4;
b=-1.6;
disp('Ejercicio 3a): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_Posicion_Modificado('Funcion_3a',a,b,epsilon,Max);
M
pause;
% Inciso b
a=0.8;
b=1.6;

disp('Ejercicio 3b): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_Posicion_Modificado('Funcion_3b',a,b,epsilon,Max);
M
pause;
% Inciso c
a=3.2;
b=4;
disp('Ejercicio 3c): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_Posicion_Modificado('Funcion_3c',a,b,epsilon,Max);
M
pause;
% Inciso d
a=6;
b=6.8;
disp('Ejercicio 3d): k   ak   ck   bk   f(ck)');
[r,err,y_r,M] = Falsa_Posicion_Modificado('Funcion_3d',a,b,epsilon,Max);
M