function [ sol ] = PolinomioMcLaurin( X, N )
sol=1;
for n = 1:1:(N/2)
    num = Potencia(-1,n) * Potencia(X,2.*n);
    den = Factorial(2.*n);
    sol = sol + (num/den);
end

