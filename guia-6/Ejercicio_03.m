clear
close all
clc

%% Ejercicio A

disp('Ejercicio A')
disp('Derivada utilizando ERROR de Orden Cuadratico')
D=(Funcion_03_a(11)-Funcion_03_a(9))/2
disp('Derivada utilizando ERROR de Orden Cuarto')
D=(-Funcion_03_a(12)+8*Funcion_03_a(11)-8*Funcion_03_a(9)+Funcion_03_a(8))/12

%% Ejercicio B

Delta=10^-13;
Tol=10^-13;
x0=10;
[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_03_b',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio B')
[y_de,err,relerr,n]