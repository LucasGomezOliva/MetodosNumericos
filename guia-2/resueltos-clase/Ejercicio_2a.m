%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 2a 
%%% Resuelta por M�todo de Euler
%%%
%%% TP#2 M�todos Num�ricos
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;   % Tiempo Inicial
tF = 2;   % Tiempo Final
y0 = 1;   % Condici�n inicial

% An�lisis con 20 pasos de Iteraci�n
M1 = 20;  % Pasos de soluci�n
%h1 = (tF-t0)/M1; % At

E1 = Ec_Dif_Euler('Ec_Dif_2a',t0,tF,y0,M1);

t = E1(:,1);    % vector de tiempo
ya1 = E1(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(1);
plot(t,ya1,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=20');
Error_Intervalo_20 = abs(y_v(M1)-ya1(M1))

% An�lisis con 40 pasos de Iteraci�n
M2 = 40;  % Pasos de soluci�n
%h2 = (tF-t0)/M1; % At

E2 = Ec_Dif_Euler('Ec_Dif_2a',t0,tF,y0,M2);
t = E2(:,1);    % vector de tiempo
ya2 = E2(:,2);  % Soluci�n aproximada de la Ec. Dif.
y_v = -exp(-t)+t.^2-2*t+2; % Soluci�n verdadera de la Ecuaci�n Diferencial
figure(2);
plot(t,ya2,'r',t,y_v,'b');
grid
xlabel('t (s)');
ylabel('Roja Aproximada; Azul Real')
title('M=40');
Error_Intervalo_40 = abs(y_v(M2)-ya2(M2))
