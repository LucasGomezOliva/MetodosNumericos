
clear
clc

delta = 0.000000000001;
epsilon = 0.0000000000001;
Max=30;
Ax=0.01;
% Inciso 3a
a=0;
b=2;
disp('Ejercicio 3a')
[r,errb,y_rb] = Biseccion_Bolzano('Funcion_ejercicio_04',a,b,delta);
[c,errf,y_rf,M] = Falsa_Posicion_Modificado('Funcion_ejercicio_04',a,b,epsilon,Max);
disp('Resultado Bolzando')
r
disp('Resultado Falza Posicion')
c
H1=figure(1);
set(H1,'position',[75 100 1300 700],'NumberTitle','off','name','MN. TP#4. Ejercicio 4');
x=a:Ax:b;
z=zeros(size(x))+1;
y=Funcion_ejercicio_04(x)+1;
plot(x,y,'r',x,z,'b')
grid
xlabel('x')
ylabel('y(x)')
title({strcat('r=',num2str(r),'; Error=',num2str(errb),'; f(r)=',num2str(y_rb)),strcat('r=',num2str(c),'; Error=',num2str(errf),'; f(r)=',num2str(y_rf))})