clear;
clc;

t0 = 0;   
tF = 20;   
y0 = 0;   
M1 = 200; 

E1 = Ec_Dif_Runge_Kutta_O4('Ec_Dif_14',t0,tF,y0,M1);

t = E1(:,1);    
yRK = E1(:,2);  

y_v = (350.*(1-exp((-0.2).*t)))./(7-5.*exp((-0.2).*t));

figure(1);
plot(t,yRK,'ro',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('Reaccion quimica molecula A y molecula B');
