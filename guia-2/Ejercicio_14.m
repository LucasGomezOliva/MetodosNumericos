clear
clc

t0 = 0;   % Tiempo Inicial
tF = 12;   % Tiempo Final
X0 = [3000 120]; % Condición inicial
h = 0.1;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0,M);

x_t = X(:,1);  % solución x(t)
y_t = X(:,2);  % solución x(t)
figure(1);
subplot(3,1,1);
plot(T,x_t,'b');
grid;
xlabel('t(s)');
ylabel('x(t)');
title('Modelo Predador - Presa C=3000; L=120');
subplot(3,1,2);
plot(T,y_t,'b');
grid;
xlabel('t(s)');
ylabel('y(t)');
subplot(3,1,3);
plot(y_t,x_t,'b');
grid;
xlabel('y(t)');
ylabel('x(t)');
X0 = [5000 100]; % Condición inicial

[T1,X1] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0,M);

x_t = X1(:,1);  % solución x(t)
y_t = X1(:,2);  % solución y(t)
figure(2);
subplot(3,1,1);
plot(T1,x_t,'b');
grid;
xlabel('t(s)');
ylabel('x(t)');
title('Modelo Predador - Presa C=5000; L=100');
subplot(3,1,2);
plot(T1,y_t,'b');
grid;
xlabel('t(s)');
ylabel('y(t)');
subplot(3,1,3);
plot(y_t,x_t,'b');
grid;
xlabel('y(t)');
ylabel('x(t)');