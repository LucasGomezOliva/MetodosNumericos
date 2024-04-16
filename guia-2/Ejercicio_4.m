clear;
clc;

t0 = 0;   % Tiempo Inicial
tF = 5;   % Tiempo Final
y0 = 5000;   % Condici�n inicial
M1 = 1560;  % Pasos de soluci�n

E = Ec_Dif_Euler('Ec_Dif_4',t0,tF,y0,M1);
t = E(:,1);    % vector de tiempo
ya = E(:,2);  % Soluci�n aproximada de la Ec. Dif.
figure(1);
plot(t,ya,'r');
grid
xlabel('Tiempo');
ylabel('Poblacion')
title('Crecimiento Exponencial de Poblaci�n')

