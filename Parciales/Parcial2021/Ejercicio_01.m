clear
clc

T = [0, 1, 2, 3, 4];        % Ejemplo de vector de tiempos
P = [10, 20, 15, 25, 10];   % Ejemplo de vector de potencias

% Calcular la energía
energia = Calculo_Energia(T, P);

% Mostrar el resultado
disp(['La energía calculada es: ', num2str(energia)]);