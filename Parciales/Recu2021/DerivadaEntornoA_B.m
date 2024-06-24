function [ X , Y ] = DerivadaEntornoA_B(A, a, b, M )

h = (b - a) / M;

X = a:h:b;

%% Calculo del polinomio dA

N = length(A) - 1;
dA = zeros(1, N);

for k =1:N
    dA(k) = A(k) * (N - k + 1);
end

%% Calculo de derivada en entorno  [a , b]

b = length(dA);

Y = zeros(1, length(X));

for j =1:length(Y)
    for k =1:b
        Y(j) = Y(j) + dA(k) .* X(j).^( b - k);
    end
end
