clear;
clc;

t0 = 1900;   % Tiempo Inicial
tF = 2025;   % Tiempo Final
y0 = 76.3;   % Condición inicial

M1 = 12.5;  % Pasos de solución

E = Ec_Dif_Euler('Ec_Dif_3',t0,tF,y0,M1);

t = E(:,1);    % vector de tiempo
ya = E(:,2);  % Solución aproximada de la Ec. Dif.
figure(1);
plot(t,ya,'r');
grid
xlabel('Tiempo');
ylabel('Poblacion en millones de habitantes')
title('Grafico metodo de Euler')

[tEode,yaEode] = ode45('Ec_Dif_3',t0:tF,y0);
figure(2);
plot(tEode,yaEode,'r');
grid
xlabel('Tiempo');
ylabel('Poblacion en millones de habitantes')
title('Grafico ode45')
