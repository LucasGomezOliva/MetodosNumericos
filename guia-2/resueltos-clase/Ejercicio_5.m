%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio 5. Paraciadista.
%%% Resuelta por M�todo de Euler
%%%
%%% TP#2 M�todos Num�ricos
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;   % Tiempo Inicial
tF = 12;   % Tiempo Final
y0 = 0;   % Condici�n inicial de velocidad
h = 0.05; % longitud de los intervalos temporales
M = (tF-t0)/h;  % Pasos de soluci�n

E = Ec_Dif_Euler('Ec_Dif_5',t0,tF,y0,M);
t = E(:,1);    % vector de tiempo
y = E(:,2);  % Soluci�n aproximada de la Ec. Dif.
figure(1);
plot(t,y,'r');
xlabel('t ()');
ylabel('Velocidad ()');
grid
y(M)