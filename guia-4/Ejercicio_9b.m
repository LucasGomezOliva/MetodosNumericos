clear
clc

x0=-15;
xf=15;
W=0.01;
dx=1;
M=(xf-x0)/dx;

[ r ] = Aproximado_Ubicacion_Raices_Reales( 'Funcion_9b', x0, xf, M, 0.001);

disp('Racices')
r
x=x0:dx:xf;
y=Funcion_9b(x);
z=zeros(size(r));
plot(x,y,'b',r,z,'ro');
grid;