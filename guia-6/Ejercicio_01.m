clear
close all
clc

x0=1./sqrt(3);

Delta=0.001;

Tol=0.001;

[D,err,relerr,n] = Extrapolacion_Richardson_O2n('Funcion_01_a',x0,Delta,Tol);

Diagonal=diag(D);
y_der=Diagonal(length(Diagonal));
y_der