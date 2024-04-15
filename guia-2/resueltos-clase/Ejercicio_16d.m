%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 16d
%%% Resuelta por M�todo de Runge-Kutta Orden 4
%%%
%%% TP.2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0.01;   % Tiempo Inicial
tF = 5;   % Tiempo Final
X0 = [1 2]; % Condici�n inicial
h = 0.05;   % Intervalos de tiempos
M = round((tF-t0)/h);  % Pasos de soluci�n

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_16d',t0,tF,X0,M);

t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)

figure(1);
plot(t,x_t,'r');
grid
xlabel('t (s)');
ylabel('y(t)');
title('Soluci�n de la Ecuaci�n Diferencial');