clear
clc

T = [0, 1, 2, 3, 4];        % Ejemplo de vector de tiempos
P = [10, 20, 15, 25, 10];   % Ejemplo de vector de potencias

% Calcular la energ�a
energia = Calculo_Energia(T, P);

% Mostrar el resultado
disp(['La energ�a calculada es: ', num2str(energia)]);