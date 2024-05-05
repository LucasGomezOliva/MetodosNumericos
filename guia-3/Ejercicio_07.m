clear
clc

Xi=[0 0.15 0.31 0.5 0.6 0.75];

Yi=[1 1.004 1.031 1.117 1.223 1.422];

M=[1 2 3 4];

Colors=['b' 'g' 'm' 'k'];

plot(Xi,Yi,'ro');
hold on;

for i=1:size(M')
    [C] = Ajuste_Polinomial(Xi,Yi,M(i));
    Ypol = zeros(size(Xi));
    for j=1:length(Xi)
        Ypol(j) = Eval_Polinomio_Rapida(Xi(j),C)
    end
    plot(Xi,Ypol,Colors(i));
    hold on;
end
legend('Puntos xy','M=1','M=2','M=3','M=4')
grid
hold off