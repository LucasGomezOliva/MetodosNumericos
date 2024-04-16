clear
clc

t0 = 0;   % Tiempo Inicial
tF = 12;   % Tiempo Final
X0 = [3000 120]; % Condici�n inicial
h = 0.1;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de soluci�n

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0,M);

x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n x(t)

figure(1);
subplot(2,1,1);
plot(T,x_t,'b');
xlabel('t(s)');
ylabel('x(t)');
title('Modelo Predador - Presa C=3000; L=120');
subplot(2,1,2);
plot(y_t,x_t,'b');
xlabel('y(t)');
ylabel('x(t)');

X0 = [5000 100]; % Condici�n inicial
[T1,X1] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_14',t0,tF,X0,M);

x_t = X1(:,1);  % soluci�n x(t)
y_t = X1(:,2);  % soluci�n y(t)
figure(2);
subplot(2,1,1);
plot(T1,x_t,'b');
xlabel('t(s)');
ylabel('x(t)');
title('Modelo Predador - Presa C=5000; L=100');
subplot(2,1,2);
plot(y_t,x_t,'b');
xlabel('y(t)');
ylabel('x(t)');