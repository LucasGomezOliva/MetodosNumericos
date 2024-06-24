function [ R ] = MultiplicacionPolinomios( P, Q )
N = length(Q);
M = length(P);
T = M + N - 1;
R = zeros(1,T);
for n = 1:T
    for j = 1:n
        if (j<=N)&&(j<=M)&&(n-j+1<=N) %% Condicion para que funcione ver limites
            R(n) = R(n) + P(j)*Q(n-j+1)
        end
    end
end

