
clear
clc

X=[-2 -1 0 1 2]';
Y=[1 2 3 3 4]';

[A,B,CC] = Ajuste_Lineal_MC(X,Y);

disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlación del ajuste lineal:')
CC

X=[-6 -2 0 2 6]';
Y=[7 5 3 2 0]';

[A,B,CC] = Ajuste_Lineal_MC(X,Y);

disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlación del ajuste lineal:')
CC


X=[-4 -1 0 2 3]';
Y=[-3 -1 0 1 2]';

[A,B,CC] = Ajuste_Lineal_MC(X,Y);

disp('Pendiente del ajuste lineal:')
A
disp('Ordenada al origen del ajuste lineal:')
B
disp('Coeficiente de Correlación del ajuste lineal:')
CC