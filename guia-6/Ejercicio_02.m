clear
close all
clc

%% Deficinicon de delta y de tolerancia

Delta=10^-13;
Tol=10^-13;

%% Ejercicio A

x0=1./sqrt(3);

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_02_a',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio A')
[y_de,err,relerr,n]

%% Ejercicio B

x0=(1+sqrt(5))./3;

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_02_b',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio B')
[y_de,err,relerr,n]

%% Ejercicio C

x0=1./sqrt(2);

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_02_c',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio C')
[y_de,err,relerr,n]


%% Ejercicio D

x0=(1-sqrt(5))./3;

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_02_d',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio D')
[y_de,err,relerr,n]

%% Ejercicio E

x0=0.00001;

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_02_e',x0,Delta,Tol);

Diagonal=diag(D);
y_de=Diagonal(length(Diagonal)-1);
disp('Ejercicio E')
[y_de,err,relerr,n]