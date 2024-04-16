clear;
clc;

t0 = 0.1;   % Tiempo Inicial
tF = 5.1;   % Tiempo Final
y0 = 0;   % Condición inicial
M1 = 50;  % Pasos de solución

E = Ec_Dif_Euler('Ec_Dif_8',t0,tF,y0,M1);
t = E(:,1);    % vector de tiempo
ya = E(:,2);  % Solución aproximada de la Ec. Dif.
figure(1);
plot(t,ya,'r');
grid
xlabel('Estimulo');
ylabel('Respuesta')
title('Ley de Wever-Fechner')

