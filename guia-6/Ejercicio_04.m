clear
close all
clc

%% Ejercicio A

h=0.1;
L=0.05;
R=2;

disp('Ejercicio A')
disp('Derivada I´(1.2) utilizando ERROR de Orden Cuadratico')
D=(Funcion_04_a(1.3)-Funcion_04_a(1.1))/(2*h)
disp('Derivada I´(1.2) utilizando ERROR de Orden Cuarto')
D=(-Funcion_04_a(1.4)+8*Funcion_04_a(1.3)-8*Funcion_04_a(1.1)+Funcion_04_a(1.0))/(12*h)
disp('Valor de tension del circuito')
E=L.*D+R.*Funcion_04_a(1.2)

%% Ejercicio B

Delta=10^-13;
Tol=10^-13;
x0=1.2;
[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_04_b',x0,Delta,Tol);
Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio B')
[y_de,err,relerr,n]