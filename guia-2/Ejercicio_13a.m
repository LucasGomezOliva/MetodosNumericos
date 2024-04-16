clear
clc

t0 = 0;   % Tiempo Inicial
tF = 1;   % Tiempo Final
X0 = [-2.7 2.8]; % Condici�n inicial
h = 0.05;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de soluci�n

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_13a',t0,tF,X0,M)

x_t = X(:,1);  % soluci�n x(t)
y_t = X(:,2);  % soluci�n y(t)

figure(1);
x_v=-(69/25)*exp(-T)+ (3/50)*exp(4*T)
plot(T,x_t,'ro',T,x_v,'b');
xlabel('x(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');

figure(2);
y_v=(69/25)*exp(-T)+ (1/25)*exp(4*T)
plot(T,y_t,'ro',T,y_v,'b');
xlabel('y(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');