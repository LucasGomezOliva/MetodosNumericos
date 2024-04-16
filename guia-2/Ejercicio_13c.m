clear
clc

t0 = 0;   % Tiempo Inicial
tF = 12;   % Tiempo Final
X0 = [2 3]; % Condición inicial
h = 0.1;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de solución

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_13c',t0,tF,X0,M);

x_t = X(:,1);  % solución x(t)
y_t = X(:,2);  % solución y(t)

figure(1);
x_v=-2.*exp(T)+4.*(exp(T)).*cos(T).^2-12.*(exp(T)).*cos(T).*sin(T);
plot(T,x_t,'ro',T,x_v,'b');
xlabel('x(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');

figure(2);
y_v=-3.*exp(T)+6.*(exp(T)).*cos(T).^2+2.*(exp(T)).*cos(T).*sin(T);
plot(T,y_t,'ro',T,y_v,'b');
xlabel('y(t) (s)');
ylabel('y(t). Sol. Aprox. roja; Sol. Verd. Azul');