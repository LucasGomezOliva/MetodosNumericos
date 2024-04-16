clear
clc

t0 = 0;   % Tiempo Inicial
tF = 2;   % Tiempo Final
X0 = [0.2 0.5]; % Condición inicial
h = 0.05;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_13b',t0,tF,X0,M)

x_t = X(:,1);  % solución x(t)
y_t = X(:,2);  % solución y(t)

figure(1);
x_v=(1/5)*exp(T)-(1/10).*T.*exp(T)
plot(T,x_t,'ro',T,x_v,'b');
xlabel('x(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');

figure(2);
y_v=(1/2)*exp(T)-(1/5).*T.*exp(T)
plot(T,y_t,'ro',T,y_v,'b');
xlabel('y(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');