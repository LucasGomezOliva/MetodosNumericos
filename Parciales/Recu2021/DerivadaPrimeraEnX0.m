function  [dx0 , dA]  = DerivadaPrimeraEnX0( A, x0 )

N = length(A) - 1;

dA = zeros(1, N);

dA(1) = A(1)* N; 

for k =2:N
    dA(k) = A(k) * (N - k + 1);
end

M = length(dA);

dx0 = 0;

for k =1:M
    dx0 = dx0 + dA(k) * x0.^( M - k);
end

