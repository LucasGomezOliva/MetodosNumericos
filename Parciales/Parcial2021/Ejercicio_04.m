clear 
clc


function graficar_presion(P)
    N = length(P)
    n = 1:1:N
    valormax = max(P);
    valormin = min(P);
    promedio = mean(P);
    figure(1);
    plot(n, P, 'b');
    hold;
    yline(valormax, 'r'); 
    yline(valormin, 'r');
    yline(promedio, 'g');
    xlabel('n');
    ylabel('P(n) (mmHg)');
    title('Presion arterial instantánea');
    grid;
end