
clear
clc

epsilon = 0.0000000000001;
Max=30;
Ax=0.01;
% Inciso 3a
a=0;
b=2;
disp('Ejercicio 5')
[c,errf,y_rf,M] = Falsa_Posicion_Modificado('Funcion_ejercicio_04',a,b,epsilon,Max);
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