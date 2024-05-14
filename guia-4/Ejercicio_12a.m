clear
clc

dx=0.1;
x0=-15;
xf=15;


x=x0:dx:xf;
y=Funcion_12(x);
r=[-10,10]
z=[6,6];
plot(x,y,'b',r,z,'ro');
grid;