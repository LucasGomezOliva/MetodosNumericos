%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 16c
%%% Resuelta por M�todo de Runge-Kutta Orden 4
%%%
%%% TP#2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;   % Tiempo Inicial
tF = 4;   % Tiempo Final
X0 = [0 0]; % Condici�n inicial
h = 0.05;   % Intervalos de tiempos
M = (tF-t0)/h;  % Pasos de soluci�n

[T,X] = Ec_Dif_Runge_Kutta_O4_Sistemas('Ec_Dif_16c',t0,tF,X0,M);

t= T;    % vector de tiempo
x_t = X(:,1);  % soluci�n x(t)

figure(1);
plot(t,x_t,'r');
xlabel('t (s)');
ylabel('Soluci�n de la Ecuaci�n Diferencial');
grid